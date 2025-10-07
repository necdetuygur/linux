if ! command -v cloudflared &> /dev/null; then
  echo "cloudflared not found. Installing..."
  
  DEST="/usr/local/bin/cloudflared"
  TMPFILE="$(mktemp /tmp/cloudflared.XXXXXX)"
  ARCH="$(uname -m)"
  echo "Detected architecture: ${ARCH}"
  case "${ARCH}" in
    x86_64|amd64)
      ASSET_NAME="cloudflared-linux-amd64"
      ;;
    aarch64|arm64)
      ASSET_NAME="cloudflared-linux-arm64"
      ;;
    armv7l|armv7|armhf)
      ASSET_NAME="cloudflared-linux-arm"
      ;;
    i386|i686)
      ASSET_NAME="cloudflared-linux-386"
      ;;
    *)
      echo "Unsupported architecture: ${ARCH}"
      echo "Please check https://github.com/cloudflare/cloudflared/releases for available builds."
      exit 2
      ;;
  esac
  DOWNLOAD_URL="https://github.com/cloudflare/cloudflared/releases/latest/download/${ASSET_NAME}"
  echo "Downloading ${DOWNLOAD_URL} ..."
  if ! curl -fL -sS "${DOWNLOAD_URL}" -o "${TMPFILE}"; then
    echo "Download failed. Exiting."
    rm -f "${TMPFILE}"
    exit 3
  fi
  chmod +x "${TMPFILE}"
  echo "Installing to ${DEST} (requires sudo)..."
  sudo mv -f "${TMPFILE}" "${DEST}"
  sudo chown root:root "${DEST}"
  sudo chmod 0755 "${DEST}"
  echo "cloudflared installed to ${DEST}"
  echo "Version:"
  "${DEST}" -v || true
else
  echo "cloudflared is already installed."
  cloudflared -v
fi

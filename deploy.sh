#!/usr/bin/env bash
# Deploys this evite to Vercel.
# First run: installs the Vercel CLI (if missing), logs you into Vercel,
# and deploys this folder to production.
# Every run after that: just pushes whatever changes you made live.

set -e

if ! command -v vercel &> /dev/null; then
  echo "Vercel CLI not found — installing it now..."
  npm install -g vercel
fi

echo "Deploying Catholic Brothers for Christ evite to Vercel..."
vercel --prod

echo ""
echo "Done! Copy the URL Vercel printed above to share your evite."

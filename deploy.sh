#!/usr/bin/env bash
# =============================================================================
# FitMode Landing Page — Netlify Deploy Script
# =============================================================================
# Usage:
#   ./deploy.sh               — deploy a draft preview URL
#   netlify deploy --dir=. --prod  — promote to production (live URL)
#
# Prerequisites:
#   1. Install Netlify CLI:  npm install -g netlify-cli
#   2. Authenticate once:   netlify login
#   3. Link to site once:   netlify link
# =============================================================================

set -euo pipefail

echo "-------------------------------------------"
echo "  FitMode — Netlify Draft Deploy"
echo "-------------------------------------------"

netlify deploy --dir=. --message="FitMode deploy $(date)"

echo ""
echo "Draft deploy complete."
echo ""
echo "To push to PRODUCTION, run:"
echo "  netlify deploy --dir=. --prod"
echo "-------------------------------------------"

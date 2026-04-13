# FitMode Landing Page — Deployment Guide

Three ways to deploy this site to Netlify. Pick whichever fits your workflow.

---

## Option 1: Drag and Drop (fastest, no account setup needed)

1. Open [netlify.com/drop](https://app.netlify.com/drop) in your browser.
2. Open your file explorer and navigate to this folder (`Fit_Mode_landing_page`).
3. Drag the entire folder onto the Netlify drop zone.
4. Netlify instantly publishes the site and gives you a live URL.

> Note: Drag-and-drop creates a one-off deploy. To redeploy, drag the folder again. For automatic redeployments, use Option 2 or 3.

---

## Option 2: Netlify CLI (recommended for local development)

### Prerequisites

```bash
npm install -g netlify-cli   # install CLI globally
netlify login                # authenticate with your Netlify account
netlify link                 # link this folder to a Netlify site (run once)
```

### Deploy a draft preview

```bash
./deploy.sh
```

Or manually:

```bash
netlify deploy --dir=. --message="FitMode deploy $(date)"
```

Netlify returns a temporary **draft URL** so you can review the build before it goes live.

### Promote to production

```bash
netlify deploy --dir=. --prod
```

This overwrites the live production URL with the current files.

---

## Option 3: GitHub Integration (recommended for teams / CI)

1. Push this repository to GitHub (or any Git provider Netlify supports).
2. Log in to [app.netlify.com](https://app.netlify.com) and click **Add new site > Import an existing project**.
3. Choose **GitHub**, authorise Netlify, and select this repository.
4. Configure the build settings:
   - **Base directory:** *(leave blank or set to repo root)*
   - **Build command:** *(leave blank — static site, no build step)*
   - **Publish directory:** `.`
5. Click **Deploy site**.

From this point, every push to the `main` branch triggers an automatic deploy. Pull requests generate individual preview URLs.

---

## Configuration Files

| File | Purpose |
|------|---------|
| `netlify.toml` | Build settings, SPA redirect, security & cache headers |
| `_redirects` | Netlify-native SPA fallback rule (`/* → /index.html 200`) |
| `_headers` | Netlify-native security and cache headers |
| `deploy.sh` | Helper script for CLI draft deploys |

---

## Security Headers Applied

| Header | Value |
|--------|-------|
| `X-Frame-Options` | `DENY` |
| `X-Content-Type-Options` | `nosniff` |
| `Referrer-Policy` | `strict-origin-when-cross-origin` |

## Cache Policy

| Asset | Cache-Control |
|-------|--------------|
| `index.html` | `no-cache, no-store, must-revalidate` |
| `*.png` | `public, max-age=31536000, immutable` |
| `*.woff2` | `public, max-age=31536000, immutable` |

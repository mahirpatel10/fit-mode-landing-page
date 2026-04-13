# Netlify Agent — FitMode Landing Page Deployment

## Role
You are a DevOps engineer specializing in static site deployment. Your job is to prepare the FitMode landing page for production deployment on **Netlify** and create all necessary configuration files.

## Context
- The frontend agent has already created `index.html`
- Working directory (write ALL files here): `C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page`
- The project is a single-file static site — no build step required
- Deploy target: Netlify (free tier via drag-and-drop OR CLI)

---

## Your Tasks

### Task 1 — Create `netlify.toml`
Create `netlify.toml` in the project root with:
- Publish directory: `.` (root, since `index.html` is at root)
- Build command: none (static file, no build)
- HTTPS redirect: redirect all HTTP → HTTPS
- Pretty URLs: enabled
- Custom headers for security and performance:
  - `X-Frame-Options: DENY`
  - `X-Content-Type-Options: nosniff`
  - `Referrer-Policy: strict-origin-when-cross-origin`
  - `Permissions-Policy: camera=(), microphone=(), geolocation=()`
  - `Cache-Control: public, max-age=31536000` for static assets
  - `Cache-Control: no-cache` for `index.html` (so updates deploy instantly)
- SPA redirect rule: `/* → /index.html` with status 200 (for any future routing)

### Task 2 — Create `_redirects`
Create `_redirects` in the project root as a Netlify redirects file (backup to netlify.toml):
```
/*    /index.html   200
```

### Task 3 — Create `_headers`
Create `_headers` in the project root as a Netlify headers file (backup to netlify.toml):
- Apply security headers to `/*`
- Apply long cache headers to `/*.png`, `/*.jpg`, `/*.svg`, `/*.ico`, `/*.woff2`

### Task 4 — Create `deploy.sh`
Create `deploy.sh` in the project root — a shell script for Netlify CLI deployment:
```bash
#!/bin/bash
# FitMode Landing Page — Netlify Deploy Script
# Prerequisites: npm install -g netlify-cli && netlify login

set -e

echo "Deploying FitMode landing page to Netlify..."

# Deploy to draft URL first for preview
netlify deploy --dir=. --message="FitMode landing page deploy $(date)"

echo ""
echo "Preview looks good? Run this to go live:"
echo "  netlify deploy --dir=. --prod"
```

Make it executable with a comment noting: `chmod +x deploy.sh`

### Task 5 — Create `README.md`
Create `README.md` in the project root with:

```markdown
# FitMode Landing Page

AI Fitness Trainer landing page — built for the FitMode Android app.

## Stack
- Plain HTML/CSS/JS — zero dependencies, zero build step
- Hosted on Netlify (free tier)

## Deploy to Netlify

### Option A — Drag and Drop (easiest)
1. Go to https://app.netlify.com/drop
2. Drag the entire `Fit_Mode_landing_page/` folder onto the page
3. Done — Netlify gives you a live URL instantly

### Option B — Netlify CLI
```bash
npm install -g netlify-cli
netlify login
./deploy.sh
```

### Option C — GitHub Integration
1. Push this folder to a GitHub repo
2. Go to https://app.netlify.com → "Add new site" → "Import from Git"
3. Set publish directory to `.` and leave build command empty
4. Click Deploy

## Files
| File | Purpose |
|------|---------|
| `index.html` | The entire landing page |
| `netlify.toml` | Netlify configuration (headers, redirects, build settings) |
| `_redirects` | Netlify redirects fallback |
| `_headers` | Netlify headers fallback |
| `deploy.sh` | CLI deploy helper script |

## Performance Targets
- Lighthouse Performance: 95+
- Lighthouse Accessibility: 95+
- Lighthouse SEO: 100
- First Contentful Paint: < 1.5s
```

### Task 6 — Verify File Structure
After creating all files, confirm the project root contains exactly:
```
Fit_Mode_landing_page/
├── index.html          ← created by frontend agent
├── netlify.toml        ← created by you
├── _redirects          ← created by you
├── _headers            ← created by you
├── deploy.sh           ← created by you
├── README.md           ← created by you
└── agents/             ← this folder (do not modify)
```

---

## netlify.toml Full Template

```toml
[build]
  publish = "."
  command = ""

[[redirects]]
  from = "http://fitmode.netlify.app/*"
  to   = "https://fitmode.netlify.app/:splat"
  status = 301
  force  = true

[[redirects]]
  from   = "/*"
  to     = "/index.html"
  status = 200

[build.processing]
  skip_processing = false

[build.processing.html]
  pretty_urls = true

[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options            = "DENY"
    X-Content-Type-Options     = "nosniff"
    Referrer-Policy            = "strict-origin-when-cross-origin"
    Permissions-Policy         = "camera=(), microphone=(), geolocation=()"

[[headers]]
  for = "/index.html"
  [headers.values]
    Cache-Control = "no-cache, no-store, must-revalidate"

[[headers]]
  for = "/*.png"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"

[[headers]]
  for = "/*.jpg"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"

[[headers]]
  for = "/*.svg"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"

[[headers]]
  for = "/*.woff2"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"
```

## Deliverables Checklist
- [ ] `netlify.toml` created with correct publish dir and security headers
- [ ] `_redirects` created
- [ ] `_headers` created
- [ ] `deploy.sh` created with correct instructions
- [ ] `README.md` created with deploy instructions
- [ ] All files are in the project root alongside `index.html`

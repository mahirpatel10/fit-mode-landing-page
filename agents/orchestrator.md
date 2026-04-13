# FitMode Landing Page — Orchestrator

## Your Role
You are the project coordinator. You will build the FitMode landing page by running 3 specialist agents **in sequence**. Each agent depends on the previous one's output.

## Working Directory
All files must be written to this absolute path:
`C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page`

---

## Step 1 — Run the Frontend Agent

Use the Agent tool with this prompt (copy exactly):

---
**Agent prompt:**

You are a senior frontend developer. Build a complete, production-ready, single-file HTML landing page for **FitMode** — an AI fitness trainer Android app.

**Write the output file to this exact absolute path:**
`C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page\index.html`

### Requirements
- Self-contained single HTML file (inline CSS in `<style>`, no external frameworks)
- Vanilla JS only — no npm, no build step
- Fully responsive — mobile-first, works 320px to 1440px
- Dark fitness theme: `background: #0a0a0a`, accent `#00e676` (neon green), white text
- Scroll animations via IntersectionObserver (add class `visible` to `.fade-in` elements)
- Google Fonts: `Inter` (body) + `Poppins` (headings) via Google Fonts CDN link tag
- Google Play badge: `https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png`
- No placeholder images — use CSS gradients and emoji for visuals
- Semantic HTML5: `<header>`, `<main>`, `<section>`, `<footer>`, `<nav>`
- SEO meta tags: description, og:title, og:description, og:type, twitter:card
- All footer links (`Privacy Policy`, `Terms of Service`, `Contact`) use `href="#"`

### Design tokens
```
--bg: #0a0a0a | --bg-card: #111111 | --bg-card-2: #1a1a1a
--accent: #00e676 | --accent-dim: #00b85c
--text: #ffffff | --text-muted: #888888
--border: #222222 | --radius: 12px
```

### Sections to build (in order)

**1. Sticky Nav**
- Logo left: "FitMode" in bold neon green
- Links right: Features, How It Works, FAQ, Download (smooth scroll)
- Backdrop blur on scroll

**2. Hero**
- Headline: `Your AI Personal Trainer. Always in FitMode.`
- Subheadline: `FitMode uses Google Gemini AI to generate personalized home workout plans, track your calories with just a photo, and coach you like a real personal trainer — all for free.`
- CTA button: `Download Free on Google Play`
- Google Play badge image below button
- Full-height, animated gradient background, CSS phone mockup

**3. Stats Bar** — 5 horizontal pills:
🤖 Powered by Google Gemini AI | 🏠 100% Home Workouts — No Equipment | 🍛 Recognizes Indian Foods | 💰 Completely Free | 📱 Available on Android

**4. Features** — Title: `Everything you need. Nothing you don't.`
2-col grid (1-col mobile), 6 cards:
1. 🏋️ AI-Personalized Workouts — Tell FitMode your goal, fitness level, and schedule. Gemini AI builds a custom weekly workout plan just for you — no gym, no equipment needed.
2. 📸 Scan Food. Track Calories. — Just take a photo of your meal. FitMode's AI instantly recognizes Indian and international foods and gives you calories, protein, carbs, and fat — no manual logging.
3. 🤖 Your 24/7 AI Coach — Ask anything about your workouts, nutrition, or progress. FitMode AI knows your full profile and gives personalized advice — like having a personal trainer in your pocket.
4. ⏱️ Follow-Along Workouts — Timer-based workout player with animated exercise demos, voice coaching, rest timers, and progress tracking. Just press start and follow along.
5. 🔥 Smart Calorie Tracking — Track daily calories, protein, carbs, and fat. See your progress with a beautiful calorie ring. Log water intake and monitor your macros — all in one place.
6. 📅 Full History Tracking — See every workout and meal in a color-coded calendar. Tap any day for a full report — calories eaten, exercises completed, water intake, and how you felt.

**5. Who It's For**
Title: `Built for India. Built for You.`
Body: `FitMode recognizes Indian foods like Dal, Roti, Biryani, and Sabzi — so calorie tracking actually works for Indian diets. Workouts are designed for home, no equipment needed. Whether you're a beginner or advanced, FitMode adapts to your level.`
Highlight Dal, Roti, Biryani, Sabzi in neon green. Add row of emoji: 🍛 🫓 🍚 🥘

**6. How It Works** — Title: `Get fit in 3 simple steps`
3 numbered steps, horizontal row (stack on mobile):
1️⃣ Set Up Your Profile — Tell FitMode your age, weight, goal, and how many days you can work out. Takes 2 minutes.
2️⃣ Get Your AI Plan — Gemini AI instantly generates a personalized weekly workout plan and calorie targets just for you.
3️⃣ Start Your Journey — Follow your workouts, scan your meals, chat with your AI coach, and track your progress every day.

**7. Comparison Table** — Title: `Why FitMode beats the rest`
| Feature | FitMode | Other Apps |
|---|---|---|
| AI Personalized Plans | ✅ Free | ❌ Paid |
| Food Photo Scanning | ✅ Yes | ❌ Manual only |
| Recognizes Indian Food | ✅ Yes | ❌ No |
| AI Coach Chat | ✅ Yes | ❌ No |
| No Equipment Needed | ✅ Yes | ❌ Gym required |
| Completely Free | ✅ Yes | ❌ Subscription |
FitMode column: neon green. Other apps column: red/grey. Alternating row bg.

**8. FAQ Accordion** — Title: `Frequently Asked Questions`
Click to expand/collapse with +/− toggle, use aria-expanded:
Q: Is FitMode really free? → Yes! FitMode is completely free to download and use. No subscriptions, no hidden charges.
Q: Do I need gym equipment? → No. All workouts are designed for home use with zero equipment. Just your body weight.
Q: Does it work for Indian foods? → Yes! FitMode's AI is specifically trained to recognize Indian foods like Dal, Roti, Biryani, Paneer, Sabzi, and more.
Q: How accurate is the calorie scanner? → FitMode uses Google Gemini AI which is highly accurate for common Indian and international foods. Just take a clear photo of your meal.
Q: Can beginners use FitMode? → Absolutely. During onboarding you select your fitness level — beginner, intermediate, or advanced. The AI generates a plan that matches your level.
Q: Is my data safe? → Yes. Your data is stored securely using Appwrite cloud infrastructure. We never sell your data to anyone.

**9. Final CTA**
Headline: `Ready to get in FitMode?`
Subheadline: `Download free on Google Play. No credit card. No equipment. Just results.`
Button: `Download Now — It's Free` (pulse animation)
Full-width gradient background section.

**10. Footer**
FitMode — AI Fitness Trainer | Built with ❤️ for India | Powered by Google Gemini AI | © 2026 FitMode. All rights reserved. | Privacy Policy | Terms of Service | Contact

### JS behavior
- Hamburger mobile menu toggle
- FAQ accordion (aria-expanded, +/− icon swap)
- IntersectionObserver: add `.visible` to `.fade-in` elements on scroll
- Sticky nav: add class `scrolled` to `<header>` after 50px scroll (enables backdrop-blur)
- All `<script>` tags at bottom of `<body>` with `defer` OR just before `</body>`

Write the complete file. Do not truncate. Do not add placeholder comments like "rest of section here".

---

## Step 2 — Run the Netlify Agent

Only start this after Step 1 is confirmed complete (index.html exists).

Use the Agent tool with this prompt:

---
**Agent prompt:**

You are a DevOps engineer. The FitMode landing page (`index.html`) has been created. Your job is to create all Netlify deployment files.

**Working directory (write all files here):**
`C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page`

Create these 5 files:

**1. `netlify.toml`**
```toml
[build]
  publish = "."
  command = ""

[[redirects]]
  from   = "/*"
  to     = "/index.html"
  status = 200

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
  for = "/*.woff2"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"
```

**2. `_redirects`**
```
/*    /index.html   200
```

**3. `_headers`**
```
/*
  X-Frame-Options: DENY
  X-Content-Type-Options: nosniff
  Referrer-Policy: strict-origin-when-cross-origin

/*.png
  Cache-Control: public, max-age=31536000, immutable

/*.woff2
  Cache-Control: public, max-age=31536000, immutable
```

**4. `deploy.sh`**
```bash
#!/bin/bash
# FitMode Landing Page — Netlify Deploy Script
# Prerequisites: npm install -g netlify-cli && netlify login
set -e
echo "Deploying FitMode to Netlify..."
netlify deploy --dir=. --message="FitMode deploy $(date)"
echo ""
echo "To go live: netlify deploy --dir=. --prod"
```

**5. `README.md`**
```markdown
# FitMode Landing Page

## Deploy Options

### Drag & Drop (easiest)
Go to https://app.netlify.com/drop and drag this entire folder.

### Netlify CLI
npm install -g netlify-cli
netlify login
bash deploy.sh

### GitHub
Push to GitHub → Netlify → Add new site → Import from Git → publish dir: `.` → no build command.

## Files
| File | Purpose |
|------|---------|
| index.html | Full landing page |
| netlify.toml | Netlify config |
| _redirects | Redirects fallback |
| _headers | Headers fallback |
| deploy.sh | CLI deploy helper |
```

Write all 5 files now.

---

## Step 3 — Run the QA Agent

Only start this after Steps 1 and 2 are both complete.

Use the Agent tool with this prompt:

---
**Agent prompt:**

You are a QA engineer. Review the FitMode landing page and all deployment files. Fix every issue you can. Write a QA report.

**Working directory:**
`C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page`

**Step 1 — Read all these files first:**
- `index.html`
- `netlify.toml`
- `_redirects`
- `_headers`

**Step 2 — Check and fix `index.html` for:**

HTML basics:
- `<!DOCTYPE html>` present
- `<html lang="en">` present
- `<meta charset="UTF-8">` present
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">` present
- Meaningful `<title>` tag (e.g. "FitMode — AI Personal Trainer | Free Home Workouts")
- No unclosed tags, no duplicate `id` attributes
- All `<img>` have `alt` attributes

SEO — add inside `<head>` if ANY are missing:
```html
<meta name="description" content="FitMode uses Google Gemini AI to generate personalized home workout plans, track calories with a photo, and coach you like a real personal trainer — completely free.">
<meta property="og:title" content="FitMode — Your AI Personal Trainer">
<meta property="og:description" content="Personalized home workouts, AI food scanner, and 24/7 AI coach — completely free on Android.">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="FitMode — Your AI Personal Trainer">
<meta name="twitter:description" content="Free AI fitness app powered by Google Gemini. Home workouts, Indian food scanner, AI coach.">
```

Accessibility:
- `<nav>` has `aria-label="Main navigation"`
- FAQ accordion buttons have `aria-expanded` attribute
- `<main>` landmark exists

Performance:
- Google Fonts `<link>` includes `&display=swap`
- All `<script>` tags are at bottom of `<body>` (not in `<head>` without `defer`)
- No `document.write()` usage

Content — verify ALL of these are present (fix if missing):
- Hero headline: "Your AI Personal Trainer. Always in FitMode."
- All 6 feature cards (AI Workouts, Food Scanner, AI Coach, Workout Player, Calorie Tracker, History Calendar)
- All 6 comparison table rows
- All 6 FAQ items
- Footer: "© 2026 FitMode. All rights reserved."
- Footer links: Privacy Policy, Terms of Service, Contact

**Step 3 — Check `netlify.toml`:**
- `publish = "."` set
- Security headers present
- SPA redirect `/* → /index.html 200` present

**Step 4 — Fix everything you can directly using the Edit tool.**

**Step 5 — Create `QA_REPORT.md` at:**
`C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page\QA_REPORT.md`

Format:
```markdown
# FitMode QA Report
Date: [today]

## Status: ✅ READY / ⚠️ NEEDS ATTENTION

## Issues Fixed Automatically
| File | Issue | Fix |
|------|-------|-----|
| ... | ... | ... |

## Issues Needing Human Input
| File | Issue | Action |
|------|-------|--------|
| index.html | Google Play store URL is # placeholder | Replace with actual Play Store URL |

## Final Notes
[1-2 sentences on ship readiness]
```

---

## Orchestrator Completion

After all 3 agents finish, verify the final file structure:
```
Fit_Mode_landing_page/
├── index.html        ← frontend agent
├── netlify.toml      ← netlify agent
├── _redirects        ← netlify agent
├── _headers          ← netlify agent
├── deploy.sh         ← netlify agent
├── README.md         ← netlify agent
├── QA_REPORT.md      ← QA agent
└── agents/           ← do not modify
```

Report to the user: which files were created, any issues the QA agent flagged that need human attention, and the deploy instructions from README.md.

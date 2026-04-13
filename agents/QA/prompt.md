# QA Agent — FitMode Landing Page Quality Assurance

## Role
You are a QA engineer. Your job is to thoroughly review the FitMode landing page (`index.html`) and all deployment files, report every issue found, and fix the ones you can fix directly in the files.

## Context
- Frontend agent created `index.html` (full landing page)
- Netlify agent created `netlify.toml`, `_redirects`, `_headers`, `deploy.sh`, `README.md`
- You are the last agent in the pipeline — your approval means the site is ready to ship
- **Working directory (all files are here):** `C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page`
- **Write QA report to:** `C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page\QA_REPORT.md`

---

## Your Tasks

### Task 1 — Read All Files
Read the following files before doing anything else:
1. `index.html`
2. `netlify.toml`
3. `_redirects`
4. `_headers`
5. `deploy.sh`
6. `README.md`

---

### Task 2 — Content Audit
Verify every piece of content from the spec is present in `index.html`. Check off each item:

**Hero Section**
- [ ] Headline: "Your AI Personal Trainer. Always in FitMode."
- [ ] Subheadline mentions Google Gemini AI, home workout plans, calorie tracking with photo, personal trainer, free
- [ ] CTA button: "Download Free on Google Play"
- [ ] Google Play badge image present

**Stats Bar**
- [ ] 🤖 Powered by Google Gemini AI
- [ ] 🏠 100% Home Workouts — No Equipment
- [ ] 🍛 Recognizes Indian Foods
- [ ] 💰 Completely Free
- [ ] 📱 Available on Android

**Features Section (all 6 must be present)**
- [ ] 🏋️ AI-Personalized Workouts
- [ ] 📸 Scan Food. Track Calories.
- [ ] 🤖 Your 24/7 AI Coach
- [ ] ⏱️ Follow-Along Workouts
- [ ] 🔥 Smart Calorie Tracking
- [ ] 📅 Full History Tracking

**Who It's For Section**
- [ ] Title: "Built for India. Built for You."
- [ ] Mentions Dal, Roti, Biryani, Sabzi
- [ ] Mentions home workouts, no equipment
- [ ] Mentions beginner/advanced

**How It Works (all 3 steps)**
- [ ] Step 1: Set Up Your Profile
- [ ] Step 2: Get Your AI Plan
- [ ] Step 3: Start Your Journey

**Comparison Table (all 6 rows)**
- [ ] AI Personalized Plans — ✅ Free vs ❌ Paid
- [ ] Food Photo Scanning — ✅ Yes vs ❌ Manual only
- [ ] Recognizes Indian Food — ✅ Yes vs ❌ No
- [ ] AI Coach Chat — ✅ Yes vs ❌ No
- [ ] No Equipment Needed — ✅ Yes vs ❌ Gym required
- [ ] Completely Free — ✅ Yes vs ❌ Subscription

**FAQ (all 6 questions)**
- [ ] Is FitMode really free?
- [ ] Do I need gym equipment?
- [ ] Does it work for Indian foods?
- [ ] How accurate is the calorie scanner?
- [ ] Can beginners use FitMode?
- [ ] Is my data safe?

**Final CTA**
- [ ] Headline: "Ready to get in FitMode?"
- [ ] Subheadline mentions Google Play, no credit card, no equipment, just results
- [ ] Button: "Download Now — It's Free"

**Footer**
- [ ] "FitMode — AI Fitness Trainer"
- [ ] "Built with ❤️ for India"
- [ ] "Powered by Google Gemini AI"
- [ ] "© 2026 FitMode. All rights reserved."
- [ ] Privacy Policy, Terms of Service, Contact links

---

### Task 3 — HTML/CSS Technical Audit

Check for these issues in `index.html` and fix any you find:

**HTML Structure**
- [ ] `<!DOCTYPE html>` present
- [ ] `<html lang="en">` present
- [ ] `<meta charset="UTF-8">` present
- [ ] `<meta name="viewport" content="width=device-width, initial-scale=1.0">` present
- [ ] `<title>FitMode — AI Personal Trainer | Free Home Workouts</title>` or similar
- [ ] All tags properly opened and closed (no unclosed `<div>`, `<section>`, etc.)
- [ ] No duplicate `id` attributes
- [ ] All `<img>` tags have `alt` attributes

**SEO Meta Tags — add if missing**
If any of these are missing, add them inside `<head>`:
```html
<meta name="description" content="FitMode uses Google Gemini AI to generate personalized home workout plans, track calories with a photo, and coach you like a real personal trainer — completely free.">
<meta name="keywords" content="AI fitness trainer, home workout, calorie tracker, Indian food scanner, free workout app, Google Gemini AI, FitMode">
<meta property="og:title" content="FitMode — Your AI Personal Trainer">
<meta property="og:description" content="Personalized home workouts, AI food scanner, and 24/7 AI coach — completely free on Android.">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="FitMode — Your AI Personal Trainer">
<meta name="twitter:description" content="Free AI fitness app powered by Google Gemini. Home workouts, Indian food scanner, AI coach.">
```

**Accessibility**
- [ ] All interactive elements (buttons, accordion items) are keyboard accessible
- [ ] Color contrast: text on `#0a0a0a` background is readable (white `#ffffff` or `#00e676`)
- [ ] `<nav>` has `aria-label="Main navigation"`
- [ ] FAQ accordion buttons use `aria-expanded` attribute
- [ ] `<main>` landmark present
- [ ] Skip-to-content link present OR not required (note if missing)

**JavaScript**
- [ ] FAQ accordion opens and closes without errors
- [ ] Hamburger mobile menu works
- [ ] IntersectionObserver scroll animations attached correctly
- [ ] No `console.error` or obvious JS bugs visible in code review
- [ ] No use of `document.write()`
- [ ] No inline `onclick` handlers that use `eval()`

**Performance**
- [ ] Google Fonts loaded with `display=swap` parameter
- [ ] No render-blocking scripts (all `<script>` tags are at bottom of `<body>` or have `defer`)
- [ ] Images (if any) have `loading="lazy"`
- [ ] CSS is minified OR at least not excessively large (under 1000 lines inline)

---

### Task 4 — Netlify Config Audit

Check `netlify.toml`:
- [ ] `publish = "."` is set
- [ ] Security headers present (`X-Frame-Options`, `X-Content-Type-Options`, `Referrer-Policy`)
- [ ] `index.html` has `no-cache` header
- [ ] Static assets have long-cache headers
- [ ] SPA redirect rule present (`/* → /index.html 200`)

Check `_redirects`:
- [ ] Contains `/* /index.html 200`

Check `_headers`:
- [ ] Security headers for `/*`
- [ ] Cache headers for static assets

---

### Task 5 — Fix Issues
For every issue found in Tasks 2–4:
1. Fix it directly in the file using the Edit tool
2. Note what was fixed in your QA Report

Do NOT ask for permission — fix issues you can fix. If an issue requires information you don't have (e.g., actual Google Play store URL), note it as "Needs human input" in the report.

---

### Task 6 — Create QA Report
Create a file `QA_REPORT.md` in the project root with:

```markdown
# FitMode Landing Page — QA Report
Date: [today's date]
Reviewed by: QA Agent

## Summary
- Total issues found: X
- Issues fixed automatically: X
- Issues requiring human input: X
- Overall status: ✅ READY TO DEPLOY / ⚠️ NEEDS ATTENTION

## Issues Fixed
| # | File | Issue | Fix Applied |
|---|------|-------|-------------|
| 1 | index.html | Missing OG meta tags | Added og:title, og:description, og:type |
| ... | ... | ... | ... |

## Issues Requiring Human Input
| # | File | Issue | Action Needed |
|---|------|-------|---------------|
| 1 | index.html | Google Play store URL is placeholder (#) | Replace with actual Play Store URL |
| ... | ... | ... | ... |

## Content Checklist
[paste the filled-in checklist from Task 2]

## Technical Checklist
[paste the filled-in checklist from Tasks 3–4]

## Final Verdict
[2-3 sentences: is the site ready to deploy? What's the one thing that must happen before going live?]
```

---

## Deliverables Checklist
- [ ] All files read and reviewed
- [ ] Content audit completed
- [ ] Technical audit completed
- [ ] All fixable issues corrected in files
- [ ] `QA_REPORT.md` created at project root with full findings

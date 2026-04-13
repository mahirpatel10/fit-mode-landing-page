# Frontend Agent — FitMode Landing Page

## Role
You are a senior frontend developer. Your job is to build a complete, production-ready, single-file HTML landing page for **FitMode** — an AI fitness trainer Android app.

## Output
Create a single file at this exact absolute path:
`C:\Users\pragnesh\Desktop\claude_multi_agent_teams\Fit_Mode_landing_page\index.html`

Requirements:
- Self-contained single HTML file (inline CSS via `<style>`, no external CSS frameworks)
- Vanilla JS only — no frameworks, no npm, no build step
- Fully responsive (mobile-first, works on 320px–1440px)
- Dark fitness theme: background `#0a0a0a`, accent `#00e676` (neon green), white text
- Smooth scroll, subtle animations on scroll (use IntersectionObserver)
- Google Fonts: `Inter` for body, `Poppins` for headings — load via `<link>` from Google Fonts CDN
- Google Play badge: use the official image URL `https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png`
- No placeholder images — use CSS gradients and emoji icons for feature cards
- Semantic HTML5 tags (`<header>`, `<main>`, `<section>`, `<footer>`, `<nav>`)
- All anchor `href` values for Privacy Policy, Terms of Service, and Contact should be `#` for now

---

## Page Sections (build exactly in this order)

### 1. NAV BAR
- Logo left: "FitMode" in bold neon green
- Right side: smooth-scroll links — Features, How It Works, FAQ, Download
- Sticky top, semi-transparent blur background on scroll (`backdrop-filter: blur`)

---

### 2. HERO SECTION
**Headline:** `Your AI Personal Trainer. Always in FitMode.`
**Subheadline:** `FitMode uses Google Gemini AI to generate personalized home workout plans, track your calories with just a photo, and coach you like a real personal trainer — all for free.`
**CTA Button:** `Download Free on Google Play` — links to Google Play badge image below button
- Full viewport height, centered content
- Animated gradient background (green → dark)
- Phone mockup: a CSS-drawn rounded rectangle with a gradient screen showing "FitMode AI" text

---

### 3. STATS BAR
Display these 5 stats as horizontal pills/badges:
- 🤖 Powered by Google Gemini AI
- 🏠 100% Home Workouts — No Equipment
- 🍛 Recognizes Indian Foods
- 💰 Completely Free
- 📱 Available on Android

---

### 4. FEATURES SECTION
**Section title:** `Everything you need. Nothing you don't.`

Build a responsive grid (2 cols desktop, 1 col mobile) of 6 feature cards. Each card has an emoji icon, bold title, and description:

1. 🏋️ **AI-Personalized Workouts** — Tell FitMode your goal, fitness level, and schedule. Gemini AI builds a custom weekly workout plan just for you — no gym, no equipment needed.
2. 📸 **Scan Food. Track Calories.** — Just take a photo of your meal. FitMode's AI instantly recognizes Indian and international foods and gives you calories, protein, carbs, and fat — no manual logging.
3. 🤖 **Your 24/7 AI Coach** — Ask anything about your workouts, nutrition, or progress. FitMode AI knows your full profile and gives personalized advice — like having a personal trainer in your pocket.
4. ⏱️ **Follow-Along Workouts** — Timer-based workout player with animated exercise demos, voice coaching, rest timers, and progress tracking. Just press start and follow along.
5. 🔥 **Smart Calorie Tracking** — Track daily calories, protein, carbs, and fat. See your progress with a beautiful calorie ring. Log water intake and monitor your macros — all in one place.
6. 📅 **Full History Tracking** — See every workout and meal in a color-coded calendar. Tap any day for a full report — calories eaten, exercises completed, water intake, and how you felt.

---

### 5. WHO IT'S FOR SECTION
**Title:** `Built for India. Built for You.`
**Description:** `FitMode recognizes Indian foods like Dal, Roti, Biryani, and Sabzi — so calorie tracking actually works for Indian diets. Workouts are designed for home, no equipment needed. Whether you're a beginner or advanced, FitMode adapts to your level.`

- Highlight Indian food names with neon green color
- Add a row of Indian food emoji: 🍛 🫓 🍚 🥘

---

### 6. HOW IT WORKS SECTION
**Title:** `Get fit in 3 simple steps`

3 numbered steps in a horizontal row (stack vertically on mobile), connected by arrow icons:

1. **1️⃣ Set Up Your Profile** — Tell FitMode your age, weight, goal, and how many days you can work out. Takes 2 minutes.
2. **2️⃣ Get Your AI Plan** — Gemini AI instantly generates a personalized weekly workout plan and calorie targets just for you.
3. **3️⃣ Start Your Journey** — Follow your workouts, scan your meals, chat with your AI coach, and track your progress every day.

---

### 7. COMPARISON TABLE SECTION
**Title:** `Why FitMode beats the rest`

HTML `<table>` with these columns: Feature | FitMode | Other Apps

| Feature | FitMode | Other Apps |
|---|---|---|
| AI Personalized Plans | ✅ Free | ❌ Paid |
| Food Photo Scanning | ✅ Yes | ❌ Manual only |
| Recognizes Indian Food | ✅ Yes | ❌ No |
| AI Coach Chat | ✅ Yes | ❌ No |
| No Equipment Needed | ✅ Yes | ❌ Gym required |
| Completely Free | ✅ Yes | ❌ Subscription |

- Style: FitMode column highlighted in neon green, other apps column in red/grey
- Alternating row backgrounds

---

### 8. FAQ SECTION
**Title:** `Frequently Asked Questions`

Build as an accordion (click to expand/collapse). Each item has a `+`/`−` toggle:

1. **Is FitMode really free?** — Yes! FitMode is completely free to download and use. No subscriptions, no hidden charges.
2. **Do I need gym equipment?** — No. All workouts are designed for home use with zero equipment. Just your body weight.
3. **Does it work for Indian foods?** — Yes! FitMode's AI is specifically trained to recognize Indian foods like Dal, Roti, Biryani, Paneer, Sabzi, and more.
4. **How accurate is the calorie scanner?** — FitMode uses Google Gemini AI which is highly accurate for common Indian and international foods. Just take a clear photo of your meal.
5. **Can beginners use FitMode?** — Absolutely. During onboarding you select your fitness level — beginner, intermediate, or advanced. The AI generates a plan that matches your level.
6. **Is my data safe?** — Yes. Your data is stored securely using Appwrite cloud infrastructure. We never sell your data to anyone.

---

### 9. FINAL CTA SECTION
**Headline:** `Ready to get in FitMode?`
**Subheadline:** `Download free on Google Play. No credit card. No equipment. Just results.`
**Button:** `Download Now — It's Free`

- Full-width section, gradient background
- Prominent CTA button with pulse animation

---

### 10. FOOTER
```
FitMode — AI Fitness Trainer
Built with ❤️ for India
Powered by Google Gemini AI
© 2026 FitMode. All rights reserved.
Privacy Policy | Terms of Service | Contact
```

---

## Design System
```
--bg:           #0a0a0a
--bg-card:      #111111
--bg-card-2:    #1a1a1a
--accent:       #00e676
--accent-dim:   #00b85c
--text:         #ffffff
--text-muted:   #888888
--border:       #222222
--radius:       12px
--shadow:       0 4px 24px rgba(0,230,118,0.08)
```

## Scroll Animations
Use `IntersectionObserver` to add class `visible` to sections as they enter viewport. CSS:
```css
.fade-in { opacity: 0; transform: translateY(30px); transition: 0.6s ease; }
.fade-in.visible { opacity: 1; transform: none; }
```

## Deliverable
A single `index.html` file at the project root. Validate mentally that:
- [ ] No broken links (all CTAs point to `#` or Google Play badge URL)
- [ ] No missing closing tags
- [ ] Mobile menu works (hamburger toggles nav links)
- [ ] FAQ accordion opens/closes correctly
- [ ] Page looks good at 375px (iPhone SE) and 1440px (desktop)

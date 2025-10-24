# hargarepairgearbox.com — Pre-Launch SEO & Conversion Optimization Plan

**Website:** hargarepairgearbox.com  
**Target Market:** Malaysian car owners (25–45 years old)  
**Business:** One X Transmission (Gearbox Specialist)  
**Goal:** Generate qualified gearbox repair leads via organic search + paid ads

---

## 1️⃣ SEO FOUNDATION

### Meta Titles & Descriptions

#### Homepage
**Title (58 chars):** Harga Repair Gearbox | Semak Anggaran Kos Overhaul CVT & Auto  
**Description (155 chars):** Semak harga repair gearbox untuk semua model kereta Malaysia. Dapatkan anggaran kos CVT, automatik & manual + punca masalah percuma via WhatsApp.

**H1:** Harga Repair Gearbox — Semak Anggaran Kos Untuk Kereta Anda  
**H2:** Anggaran Harga Overhaul Gearbox Mengikut Model  
**H3:** Honda, Toyota, Perodua, Proton, Nissan & Continental

---

#### Harga Page (Price List)
**URL:** `/harga-overhaul-gearbox`  
**Title:** Harga Overhaul Gearbox 2025 — Honda, Toyota, Perodua, Proton  
**Description:** Senarai harga overhaul gearbox terkini untuk CVT, automatik & manual. Termasuk Honda City, Myvi, Vios, Saga, X-Trail & 100+ model lain.

**H1:** Harga Overhaul Gearbox Mengikut Jenama & Model (2025)  
**H2:** Perodua Myvi, Honda City, Toyota Vios, Proton X50  
**H3:** CVT, Automatik, DSG, Manual

---

#### Symptom/Problem Pages (Create Individual Pages)
**URL Structure:**
- `/masalah-gearbox-tersentak`
- `/gearbox-delay-tak-gerak`
- `/bunyi-kasar-gearbox`
- `/gearbox-cvt-problem`
- `/gearbox-auto-tak-masuk-gear`

**Example: Gearbox Tersentak Page**  
**Title:** Gearbox Tersentak Masa Tukar Gear — Punca & Kos Repair  
**Description:** Gearbox tersentak masa drive? Ketahui punca utama, harga repair & cara check sendiri. Dapatkan anggaran percuma untuk Honda, Myvi, Vios & lain-lain.

**H1:** Kenapa Gearbox Tersentak Masa Tukar Gear?  
**H2:** 5 Punca Utama Gearbox Tersentak  
**H3:** Harga Repair Mengikut Punca Kerosakan

---

#### Blog/Panduan Page
**URL:** `/panduan-gearbox`  
**Title:** Panduan Gearbox — Tips, Masalah & Cara Maintain CVT/Auto  
**Description:** Panduan lengkap tentang gearbox kereta — simptom rosak, cara maintain, bila perlu repair & tips jimat kos. Untuk pemilik Honda, Toyota, Perodua & lain-lain.

---

#### Contact/Quotation Page
**URL:** `/semak-harga`  
**Title:** Semak Harga Repair Gearbox — Dapatkan Quotation Percuma  
**Description:** Isi borang ringkas untuk dapatkan anggaran harga repair gearbox kereta anda via WhatsApp. Free inspection sebelum repair.

---

### Priority Keywords (Primary + Long-tail)

| Keyword | Search Intent | Monthly Volume (Est.) | Page Target |
|---------|---------------|----------------------|-------------|
| harga repair gearbox | Transactional | High | Homepage |
| harga overhaul gearbox | Transactional | High | Harga Page |
| repair gearbox near me | Local | Medium | Homepage |
| gearbox tersentak | Problem-aware | High | Symptom Page |
| gearbox delay pickup | Problem-aware | Medium | Symptom Page |
| gearbox cvt problem | Problem-aware | High | Blog/Symptom |
| harga repair gearbox myvi | Model-specific | Medium | Harga Page |
| harga overhaul gearbox honda city | Model-specific | Medium | Harga Page |
| gearbox auto tak masuk D | Problem-aware | Medium | Symptom Page |
| bunyi kasar gearbox | Problem-aware | Medium | Symptom Page |
| tukar gearbox berapa | Transactional | Medium | Harga Page |
| servis gearbox CVT | Service-aware | Medium | Blog |
| masalah gearbox proton x50 | Model + problem | Low-Medium | Blog |
| gearbox specialist malaysia | Commercial | Low | Homepage |
| cara tahu gearbox rosak | Educational | Medium | Blog |

**Why this matters:** Malaysians search in Bahasa + English mix. They want PRICE first, then trust, then location. Long-tail keywords = higher conversion.

**Expected outcome:** Rank top 3 for 10+ keywords within 3–6 months with consistent content + backlinks.

---

### URL Structure (SEO-Friendly)

```
hargarepairgearbox.com/
├── / (Homepage)
├── /harga-overhaul-gearbox (Main price list)
├── /harga-gearbox-honda (Brand-specific)
├── /harga-gearbox-toyota
├── /harga-gearbox-perodua
├── /masalah-gearbox-tersentak (Symptom pages)
├── /gearbox-delay-tak-gerak
├── /bunyi-kasar-gearbox
├── /gearbox-cvt-problem
├── /panduan-gearbox/ (Blog category)
│   ├── /cara-maintain-gearbox-cvt
│   ├── /bila-perlu-tukar-minyak-gearbox
│   └── /tanda-gearbox-nak-rosak
├── /semak-harga (Quotation form)
└── /hubungi (Contact)
```

**Why this matters:** Clear, keyword-rich URLs = better CTR from Google + easier for users to remember.

---

### Schema Markup (Structured Data)

#### LocalBusiness Schema (Homepage + Footer)
```json
{
  "@context": "https://schema.org",
  "@type": "AutoRepair",
  "name": "One X Transmission",
  "description": "Pakar pembaikan gearbox CVT, automatik & manual untuk semua jenama kereta",
  "url": "https://hargarepairgearbox.com",
  "telephone": "+60123456789",
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Shah Alam",
    "addressRegion": "Selangor",
    "postalCode": "40000",
    "addressCountry": "MY"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "3.0733",
    "longitude": "101.5185"
  },
  "priceRange": "RM1800-RM15000",
  "openingHours": "Mo-Sa 09:00-18:00",
  "servesCuisine": "Gearbox Repair, CVT Repair, Automatic Transmission, Manual Transmission",
  "areaServed": {
    "@type": "Country",
    "name": "Malaysia"
  }
}
```

#### FAQ Schema (Symptom Pages)
```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [{
    "@type": "Question",
    "name": "Kenapa gearbox tersentak masa tukar gear?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "Punca utama: minyak gearbox kotor/kurang, clutch pack haus, valve body rosak, atau solenoid problem. Kos repair dari RM2,800 hingga RM6,500 bergantung model kereta."
    }
  }]
}
```

#### Service Schema (Harga Page)
```json
{
  "@context": "https://schema.org",
  "@type": "Service",
  "serviceType": "Gearbox Overhaul & Repair",
  "provider": {
    "@type": "AutoRepair",
    "name": "One X Transmission"
  },
  "areaServed": "Malaysia",
  "offers": {
    "@type": "Offer",
    "priceRange": "RM1800-RM15000",
    "priceCurrency": "MYR"
  }
}
```

**Why this matters:** Schema helps Google show rich results (star ratings, price ranges, FAQ snippets) = higher CTR.

---

### robots.txt
```
User-agent: *
Allow: /
Disallow: /admin/
Disallow: /thank-you/
Disallow: /test/

Sitemap: https://hargarepairgearbox.com/sitemap.xml
```

---

### sitemap.xml Outline
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://hargarepairgearbox.com/</loc>
    <priority>1.0</priority>
    <changefreq>weekly</changefreq>
  </url>
  <url>
    <loc>https://hargarepairgearbox.com/harga-overhaul-gearbox</loc>
    <priority>0.9</priority>
    <changefreq>monthly</changefreq>
  </url>
  <url>
    <loc>https://hargarepairgearbox.com/masalah-gearbox-tersentak</loc>
    <priority>0.8</priority>
    <changefreq>monthly</changefreq>
  </url>
  <!-- Add all symptom pages, brand pages, blog posts -->
</urlset>
```

---

## 2️⃣ LANDING PAGE OPTIMIZATION

### Homepage Rewrite (Malaysian Consumer-First)

#### Hero Section (Above the Fold)
**Headline:**  
"Nak Tahu Harga Repair Gearbox Kereta Anda?"

**Subheadline:**  
"Semak anggaran kos overhaul CVT, automatik & manual untuk Honda, Toyota, Perodua, Proton, Nissan — PLUS punca masalah & cara check. Percuma."

**Primary CTA:**  
[Semak Harga Sekarang] → Scroll to form

**Secondary CTA:**  
[WhatsApp Terus] → Opens WhatsApp with pre-filled message

**Visual:**  
Real workshop photo showing gearbox disassembly (Honda/Myvi preferred for familiarity).

**Why this matters:** Malaysians want to know PRICE first. Headline must be direct + benefit-focused, not brand-focused.

---

#### Quick Quotation Form (Immediate Visibility)

**Form Position:** Section 2 (right after hero)

**Fields:**
1. Jenama & Model Kereta (dropdown + autocomplete)
2. Jenis Gearbox (CVT / Automatik / Manual / Tak Pasti)
3. Masalah/Simptom (checkbox: Tersentak, Delay, Bunyi, Bocor, Lain-lain)
4. Nombor WhatsApp
5. Lokasi (optional)

**CTA Button:** "Dapatkan Anggaran Harga via WhatsApp"

**Post-Submit:**
- Success message: "Terima kasih! Kami akan WhatsApp anda dalam 5 minit dengan anggaran harga & punca masalah."
- Auto-trigger WhatsApp message to One X Transmission
- Track as Lead conversion in Meta Pixel + GA4

**Why this matters:** Form BEFORE pricing table = captures hot leads. Form AFTER pricing = captures informed leads. Have both.

---

#### Pricing Table (Trust Builder)

**Section Title:** "Anggaran Harga Overhaul Gearbox 2025"

**Subtitle:** "Harga bergantung kepada kerosakan sebenar. Pemeriksaan percuma sebelum kerja dimulakan."

**Table Layout:**
- Show 16–20 most popular models (Myvi, City, Vios, Saga, Almera, X-Trail, etc.)
- Use accordion for full list (100+ models)
- Include warranty info: "1 Tahun / 40,000 KM"

**Secondary CTA Below Table:**  
"Model kereta anda tak ada? Semak harga sekarang."

**Why this matters:** Transparency = trust. Malaysians compare prices. If you don't show, they'll Google your competitor.

---

#### Symptom Awareness Section

**Title:** "Masalah Gearbox Yang Ramai Tak Perasan"

**6 Symptom Cards (clickable to symptom pages):**
1. Tersentak masa tukar gear → [Baca Punca & Harga]
2. Delay pickup / tak gerak → [Baca Punca & Harga]
3. Bunyi kasar masa drive → [Baca Punca & Harga]
4. Gear tak masuk (застрял في D/R) → [Baca Punca & Harga]
5. Getaran kuat masa naik bukit → [Baca Punca & Harga]
6. Minyak gearbox bocor → [Baca Punca & Harga]

**Why this matters:** Educational content = SEO gold. Each symptom = keyword target + internal link opportunity.

---

#### Proof Section (Gallery + Stats)

**Title:** "Lebih 1,000 Gearbox Dah Kami Repair — Dari Myvi Sampai BMW"

**Stats (clean number display):**
- 1,000+ gearbox overhaul siap
- 12 tahun pengalaman
- Free inspection sebelum repair
- Warranty 1 tahun / 40,000 KM

**Gallery:** 6–8 real workshop photos with captions:
- "Honda City GM6 — CVT overhaul, delay pickup (RM4,200)"
- "Perodua Myvi — Tersentak gear 2-3, clutch pack haus (RM3,200)"
- "Proton X50 — DCT repair, bunyi kasar (RM13,500)"

**Why this matters:** Malaysians don't trust "award-winning" claims. They trust PROOF (real cases, real photos, real prices).

---

#### Final CTA (Sticky Footer)

**Desktop:** Sticky bottom bar  
**Mobile:** Floating CTA button

**Text:** "Nak tahu harga untuk kereta anda? Klik sini."  
**CTA:** [Semak Harga] → Scroll to form or open WhatsApp

**Why this matters:** Always-visible CTA = higher conversion. User can submit anytime without scrolling back.

---

### Ad-to-Landing Flow

#### Meta Ads (Facebook/Instagram)
**Ad Copy:**  
"Gearbox kereta tersentak? Semak harga repair untuk [Model] sekarang. Anggaran percuma via WhatsApp."

**Landing Page:** Homepage or symptom-specific page (e.g., `/masalah-gearbox-tersentak`)

**Pixel Events to Track:**
- PageView
- ViewContent (form section viewed)
- Lead (form submitted)
- Contact (WhatsApp clicked)

---

#### Google Search Ads
**Ad Headline 1:** Harga Repair Gearbox [Model]  
**Headline 2:** Anggaran Percuma | Warranty 1 Tahun  
**Description:** Semak harga overhaul CVT/Auto untuk kereta anda. Free inspection sebelum repair. WhatsApp sekarang.

**Landing Page:** `/harga-overhaul-gearbox` or model-specific pages

**Why this matters:** Ad copy MUST match landing page headline (Quality Score). Use exact keyword in URL.

---

## 3️⃣ CONTENT STRATEGY (20 Blog Titles)

### Problem-Aware (High Search Volume)

| # | Blog Title | Target Keyword | Intro Idea |
|---|------------|----------------|------------|
| 1 | Gearbox Tersentak Masa Tukar Gear — 5 Punca & Harga Repair | gearbox tersentak | Explain clutch pack wear, valve body issues, solenoid problems. Include price table by model. |
| 2 | Gearbox Delay Pickup — Kenapa & Berapa Kos Repair? | gearbox delay | Cover low transmission fluid, torque converter issues, filter clogged. Add checklist. |
| 3 | Bunyi Kasar Dari Gearbox — Normal Ke Bahaya? | bunyi kasar gearbox | Explain bearing noise, gear grinding, pump failure. When to repair vs when to wait. |
| 4 | Gearbox Auto Tak Masuk Gear D/R — Punca & Cara Fix | gearbox tak masuk gear | Linkage issues, solenoid stuck, low fluid. Include DIY check steps. |
| 5 | Masalah Gearbox CVT Yang Ramai Tak Tahu | gearbox cvt problem | Common CVT issues (belt wear, sensor fail, overheating). Prevention tips. |
| 6 | Gear Terkeluar Sendiri Masa Drive — Bahaya Ke? | gear terkeluar sendiri | Explain worn synchronizers, linkage loose. Safety warning + repair cost. |
| 7 | Minyak Gearbox Bocor — Tanda, Punca & Kos Repair | minyak gearbox bocor | Seal failure, pan gasket leak. How to spot early + price range. |
| 8 | Gearbox Panas Sangat — 4 Punca Utama & Cara Prevent | gearbox overheat | Cooling system fail, low fluid, heavy load. Include warning signs. |

---

### Service-Aware (Educational + SEO)

| # | Blog Title | Target Keyword | Intro Idea |
|---|------------|----------------|------------|
| 9 | Bila Perlu Tukar Minyak Gearbox? Panduan Lengkap | tukar minyak gearbox | Mileage guide (40k-60k km), signs fluid needs change, cost by model. |
| 10 | Cara Maintain Gearbox CVT Supaya Tahan Lama | maintain gearbox cvt | Driving habits, fluid change schedule, avoid sudden acceleration. |
| 11 | Overhaul vs Repair Gearbox — Mana Lagi Berbaloi? | overhaul gearbox | Explain difference, when to overhaul vs patch repair, cost comparison. |
| 12 | Tanda-Tanda Gearbox Nak Rosak (Jangan Ignore!) | tanda gearbox rosak | 10 early warning signs before major failure. Save money by acting early. |
| 13 | Beza Gearbox CVT, Auto & Manual — Mana Lagi Mahal Repair? | jenis gearbox | Compare repair complexity, cost range, common issues for each type. |
| 14 | Berapa Lama Ambil Masa Nak Repair Gearbox? | masa repair gearbox | Timeline: diagnosis (1-2 days), overhaul (3-5 days), testing. Set expectations. |

---

### Model-Specific (Long-tail SEO)

| # | Blog Title | Target Keyword | Intro Idea |
|---|------------|----------------|------------|
| 15 | Masalah Gearbox Honda City — CVT Delay & Harga Repair | masalah gearbox honda city | Common issues for GM6/FC models, repair cost, prevention. |
| 16 | Gearbox Perodua Myvi Tersentak — Punca & Kos Fix | gearbox myvi tersentak | Clutch pack wear in old Myvi, DCVT issues in new model, price table. |
| 17 | Proton X50 DCT Problem — Warranty Cover Ke Tak? | proton x50 dct problem | Explain DCT issues, warranty coverage, out-of-warranty repair cost. |
| 18 | Toyota Vios CVT vs Auto — Mana Lagi Senang Maintain? | toyota vios gearbox | Compare NSP151 CVT vs older auto models, maintenance cost difference. |
| 19 | Nissan X-Trail CVT — Masalah Biasa & Harga Overhaul | nissan xtrail cvt | Known issues (judder, overheating), repair vs replace decision, cost. |
| 20 | Gearbox BMW 8HP — Berapa Kos Repair & Mana Workshop Boleh Buat? | bmw gearbox repair | Specialty repair for 8HP45/50, coding requirement, realistic pricing. |

---

### Content Integration (Get Quotation Inside Blogs)

**Strategy:** Every blog should have 2-3 CTAs:

1. **Mid-article CTA (after problem explanation):**  
   > "Kereta anda ada simptom ni? Semak harga repair sekarang — anggaran percuma via WhatsApp."  
   [Semak Harga] → Form or WhatsApp

2. **End-of-article CTA:**  
   > "Nak tahu berapa kos sebenar untuk model kereta anda? Isi borang ringkas untuk dapatkan quotation."  
   [Form embed or link to /semak-harga]

3. **Sidebar widget (desktop) / Bottom sticky (mobile):**  
   "Dapatkan Anggaran Harga Percuma"

**Why this matters:** Blog traffic converts 2-5% on average. Without CTA, it's just pageviews. With CTA, it's LEADS.

**Expected outcome:** 10-15% of blog readers click CTA, 20-30% of clickers submit form = 2-4% blog-to-lead conversion.

---

## 4️⃣ RETARGETING SETUP

### Tracking Preparation (Before Launch)

#### Meta Pixel Events
```javascript
// Standard Events
fbq('track', 'PageView');
fbq('track', 'ViewContent', { content_name: 'Harga Page' });
fbq('track', 'Lead', { content_name: 'Quotation Form', value: 0, currency: 'MYR' });
fbq('track', 'Contact', { content_name: 'WhatsApp Click' });

// Custom Events
fbq('trackCustom', 'FormStarted', { form_name: 'quotation_form' });
fbq('trackCustom', 'PriceTableViewed', { car_brand: 'Honda' });
fbq('trackCustom', 'SymptomPageView', { symptom: 'tersentak' });
fbq('trackCustom', 'HighEngagement', { time_on_page: 30 });
```

---

#### Google Analytics 4 Events
```javascript
// Form Interactions
gtag('event', 'form_start', { form_name: 'quotation_form' });
gtag('event', 'generate_lead', { car_brand: 'Honda', gearbox_type: 'CVT' });

// Engagement
gtag('event', 'scroll', { percent_scrolled: 75 });
gtag('event', 'whatsapp_click', { click_location: 'floating_button' });

// Content
gtag('event', 'view_item', { item_name: 'Harga Overhaul Page' });
gtag('event', 'search', { search_term: 'honda city' });
```

---

### 3 Custom Audience Groups (Meta Ads)

#### Audience 1: Price Checkers (Warm)
**Definition:** Viewed `/harga-overhaul-gearbox` OR any pricing section, did NOT submit form  
**Retargeting Window:** 7 days  
**Ad Angle:**  
"Dah tengok harga tapi belum confirm? Klik sini untuk dapatkan anggaran exact untuk kereta anda — percuma via WhatsApp."

**Why this matters:** They're interested but need a push. Offer free inspection or limited-time discount (e.g., "Free towing dalam 10km").

---

#### Audience 2: Form Starters (Hot)
**Definition:** Started filling quotation form but did NOT submit  
**Retargeting Window:** 3 days  
**Ad Angle:**  
"Form belum habis? Klik sini untuk sambung — hanya 30 saat je. Dapatkan anggaran harga terus ke WhatsApp."

**Why this matters:** Highest intent audience. Maybe interrupted or unsure. Simple reminder = high conversion.

---

#### Audience 3: Symptom Readers (Problem-Aware)
**Definition:** Read 2+ symptom/blog pages, spent 30+ seconds, did NOT submit form  
**Retargeting Window:** 14 days  
**Ad Angle:**  
"Masih fikir masalah gearbox tu serious ke tak? Jangan tunggu sampai rosak teruk. Semak harga sekarang — free inspection."

**Why this matters:** They're researching. They have the problem but maybe think it's not urgent. Create urgency.

---

#### Audience 4: WhatsApp Clickers (High Intent)
**Definition:** Clicked WhatsApp button but did NOT message  
**Retargeting Window:** 5 days  
**Ad Angle:**  
"Nak tanya tapi tak sempat? Klik sini — team kami reply dalam 5 minit. Atau isi form untuk auto-quotation."

---

### Retargeting Ad Creative Guidelines

**Tone:** Conversational Malaysian  
**Visuals:** Real workshop photos (NOT stock images of white people in lab coats)  
**Social Proof:** "1,000+ gearbox siap repair" or "Avg response time: 5 minit"

**Example Carousel Ad:**
- Slide 1: "Harga Repair Gearbox Myvi — RM2,800-RM6,500"
- Slide 2: "Honda City CVT — RM3,800-RM4,500"
- Slide 3: "Toyota Vios — RM3,500-RM5,500"
- Slide 4: "Semak harga untuk model anda → [Form]"

**Why this matters:** Malaysians are visual + price-sensitive. Show exact prices = build trust = higher CTR.

---

## 5️⃣ TECHNICAL & UX PREP

### Mobile Load Speed (Critical for Malaysian Market)

**Why:** 80%+ traffic from mobile. Slow site = bounce.

| Check | Tool | Target | Action |
|-------|------|--------|--------|
| Core Web Vitals | PageSpeed Insights | LCP < 2.5s | Optimize images (WebP), lazy load, CDN |
| First Contentful Paint | Lighthouse | FCP < 1.8s | Inline critical CSS, defer non-critical JS |
| Cumulative Layout Shift | PageSpeed | CLS < 0.1 | Set image dimensions, avoid dynamic content shifts |
| Time to Interactive | GTmetrix | TTI < 3.5s | Minimize JavaScript, remove render-blocking resources |
| Mobile Score | PageSpeed | 90+ | Compress images, enable gzip, minify CSS/JS |

**Expected outcome:** Page load < 3 seconds on 3G = lower bounce rate + higher Google ranking.

---

### Hosting Optimizations

**✅ Essential:**
1. **SSL Certificate** — HTTPS required (Google ranking factor + trust)
2. **Gzip Compression** — Reduce file sizes by 70%
3. **Browser Caching** — Set cache expiry (images: 1 year, CSS/JS: 1 month)
4. **CDN** — Use Cloudflare (free tier) for faster loading across Malaysia
5. **Image Optimization:**
   - Convert to WebP format
   - Lazy load below-the-fold images
   - Max width: 1200px (no need for 4K photos)
6. **Minify CSS/JS** — Remove whitespace, comments
7. **Database Optimization** — If using WordPress, clean up revisions, spam

**Why this matters:** Malaysian internet speeds vary. Fast site = better UX = lower bounce rate = higher conversions.

---

### Form Tracking (Critical for ROI)

**What to Track:**
1. Form impressions (how many saw it)
2. Form starts (clicked into first field)
3. Form submissions (completed)
4. Field drop-off (which field causes abandonment)
5. Error messages (validation issues)

**Tools:**
- Google Tag Manager (form submit trigger)
- Hotjar / Microsoft Clarity (heatmaps, session recordings)
- Meta Pixel (Lead event)

**Expected outcome:** If form start-to-submit rate < 50%, simplify form. If < 30%, major UX issue.

---

### Pre-Launch Checklist (Technical)

**Search Console Setup:**
- [ ] Add property to Google Search Console
- [ ] Submit sitemap.xml
- [ ] Verify ownership (HTML tag method)
- [ ] Set preferred domain (www vs non-www)
- [ ] Request indexing for main pages

**Analytics Setup:**
- [ ] Install GA4 tracking code
- [ ] Set up conversion events (Lead, Contact, FormStart)
- [ ] Create custom reports (traffic by car brand, symptom pages)
- [ ] Link Google Ads account (if running ads)

**Meta Business Suite:**
- [ ] Verify domain ownership
- [ ] Install Meta Pixel
- [ ] Test events with Pixel Helper extension
- [ ] Create custom conversions (Lead = form submit)
- [ ] Set up Conversions API (server-side tracking for iOS 14+)

**Testing:**
- [ ] Test form submission on mobile (Android + iOS)
- [ ] Check WhatsApp auto-trigger works
- [ ] Verify all internal links (no 404s)
- [ ] Test page load speed on 3G/4G
- [ ] Cross-browser testing (Chrome, Safari, Samsung Internet)

---

## 6️⃣ LAUNCH PLAN (7-Day Checklist)

### Day 1 (Launch Day)
**Time:** 9:00 AM Monday (avoid Friday/weekend)

**Tasks:**
- [ ] Make site live (remove "coming soon" page)
- [ ] Submit sitemap to Google Search Console
- [ ] Request indexing for homepage + main pages
- [ ] Verify Meta Pixel firing (use Pixel Helper)
- [ ] Post launch announcement on Facebook page (if exists)
- [ ] Send WhatsApp broadcast to existing customer database (if any)

**Ads:** Do NOT launch ads yet. Let Google crawl first.

**Why:** Give Google 2-3 days to index before sending paid traffic. Avoid wasting ad spend on non-indexed pages.

---

### Day 2-3 (Indexing Phase)
**Tasks:**
- [ ] Check Search Console for indexing status
- [ ] Manually index priority pages (harga page, top symptom pages)
- [ ] Monitor Google Analytics for organic traffic spikes
- [ ] Check for crawl errors in Search Console
- [ ] Fix any broken links or 404s

**Expected:** 50-80% of pages indexed within 48 hours.

---

### Day 4 (First Ad Campaign)
**Platform:** Meta Ads (Facebook/Instagram)

**Campaign Goal:** Lead Generation  
**Budget:** RM30-50/day (test budget)  
**Targeting:**
- Location: Selangor, KL, Penang, Johor
- Age: 25-50
- Interests: Car owners, Honda, Toyota, Perodua
- Lookalike: Upload customer phone list (if exists)

**Ad Creative:**
- Carousel: Show popular models + prices
- Copy: "Gearbox tersentak? Semak harga repair sekarang — anggaran percuma."
- CTA: "Hantar Mesej" (WhatsApp) or "Isi Borang"

**Landing Page:** Homepage or `/semak-harga`

**Why:** Meta ads = faster results than Google Search ads (which need time to build Quality Score).

---

### Day 5 (Google Search Ads)
**Campaign Type:** Search Network  
**Budget:** RM20-40/day  
**Keywords:**
- harga repair gearbox [exact match]
- harga overhaul gearbox [phrase match]
- repair gearbox near me [broad match modifier]
- gearbox tersentak [phrase match]

**Ad Copy:**
- Headline 1: Harga Repair Gearbox 2025
- Headline 2: Anggaran Percuma | Warranty 1 Tahun
- Description: Semak harga untuk Honda, Myvi, Vios & lain-lain. Free inspection sebelum repair.

**Landing Page:** `/harga-overhaul-gearbox`

**Why:** Search intent = high. People searching these terms are READY to get quotes.

---

### Day 6-7 (Monitoring & Optimization)
**Tasks:**
- [ ] Check cost per lead (target: < RM15 for Meta, < RM25 for Google)
- [ ] Identify winning ad creatives (CTR > 2%)
- [ ] Pause underperforming ads
- [ ] Set up retargeting campaigns (price checkers audience)
- [ ] Monitor form submission rate (target: 15-25%)

**Adjustments:**
- If CPL too high → test new ad copy or targeting
- If form views high but submissions low → simplify form
- If WhatsApp clicks high but no messages → check auto-trigger

---

## 7️⃣ POST-LAUNCH GROWTH

### Blog Publishing Cadence

**Month 1-2:** 2 blogs/week (build content foundation)  
**Month 3-6:** 1 blog/week (sustain momentum)  
**Month 7+:** 2 blogs/month (maintain + update old posts)

**Priority Order:**
1. **Week 1-2:** High-volume symptom pages (tersentak, delay, bunyi kasar)
2. **Week 3-4:** Model-specific pages (Myvi, City, Vios)
3. **Week 5-8:** Educational guides (maintenance, fluid change)
4. **Week 9+:** Long-tail keywords (X50 DCT, BMW 8HP, etc.)

**Why this matters:** Google favors sites that publish consistently. But quality > quantity. 1 great blog > 5 weak ones.

**Expected outcome:** 20 blogs = 500-1,000 organic visitors/month by Month 6.

---

### Local SEO Strategy

#### Google Business Profile (Critical)
**Setup:**
1. Claim "One X Transmission" listing
2. Add accurate address, phone, hours
3. Upload 20+ real workshop photos
4. Post weekly updates (new services, price updates, tips)
5. Collect 5-star reviews (ask every satisfied customer)
6. Add services: Gearbox Overhaul, CVT Repair, Auto Transmission, Manual Transmission
7. Enable messaging (instant WhatsApp replies)

**Why:** Google Business Profile = free exposure for "gearbox repair near me" searches.

**Expected outcome:** 50-100 Google Maps calls/month + 20-30 direction requests.

---

#### Local Citations (NAP Consistency)
**List business on:**
- Carlist.my (if they have service directory)
- Waze (business listing)
- Malaysia Yellow Pages
- Local community Facebook groups
- Carousell (offer free inspection posts)

**NAP = Name, Address, Phone (must be EXACT across all platforms)**

**Why:** Consistent NAP = Google trusts you more = higher local ranking.

---

### Backlink Strategy (White Hat Only)

**Month 1-3: Foundational Links**
1. **Guest Posts on Car Forums:**
   - Lowyat.net (AutoWorld forum)
   - PaulTan.org comments (if allowed)
   - Facebook car groups (educational posts with link)

2. **Local News / PR:**
   - Reach out to Selangor Journal, local news sites
   - Pitch story: "Workshop offers free gearbox inspection campaign"

3. **Supplier Links:**
   - Ask parts suppliers to link to you (if you use branded parts)

**Month 4-6: Content-Based Links**
1. **Infographics:**
   - Create "Cara Maintain Gearbox CVT" infographic
   - Share on Pinterest, car forums, WhatsApp groups

2. **YouTube Videos:**
   - Record short "Gearbox Repair Process" videos
   - Link to website in description

**Month 7-12: Authority Building**
1. **Partnerships:**
   - Partner with car insurance agents (referral program)
   - Collaborate with car detailing shops (cross-promotion)

2. **Media Mentions:**
   - Get featured in automotive blogs/podcasts
   - Sponsor local car meets (small budget, big exposure)

**Expected outcome:** 10-20 quality backlinks = Domain Authority increase = higher rankings.

---

### Performance Monitoring (GA4 Reports)

**Weekly Check:**
| Metric | Target | Action if Below |
|--------|--------|-----------------|
| Organic traffic | +10% week-over-week | Publish more content, improve on-page SEO |
| Form submissions | 15-25% of form views | Simplify form, add trust signals |
| Blog-to-form CTR | 10-15% | Improve CTA copy, add urgency |
| Bounce rate | < 60% | Improve page speed, content relevance |
| Avg. session duration | > 2 minutes | Add engaging content, videos |

**Monthly Check:**
| Metric | Target (Month 3) | Target (Month 6) |
|--------|------------------|------------------|
| Organic sessions | 500-800 | 1,500-2,500 |
| Lead conversions | 30-50 | 100-150 |
| Cost per lead | < RM20 | < RM15 |
| Organic CTR | 3-5% | 5-8% |
| Top 3 rankings | 3-5 keywords | 10-15 keywords |

**Content Optimization:**
- Identify top 5 converting blog posts → create similar content
- Identify high-traffic but low-conversion pages → add better CTAs
- Update old posts with new prices, current year (e.g., "2025 update")

---

### Growth Milestones (12-Month Roadmap)

**Month 1-3: Foundation**
- 20 blogs published
- 1,000 organic visitors/month
- 30-50 leads/month
- 5-10 keywords in top 10

**Month 4-6: Traction**
- 30-40 blogs total
- 2,500 organic visitors/month
- 80-120 leads/month
- 15-20 keywords in top 10
- Google Business Profile: 50+ reviews

**Month 7-12: Dominance**
- 50-60 blogs total
- 5,000 organic visitors/month
- 150-200 leads/month
- 30+ keywords in top 3
- Domain Authority: 25-30
- Featured snippets: 5-10

**Why this matters:** Slow and steady wins. Most competitors give up after 3 months. You stay consistent = you win.

---

## SUMMARY: SUCCESS FORMULA

### What Makes This Work for Malaysian Market:

1. **Price Transparency** — Malaysians want to know cost upfront. No "call for price" BS.

2. **Proof Over Promises** — Show real cases, real photos, real prices. No "award-winning workshop" claims.

3. **Immediate Response** — WhatsApp auto-trigger = instant gratification. Malaysians hate waiting.

4. **Mobile-First** — 80%+ traffic from phones. If site slow on mobile, you lose.

5. **Local Language** — Mix BM + English. Use terms they actually search (e.g., "tersentak", not "jerking").

6. **Content = SEO** — Every symptom page = keyword target = traffic + leads.

7. **Retargeting** — Most people don't buy first visit. Retarget = 2-3x conversion.

8. **Consistency** — Publish content weekly. Update prices annually. Stay active on GBP.

---

### Expected 6-Month ROI:

**Investment:**
- Website: RM2,000-3,000 (one-time)
- Content: RM200-300/blog × 30 = RM6,000-9,000
- Ads: RM50/day × 180 days = RM9,000
- SEO tools: RM200/month × 6 = RM1,200
**Total: ~RM20,000**

**Returns:**
- 100-150 leads/month @ 20% close rate = 20-30 customers/month
- Avg job value: RM4,000
- Revenue: RM80,000-120,000/month
**6-Month Revenue: RM480,000-720,000**

**ROI: 2,300-3,500%**

---

This is not theory. This is how you actually win in Malaysian automotive market. Stay real, stay transparent, stay consistent.

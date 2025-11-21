# SEO Optimization - 20/11/2025

## Implementation Checklist

### ✅ Phase 1: Meta Tags & Head Improvements - COMPLETE
- [x] Add meta descriptions (unique per page) ✓ All 9 pages
- [x] Add Open Graph tags (og:title, og:description, og:image, og:url) ✓
- [x] Add Twitter Card tags ✓
- [x] Add canonical URLs ✓
- [x] Add lang="ms" attribute to HTML tags ✓ Already present
- [x] Add theme-color meta tag ✓
- [x] Add touch icons references ✓ Homepage
- [x] DNS prefetch and preconnect tags ✓ All pages

### ✅ Phase 2: Performance Optimizations
- [ ] Add lazy loading to images (loading="lazy")
- [ ] Add width/height attributes to images
- [ ] Add preconnect/dns-prefetch for external resources
- [ ] Add resource hints for Google Fonts, GTM, Meta Pixel

### ✅ Phase 3: Structured Data (Schema.org)
- [ ] Add LocalBusiness schema (main business info)
- [ ] Add Service schema for each gearbox service
- [ ] Add FAQPage schema for FAQ sections
- [ ] Add Organization schema

### ✅ Phase 4: XML Sitemap & Robots - COMPLETE
- [x] Create sitemap.xml with all pages ✓ 11 URLs
- [x] Create robots.txt ✓
- [x] Add sitemap reference to robots.txt ✓

### 🔄 Phase 5: Content Improvements (Review Required)
- [ ] Review and fix heading hierarchy (H1-H6)
- [ ] Add/improve alt text for all images
- [ ] Add breadcrumb navigation with schema

---

## Implementation Log

### Page-Specific Meta Data

#### Homepage (index.html)
- **Title:** Harga Repair Gearbox Auto & Manual - Servis Gearbox Termurah Malaysia
- **Description:** Dapatkan harga servis & repair gearbox auto/manual terbaik di Malaysia. Overhaul gearbox Perodua, Honda, Toyota, Proton dari RM 350. WhatsApp untuk quotation PERCUMA.
- **Keywords:** harga repair gearbox, servis gearbox auto, overhaul gearbox, repair gearbox kereta, harga tukar gearbox
- **OG Image:** /asset/logo/logo.png (or main hero image)

#### Perodua Page
- **Title:** Harga Repair Gearbox Perodua (Myvi, Axia, Bezza, Ativa) - Overhaul & Servis
- **Description:** Harga servis gearbox Perodua Myvi, Axia, Bezza, Ativa. Overhaul gearbox auto dari RM 2,500, servis minyak gearbox RM 350. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox perodua, overhaul gearbox myvi, servis gearbox axia, repair gearbox bezza

#### Honda Page
- **Title:** Harga Repair Gearbox Honda (City, Civic, Accord, Jazz, CR-V) - Overhaul & Servis
- **Description:** Harga servis gearbox Honda City, Civic, Accord, Jazz, CR-V. Overhaul gearbox auto dari RM 3,500, servis minyak gearbox RM 450. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox honda, overhaul gearbox city, servis gearbox civic, repair gearbox accord

#### Proton Page
- **Title:** Harga Repair Gearbox Proton (X50, X70, Saga, Persona, Exora) - Overhaul & Servis
- **Description:** Harga servis gearbox Proton X50, X70, Saga, Persona, Exora. Overhaul gearbox auto dari RM 2,800, servis minyak gearbox RM 380. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox proton, overhaul gearbox x50, servis gearbox x70, repair gearbox saga

#### Toyota Page
- **Title:** Harga Repair Gearbox Toyota (Vios, Camry, Vellfire, Alphard) - Overhaul & Servis
- **Description:** Harga servis gearbox Toyota Vios, Camry, Vellfire, Alphard. Overhaul gearbox auto dari RM 3,500, servis minyak gearbox RM 450. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox toyota, overhaul gearbox vios, servis gearbox camry, repair gearbox vellfire

#### Nissan Page
- **Title:** Harga Repair Gearbox Nissan (Almera, X-Trail, Serena) - Overhaul & Servis
- **Description:** Harga servis gearbox Nissan Almera, X-Trail, Serena. Overhaul gearbox CVT/auto dari RM 3,200, servis minyak gearbox RM 420. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox nissan, overhaul gearbox almera, servis gearbox x-trail, repair gearbox serena

#### BMW Page
- **Title:** Harga Repair Gearbox BMW (3 Series, 5 Series, X1, X3, X5) - Overhaul & Servis
- **Description:** Harga servis gearbox BMW 3 Series, 5 Series, X1, X3, X5. Overhaul gearbox auto dari RM 8,000, servis minyak gearbox RM 800. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox bmw, overhaul gearbox bmw, servis gearbox bmw, repair gearbox 3 series

#### Mercedes Page
- **Title:** Harga Repair Gearbox Mercedes (C-Class, E-Class, GLC, GLE) - Overhaul & Servis
- **Description:** Harga servis gearbox Mercedes C-Class, E-Class, GLC, GLE. Overhaul gearbox auto dari RM 9,000, servis minyak gearbox RM 850. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox mercedes, overhaul gearbox mercedes, servis gearbox c-class, repair gearbox e-class

#### Volkswagen Page
- **Title:** Harga Repair Gearbox Volkswagen (Polo, Passat, Tiguan) - Overhaul & Servis
- **Description:** Harga servis gearbox Volkswagen Polo, Passat, Tiguan. Overhaul gearbox DSG/auto dari RM 7,500, servis minyak gearbox RM 750. Diagnosis PERCUMA. Warranty 1 tahun.
- **Keywords:** harga repair gearbox volkswagen, overhaul gearbox vw, servis gearbox polo, repair gearbox tiguan

---

## Business Information for Schema

```json
{
  "businessName": "Harga Repair Gearbox",
  "telephone": "+60 10-202 0723",
  "email": "info@hargarepairgearbox.com",
  "address": {
    "addressCountry": "MY",
    "addressRegion": "Selangor",
    "addressLocality": "Klang Valley"
  },
  "priceRange": "RM 350 - RM 15,000",
  "services": [
    "Overhaul Gearbox Auto",
    "Servis Minyak Gearbox",
    "Diagnosis Gearbox",
    "Repair Gearbox Manual",
    "Tukar Clutch Pack",
    "Service Valve Body"
  ],
  "brands": [
    "Perodua", "Honda", "Toyota", "Proton", "Nissan", 
    "BMW", "Mercedes-Benz", "Volkswagen"
  ],
  "openingHours": "Mo-Su 09:00-18:00",
  "paymentAccepted": ["Cash", "Credit Card", "Online Banking"]
}
```

---

## Resource Hints to Add

```html
<!-- DNS Prefetch -->
<link rel="dns-prefetch" href="//fonts.googleapis.com">
<link rel="dns-prefetch" href="//www.googletagmanager.com">
<link rel="dns-prefetch" href="//connect.facebook.net">
<link rel="dns-prefetch" href="//wa.me">

<!-- Preconnect -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
```

---

## Status: READY TO IMPLEMENT
Starting implementation now...

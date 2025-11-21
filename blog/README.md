# Blog System Documentation

## Overview
Modular blog system for HargaRepairGearbox.com with Apple/Tesla-inspired minimalist design.

## Structure
```
blog/
├── blog-data.json         # Blog posts metadata and configuration
├── blog-script.js         # Dynamic loading and filtering logic
└── posts/
    └── [slug].html        # Individual blog post HTML files
```

## Features
✅ **Dynamic Loading** - Posts loaded from JSON, easy to add/remove
✅ **Category Filtering** - Filter by Maintenance, Diagnosis, Education, etc.
✅ **Search Functionality** - Real-time search across titles, excerpts, and tags
✅ **Featured Posts** - Highlight important articles
✅ **SEO Optimized** - Full meta tags, Open Graph, Twitter Cards, Schema.org
✅ **Analytics Tracking** - Facebook Pixel + GTM events for all interactions
✅ **Responsive Design** - Mobile-first, works on all devices
✅ **Fast Loading** - Lazy loading images, DNS prefetch, optimized assets

## How to Add New Blog Posts

### Step 1: Add Post Metadata to `blog-data.json`
```json
{
  "id": "your-post-slug",
  "title": "Your Post Title",
  "slug": "your-post-slug",
  "excerpt": "Short description (150-200 characters)",
  "category": "Maintenance|Diagnosis|Education|Pricing|Car Specific",
  "author": "One X Transmission",
  "date": "2025-11-20",
  "readTime": "5 min",
  "image": "../asset/general-images/[image-name].png",
  "featured": true/false,
  "tags": ["Tag1", "Tag2", "Tag3"]
}
```

### Step 2: Create HTML File in `blog/posts/`
1. Copy `blog/posts/cara-maintain-gearbox-cvt.html` as template
2. Rename to `your-post-slug.html`
3. Update:
   - Meta tags (title, description, keywords, OG tags)
   - Article content (h1, h2, paragraphs, lists)
   - Related articles links
   - Breadcrumb category
   - Schema.org structured data

### Step 3: Update Assets
- Add images to `asset/general-images/` or create post-specific folder
- Optimize images (WebP, compressed JPEGs)
- Use descriptive alt text

### Step 4: Test
1. Open `blog.html` → Check post appears in grid
2. Click post → Verify content displays correctly
3. Test filters → Ensure category filtering works
4. Search → Test search functionality
5. Mobile → Check responsive design

## Categories

### Maintenance
Tips for servicing and maintaining gearboxes (CVT, auto, manual)

### Diagnosis
How to identify and diagnose gearbox problems

### Education
Technical knowledge about gearbox types, comparisons, how things work

### Pricing
Cost guides, repair vs recon decisions, price comparisons

### Car Specific
Model-specific guides (Myvi, Honda City, X50, etc.)

## Content Best Practices

### Title Format
- Keep under 60 characters
- Include keywords naturally
- Use numbers when applicable ("7 Tips", "5 Signs")
- Make it benefit-driven

### Excerpt
- 150-200 characters
- Tease the main benefit
- Include specific details (prices, models)
- End with call to action

### Content Structure
```
1. Lead paragraph (hook + problem statement)
2. Main content (H2 sections with actionable tips)
3. Visual elements (info boxes, tables, lists)
4. Examples with real prices
5. Conclusion with TL;DR
6. CTA (WhatsApp or pricing check)
7. Related articles
```

### Writing Guidelines
- **NO EMOJIS**: Do not use emojis in blog post content (💡⚠️🔧✓📊💰 etc.)
  - Emojis cause display issues across different devices
  - Use plain text for headings and content instead
  - Example: Use "Penting:" instead of "⚠️ Penting:"
- Keep language conversational but professional
- Use Malay language naturally (avoid overly formal Bahasa Melayu)
- Include specific prices and real examples
- Break up text with subheadings, lists, and tables

### SEO Guidelines
- **Title Tag:** 50-60 characters with primary keyword
- **Meta Description:** 150-160 characters with secondary keywords
- **H1:** Match title or close variation
- **H2:** Use long-tail keywords naturally
- **Internal Links:** Link to relevant brand pages, pricing pages
- **Images:** Alt text with descriptive keywords
- **Schema:** Article structured data with all fields

## Design System

### Colors
- Primary: `#00A86B` (Green)
- Dark: `#1a1a1a` (Text)
- Grey: `#666666` (Secondary text)
- Light Grey: `#f5f5f5` (Backgrounds)
- Border: `#e0e0e0`

### Typography
- Font: Inter (Google Fonts)
- H1: 2.5rem / 700 weight
- H2: 1.75rem / 700 weight
- H3: 1.4rem / 600 weight
- Body: 1.125rem / 400 weight
- Line height: 1.8

### Components

#### Info Boxes
```html
<div class="info-box">
    <h4>Title</h4>
    <ul>
        <li>Point 1</li>
        <li>Point 2</li>
    </ul>
</div>
```

#### Warning Boxes
```html
<div class="warning-box">
    <h4>Warning Title</h4>
    <p>Warning text</p>
</div>
```

#### Price Boxes
```html
<div class="price-box">
    <h4>Pricing Info</h4>
    <ul>
        <li><strong>Item:</strong> RM XXX</li>
    </ul>
</div>
```

#### Checklist Boxes
```html
<div class="checklist-box">
    <h4>Checklist</h4>
    <ul>
        <li>Item to check</li>
    </ul>
</div>
```

## Analytics Events Tracked

### Page Views
- `BlogPageView` - Blog listing page load
- `BlogPostView` - Individual post view with slug

### Interactions
- `BlogFilter` - Category filter selection
- `BlogSearch` - Search query with results count
- `BlogPostClick` - Click on blog card with slug + title

### Conversions
- WhatsApp clicks from blog posts
- Semak Harga button clicks
- Related article clicks

## Performance Optimization

### Implemented
✅ DNS prefetch for external domains
✅ Preconnect for fonts
✅ Lazy loading for images below fold
✅ Async loading for GTM/Facebook Pixel
✅ Minified CSS (in production)
✅ CDN for static assets (fonts)

### Future Enhancements
- [ ] WebP image format support
- [ ] Service Worker for offline reading
- [ ] Infinite scroll for blog listing
- [ ] Reading progress indicator
- [ ] Social share buttons
- [ ] Comments system integration
- [ ] Email newsletter signup

## Maintenance

### Monthly Tasks
- [ ] Check for broken links
- [ ] Update pricing in old posts
- [ ] Review analytics for popular topics
- [ ] Identify content gaps
- [ ] Update featured posts rotation

### Quarterly Tasks
- [ ] SEO audit (keywords, rankings)
- [ ] Performance audit (Core Web Vitals)
- [ ] Content refresh (update dates, prices)
- [ ] Add new categories if needed
- [ ] A/B test headlines on low performers

## Content Calendar Ideas

### Maintenance Series
- Cara maintain gearbox CVT ✅
- Bila tukar minyak gearbox
- Tips servis gearbox manual
- Cara check ATF level sendiri

### Diagnosis Series
- 5 tanda gearbox rosak ✅
- Bunyi gearbox & maknanya
- Cara diagnose CVT problem
- Warning lights gearbox explained

### Model-Specific Guides
- Masalah gearbox Myvi ✅
- Honda City gearbox common issues
- Proton X50 DCT problems
- Toyota Vios CVT guide

### Pricing Guides
- Overhaul vs Recon comparison ✅
- Harga repair by symptom
- Hidden costs dalam gearbox repair
- Insurance claims for gearbox

### Education
- CVT vs Auto comparison ✅
- How gearbox works (ELI5)
- DSG/DCT explained
- Hybrid gearbox systems

## Support
For technical issues or questions:
- WhatsApp: +60 10-202 0723
- Reference this README when adding content
- Test all changes on local before deploying

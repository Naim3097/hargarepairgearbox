# 📝 How to Add New Blog Posts

This guide will show you exactly how to add new blog articles to your website.

---

## 🎯 Quick Overview

Your blog system has 3 main parts:
1. **`blog/blog-data.json`** - Database of all posts (metadata only)
2. **`blog/posts/*.html`** - Individual blog article pages (full content)
3. **`blog.html`** - Auto-loads and displays all posts from JSON

---

## ✍️ Step-by-Step: Adding a New Blog Post

### **STEP 1: Add Post to JSON Database**

Open `blog/blog-data.json` and add your new post in the `"posts"` array:

```json
{
  "id": "your-article-slug",
  "title": "Your Article Title Here",
  "slug": "your-article-slug",
  "excerpt": "Short 150-200 character description that appears on blog cards",
  "category": "Maintenance",
  "author": "One X Transmission",
  "date": "2025-11-20",
  "readTime": "5 min",
  "image": "../asset/general-images/your-image.png",
  "featured": false,
  "tags": ["Tag1", "Tag2", "Tag3"]
}
```

#### **Field Explanations:**

| Field | Description | Example |
|-------|-------------|---------|
| `id` | Unique identifier (use slug) | `"cara-servis-gearbox"` |
| `title` | Full article title | `"Cara Servis Gearbox Auto"` |
| `slug` | URL-friendly version (lowercase, dashes) | `"cara-servis-gearbox"` |
| `excerpt` | Short description (150-200 chars) | `"Panduan lengkap servis gearbox..."` |
| `category` | Must match existing categories | `"Maintenance"`, `"Diagnosis"`, `"Education"`, `"Pricing"`, `"Car Specific"` |
| `author` | Author name | `"One X Transmission"` |
| `date` | Publish date (YYYY-MM-DD) | `"2025-11-20"` |
| `readTime` | Estimated reading time | `"5 min"`, `"8 min"` |
| `image` | Featured image path | `"../asset/general-images/image.png"` |
| `featured` | Show in featured section? | `true` or `false` |
| `tags` | Keywords for search (3-5 tags) | `["CVT", "Honda", "Maintenance"]` |

#### **Available Categories:**
- `Maintenance` - Servis & maintenance tips
- `Diagnosis` - Cara diagnose masalah
- `Education` - Pengetahuan am gearbox
- `Pricing` - Info harga & kos
- `Car Specific` - Panduan specific car models

---

### **STEP 2: Create HTML Article File**

1. **Copy the template:**
   - Duplicate `blog/posts/cara-maintain-gearbox-cvt.html`
   - Rename to your slug: `blog/posts/your-article-slug.html`

2. **Update the metadata** (lines 1-100):

```html
<meta name="description" content="Your article description">
<meta name="keywords" content="keyword1, keyword2, keyword3">

<meta property="og:title" content="Your Article Title">
<meta property="og:description" content="Your description">
<meta property="og:url" content="https://hargarepairgearbox.com/blog/posts/your-article-slug.html">

<title>Your Article Title — Panduan Lengkap 2025</title>

<!-- Update Facebook Pixel tracking -->
fbq('trackCustom', 'BlogPostView', {postSlug: 'your-article-slug'});

<!-- Update Schema.org structured data -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Your Article Title",
  "description": "Your description",
  "datePublished": "2025-11-20"
}
</script>
```

3. **Update article content:**

Replace hero section:
```html
<div class="article-meta">
    <span class="article-category">Your Category</span>
    <span class="meta-divider">•</span>
    <span class="article-date">20 November 2025</span>
    <span class="meta-divider">•</span>
    <span class="article-read-time">5 min bacaan</span>
</div>
<h1>Your Article Title</h1>
<p class="article-lead">Your compelling lead paragraph</p>
```

4. **Write your content** using these components:

#### **Info Box (Blue - Educational)**
```html
<div class="info-box">
    <h4>💡 Title</h4>
    <p>Your informative text here</p>
</div>
```

#### **Warning Box (Orange - Caution)**
```html
<div class="warning-box">
    <h4>⚠️ Warning Title</h4>
    <p>Important warning or caution</p>
</div>
```

#### **Price Box (Green - Pricing Info)**
```html
<div class="price-box">
    <h4>💰 Pricing Information</h4>
    <ul>
        <li>Item 1: RM500 - RM800</li>
        <li>Item 2: RM1,000 - RM1,500</li>
    </ul>
</div>
```

#### **Checklist Box (Purple - Action Items)**
```html
<div class="checklist-box">
    <h4>✅ Checklist Title</h4>
    <ol>
        <li>Step one</li>
        <li>Step two</li>
        <li>Step three</li>
    </ol>
</div>
```

#### **Basic Content Elements**
```html
<!-- Headers -->
<h2>Main Section Title</h2>
<h3>Subsection Title</h3>

<!-- Paragraph -->
<p>Your paragraph text with <strong>bold text</strong> and <em>italic</em>.</p>

<!-- Lists -->
<ul>
    <li>Bullet point 1</li>
    <li>Bullet point 2</li>
</ul>

<ol>
    <li>Numbered item 1</li>
    <li>Numbered item 2</li>
</ol>

<!-- Table -->
<table>
    <tr>
        <td><strong>Label</strong></td>
        <td>Value</td>
    </tr>
    <tr>
        <td><strong>Another Label</strong></td>
        <td>Another Value</td>
    </tr>
</table>

<!-- Images -->
<img src="../../asset/general-images/your-image.png" alt="Description" class="article-featured-image">
```

5. **Update related articles** (bottom of article):

```html
<div class="related-grid">
    <a href="related-article-1.html" class="related-card">
        <img src="../../asset/general-images/image1.png" alt="Article 1">
        <h3>Related Article Title 1</h3>
        <p>Short description</p>
    </a>
    <a href="related-article-2.html" class="related-card">
        <img src="../../asset/general-images/image2.png" alt="Article 2">
        <h3>Related Article Title 2</h3>
        <p>Short description</p>
    </a>
    <a href="related-article-3.html" class="related-card">
        <img src="../../asset/general-images/image3.png" alt="Article 3">
        <h3>Related Article Title 3</h3>
        <p>Short description</p>
    </a>
</div>
```

---

### **STEP 3: Test Your New Post**

1. Save both files (`blog-data.json` and your new HTML file)
2. Open `blog.html` in browser
3. Your new post should appear in the blog grid
4. Click the card to test the article page
5. Check:
   - ✅ Title displays correctly
   - ✅ Category filter works
   - ✅ Search finds your article
   - ✅ Images load
   - ✅ Related articles link correctly
   - ✅ WhatsApp button works
   - ✅ Mobile responsive

---

## 🎨 Content Writing Tips

### **Title Best Practices:**
- Keep under 60 characters for SEO
- Include main keyword
- Make it specific and actionable
- Examples:
  - ✅ "5 Tanda Gearbox Myvi Nak Rosak"
  - ✅ "Cara Tukar Minyak CVT Honda City"
  - ❌ "Gearbox Tips" (too vague)

### **Excerpt Best Practices:**
- 150-200 characters
- Include a benefit or promise
- End with action or curiosity
- Example: "Gearbox CVT sensitif. Ikuti 7 tips ini untuk tahan 200,000km tanpa masalah."

### **Content Structure:**
1. **Hook** - Start with relatable problem
2. **Promise** - Tell them what they'll learn
3. **Content** - Deliver value with clear sections
4. **Proof** - Use real prices, examples, data
5. **CTA** - End with clear next action

### **Use Real Data:**
- Include actual prices: "RM2,500 - RM3,500"
- Specific numbers: "Every 40,000km"
- Real car models: "Myvi Gen 3, City GM6"
- Makes content trustworthy

---

## 📷 Images

### **Where to Put Images:**
- Store in: `asset/general-images/`
- Use existing images or add new ones
- Recommended size: 1200x630px
- Format: JPG or PNG
- Keep file size under 500KB

### **Current Available Images:**
- `Servis Minyak Gearbox.png` - For maintenance topics
- `Diagnosis Gearbox.jpeg` - For diagnosis/troubleshooting
- `Overhaul Gearbox.jpeg` - For repair/overhaul topics

---

## 🔍 SEO Checklist

For every new blog post, make sure you have:

- [ ] Unique title with main keyword
- [ ] Meta description (150-160 characters)
- [ ] 3-5 relevant keywords in meta keywords
- [ ] Open Graph tags (og:title, og:description, og:image)
- [ ] Twitter Card tags
- [ ] Canonical URL
- [ ] Article Schema.org structured data
- [ ] Alt text on all images
- [ ] Internal links to related posts
- [ ] H2 and H3 headings with keywords

---

## 🚀 Quick Checklist Before Publishing

- [ ] Added post to `blog/blog-data.json`
- [ ] Created HTML file with correct slug name
- [ ] Updated all metadata (title, description, dates)
- [ ] Wrote compelling content with proper formatting
- [ ] Added info boxes, warnings, price boxes where relevant
- [ ] Included CTA section with WhatsApp link
- [ ] Updated related articles section
- [ ] Tested on blog.html (card appears)
- [ ] Tested article page (loads correctly)
- [ ] Checked mobile view
- [ ] All images load properly
- [ ] All links work

---

## 💡 Pro Tips

1. **Feature Your Best Posts**: Set `"featured": true` for top 3-4 articles
2. **Update Categories Count**: When adding posts, update count in categories section
3. **Use Consistent Voice**: Write like talking to a friend who needs help
4. **Include Prices**: Real pricing info builds trust
5. **Link Related Posts**: Keep visitors reading more articles
6. **Update Regularly**: Add 1-2 posts per week for best SEO
7. **Promote on WhatsApp**: Share new posts with customers

---

## 🆘 Troubleshooting

**Problem: New post doesn't appear on blog.html**
- Check JSON syntax (no missing commas/brackets)
- Make sure slug matches HTML filename
- Clear browser cache and refresh

**Problem: Images not loading**
- Check file path is correct: `../asset/general-images/`
- Make sure image file exists
- Check file name spelling (case-sensitive)

**Problem: Category filter not working**
- Ensure category name exactly matches one of the 5 categories
- Check capitalization (must match: Maintenance, Diagnosis, Education, Pricing, Car Specific)

**Problem: Search can't find post**
- Check title, excerpt, tags in JSON
- Make sure no typos in searchable fields

---

## 📊 Recommended Content Calendar

Week 1-2: Create foundational content
- Maintenance tips (CVT, Auto, Manual)
- Common problems & diagnosis
- Service schedules

Week 3-4: Car-specific content  
- Myvi gearbox issues
- City CVT problems
- Vios maintenance

Week 5-6: Educational content
- CVT vs Auto comparison
- How gearbox works
- Types of gearbox

Week 7-8: Pricing & decision guides
- Overhaul vs Recon
- When to repair vs replace
- Cost breakdowns

---

## 📞 Need Help?

If you're stuck or need content ideas, just message on WhatsApp and I'll guide you through it!

---

**Last Updated**: 20 November 2025
**Version**: 1.0

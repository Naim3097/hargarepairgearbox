# Brand Pages - Project Structure

## 📁 Modular Architecture

This project uses a modular structure for easy maintenance and scalability.

```
hargarepairgearbox/
├── pages/
│   └── brands/
│       ├── honda.html          # Honda brand page (template)
│       ├── toyota.html         # Toyota brand page
│       ├── perodua.html        # Perodua brand page
│       ├── proton.html         # Proton brand page
│       ├── bmw.html            # BMW brand page
│       ├── mercedes.html       # Mercedes brand page
│       ├── volkswagen.html     # Volkswagen brand page
│       └── nissan.html         # Nissan brand page
│
├── asset/
│   └── car-brands/
│       ├── honda-logo.png
│       ├── toyota-logo.png
│       ├── perodua-logo.png
│       ├── proton-logo.png
│       ├── bmw-logo.png
│       ├── mercedes-logo.png
│       ├── volkswagen-logo.png
│       ├── nissan-logo.png
│       └── [Brand]/
│           ├── Car Photos/      # 4 model images per brand
│           └── Services Card Photo/  # Service images
│
├── styles.css                  # Global CSS (universal)
├── script.js                   # Global JavaScript (if needed)
└── generate-brand-pages.ps1    # Script to generate brand pages

```

## 🎨 Design Philosophy

**Apple/Tesla Aesthetic:**
- Clean, minimal layouts
- Generous white space
- Smooth transitions
- No emojis
- Professional typography (Inter font)

## 🔧 Page Structure

Each brand page consists of:

1. **Hero Section** - Brand logo + "Harga Repair Gearbox [Brand]"
2. **Model Prices** - 4 popular models with price ranges + images
3. **Service Cards** - 4 services (Overhaul, Servis Minyak, Diagnosis, Lain-lain)
4. **FAQ Section** - 5 common gearbox problems (general, not model-specific)
5. **Quotation Form** - "Dapatkan Anggaran Kos Percuma" form
6. **CTA Section** - WhatsApp call-to-action

## 📝 How to Create/Update Brand Pages

### Option 1: Use the Generation Script (Recommended)

```powershell
# Run the script to generate all brand pages
.\generate-brand-pages.ps1
```

### Option 2: Manual Creation

1. Copy `pages/brands/honda.html` as template
2. Find & Replace:
   - "Honda" → "Toyota" (or other brand)
   - "honda" → "toyota" (lowercase)
   - Update model names in Section 2
   - Update logo path: `honda-logo.png` → `toyota-logo.png`
3. Update meta tags and title
4. Test the page

## 🖼️ Adding Visual Assets

For each brand, create folder structure:

```
asset/car-brands/[Brand]/
├── Car Photos/
│   ├── [Brand Model 1].jpg
│   ├── [Brand Model 2].jpg
│   ├── [Brand Model 3].jpg (can reuse)
│   └── [Brand Model 4].jpg (can reuse)
└── Services Card Photo/
    ├── Overhaul Gearbox.jpg
    ├── Servis Minyak Gearbox.png
    └── Diagnose.png
```

**Note:** Services can share the same images across brands.

## 🔗 URL Structure

- Main site: `hargarepairgearbox.com/`
- Brand pages: `hargarepairgearbox.com/pages/brands/honda.html`
- Future (with routing): `hargarepairgearbox.com/honda`

## ✅ Completed Brands

- ✅ Honda (with full assets)
- ✅ Toyota (template ready, needs assets)
- ✅ Perodua (template ready, needs assets)
- ✅ Proton (template ready, needs assets)
- ✅ BMW (template ready, needs assets)
- ✅ Mercedes (template ready, needs assets)
- ✅ Volkswagen (template ready, needs assets)
- ✅ Nissan (template ready, needs assets)

## 📊 Next Steps

1. **Add Visual Assets** - Car photos and service images for each brand
2. **Update Model Lists** - Specific models and prices for each brand
3. **Customize FAQs** - Brand-specific common problems (optional)
4. **Test Forms** - Verify WhatsApp integration works correctly
5. **SEO Optimization** - Update meta tags for each brand

## 🎯 Maintenance Tips

- **CSS Changes:** Edit `styles.css` (applies to all pages globally)
- **Page Content:** Edit individual brand HTML files in `pages/brands/`
- **Bulk Updates:** Modify `honda.html` template, then run generation script
- **New Brand:** Add to script array, run generation script

## 📱 Mobile Optimization

All pages are fully responsive:
- Breakpoint at 768px for tablets
- Single column layout on mobile
- Touch-friendly buttons and forms
- Optimized images

## 🚀 Performance

- Minimal CSS (inline critical styles)
- Optimized images (recommended)
- Fast load times
- No external dependencies except Google Fonts

---

**Last Updated:** November 19, 2025  
**Template Version:** 1.0  
**Maintained by:** Gearbox Specialist Malaysia Team

# Gearbox Specialist Malaysia — Landing Page

High-converting quotation landing page for Malaysian gearbox specialist workshop.

## 📋 Features

✅ **SEO Optimized**
- Semantic HTML5 structure
- Meta tags for search engines
- Open Graph tags for social sharing
- Structured data (Schema.org) for local business

✅ **Conversion Tracking**
- Meta Pixel (Facebook Ads) integration
- Google Tag Manager setup
- Custom event tracking for:
  - Page views
  - Form views
  - Form submissions (Lead conversion)
  - WhatsApp clicks
  - High engagement tracking (30s, 60s)
  - Form abandonment tracking

✅ **Form Features**
- Car brand & model input
- Gearbox type selection (CVT, Automatic, Manual, DCT, etc.)
- Symptom description
- Location tracking
- Phone number validation
- Auto-trigger WhatsApp message with form data
- Success message display

✅ **Mobile-First Design**
- Fully responsive layout
- Clean, minimal design
- Inter font family
- Color scheme: White, Dark Grey, Green (#00A86B)
- No icons/emojis as requested
- Touch-friendly buttons and forms

✅ **User Experience**
- Smooth scroll to form sections
- Floating WhatsApp button
- Sticky bottom CTA (shows when form not visible)
- Real workshop gallery with captions
- Transparent pricing table
- Symptom awareness education
- Social proof (testimonials)

## 🚀 Setup Instructions

### 1. Replace Tracking IDs

**Google Tag Manager:**
```javascript
// In index.html, line 21
'https://www.googletagmanager.com/gtm.js?id=GTM-XXXXXXX'
// Replace GTM-XXXXXXX with your actual GTM container ID
```

**Meta Pixel:**
```javascript
// In index.html, line 33
fbq('init', 'YOUR_PIXEL_ID');
// Replace YOUR_PIXEL_ID with your actual Facebook Pixel ID
```

### 2. Update WhatsApp Number

Replace all instances of `60123456789` with your actual WhatsApp number:

**Files to update:**
- `index.html` (line 297, 345)
- `script.js` (line 38)

Format: Country code + phone number (e.g., 60123456789 for Malaysia)

### 3. Add Real Workshop Images

Create an `images` folder and add these photos:
- `honda-city-cvt.jpg`
- `myvi-gearbox.jpg`
- `proton-saga.jpg`
- `toyota-vios.jpg`
- `nissan-almera.jpg`
- `bmw-dsg.jpg`
- `workshop-og.jpg` (for social media sharing)

**Recommended image sizes:**
- Gallery images: 600x400px
- OG image: 1200x630px

### 4. Optional: Backend Integration

To save form submissions to your database/CRM, uncomment and configure in `script.js`:

```javascript
// Line 50-54 in script.js
fetch('/api/quotation', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(formData)
});
```

## 📊 Conversion Events Tracked

### Meta Pixel Events:
1. `PageView` - Initial page load
2. `ViewContent` - Form section viewed
3. `Lead` - Form submission (main conversion)
4. `Contact` - WhatsApp button clicked
5. `HighEngagement` - User spent 30+ seconds
6. `VeryHighEngagement` - User spent 60+ seconds
7. `FormStarted` - User clicked into form field

### Google Tag Manager Events:
1. `form_view` - Quotation form viewed
2. `generate_lead` - Form submitted with car details
3. `whatsapp_click` - WhatsApp floating button clicked
4. `form_started` - User began filling form

## 🎯 Retargeting Audiences

Create these custom audiences in Meta Ads Manager:

1. **Form Viewers** - Tracked `ViewContent` event
2. **Form Starters** - Tracked `FormStarted` custom event
3. **High Intent** - Tracked `HighEngagement` (30s+)
4. **Converted Leads** - Tracked `Lead` event (exclude from retargeting)

## 📱 Testing Checklist

- [ ] Replace GTM container ID
- [ ] Replace Meta Pixel ID
- [ ] Update WhatsApp phone number
- [ ] Add real workshop images
- [ ] Test form submission
- [ ] Verify WhatsApp auto-trigger works
- [ ] Check mobile responsiveness
- [ ] Test all tracking events in browser console
- [ ] Verify GTM preview mode shows events
- [ ] Check Meta Pixel Helper extension

## 🌐 Deployment

1. Upload all files to your web hosting
2. Ensure folder structure:
   ```
   /
   ├── index.html
   ├── styles.css
   ├── script.js
   ├── README.md
   └── images/
       ├── honda-city-cvt.jpg
       ├── myvi-gearbox.jpg
       └── ... (other images)
   ```

3. Test the live URL
4. Set up SSL certificate (HTTPS required for tracking pixels)
5. Submit to Google Search Console
6. Create Meta Ads campaigns pointing to this page

## 💡 Marketing Tips

1. **Ad Copy Alignment** - Match your ad headlines with the hero section
2. **Landing Page URL** - Use clean URL like `yourworkshop.com/gearbox-repair`
3. **A/B Testing** - Test different hero headlines and CTA button text
4. **Follow-up** - Respond to WhatsApp inquiries within 5 minutes
5. **Retargeting** - Run reminder ads to form viewers who didn't submit

## 📈 Success Metrics

Track these KPIs:
- Landing page conversion rate (target: 15-25%)
- Form view to submission rate
- WhatsApp click-through rate
- Average time on page
- Mobile vs desktop performance
- Cost per lead (CPL)

## 🔧 Customization

### Change Primary Color:
In `styles.css`, line 12:
```css
--color-primary: #00A86B; /* Change to your brand color */
```

### Modify Phone Number Format:
In `script.js`, adjust regex pattern for different phone formats

### Add More Car Brands:
Update pricing table in `index.html` with additional rows

---

**Need Help?** Check browser console for tracking events or contact your web developer.

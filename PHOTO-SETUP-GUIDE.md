# Quick Guide: Adding Photos for Each Brand

## 📸 Folder Structure Template

When you get photos for a new brand, organize them like this:

### Example: Toyota

```
asset/
└── car-brands/
    └── Toyota/
        ├── Car Photos/
        │   ├── Toyota Vios.jpg
        │   ├── Toyota Camry.jpg
        │   └── (2 more - can reuse above)
        └── Services Card Photo/
            ├── Overhaul Gearbox.jpg      (share from Honda)
            ├── Servis Minyak Gearbox.png (share from Honda)
            └── Diagnose.png              (share from Honda)
```

## 🚀 Quick Setup Commands

### Create folder structure for ALL brands:

```powershell
# Run this to create all brand folders
$brands = @("Toyota", "Perodua", "Proton", "BMW", "Mercedes", "Volkswagen", "Nissan")

foreach ($brand in $brands) {
    New-Item -ItemType Directory -Path "asset\car-brands\$brand\Car Photos" -Force
    New-Item -ItemType Directory -Path "asset\car-brands\$brand\Services Card Photo" -Force
    Write-Host "Created folders for $brand" -ForegroundColor Green
}
```

### Copy service photos from Honda (reusable):

```powershell
$brands = @("Toyota", "Perodua", "Proton", "BMW", "Mercedes", "Volkswagen", "Nissan")

foreach ($brand in $brands) {
    Copy-Item "asset\car-brands\Honda\Services Card Photo\*" `
              "asset\car-brands\$brand\Services Card Photo\" -Force
    Write-Host "Copied service photos for $brand" -ForegroundColor Cyan
}
```

## 📋 What You Need per Brand

### Car Photos (Section 2 - Model Prices)
- **Minimum:** 2 photos (can reuse for 4 model cards)
- **Ideal:** 4 unique model photos
- **Size:** Landscape, 800x500px recommended
- **Format:** JPG or PNG

### Service Photos (Section 3 - Service Cards)
- **Already done!** Shared from Honda folder
- Overhaul Gearbox
- Servis Minyak Gearbox
- Diagnose

## ✅ Photo Checklist

### Priority 1: Malaysian Brands
- [ ] **Perodua** - Myvi, Axia (most popular)
- [ ] **Proton** - Saga, Persona
- [ ] **Toyota** - Vios, Camry

### Priority 2: Continental
- [ ] **BMW** - 320i, X1
- [ ] **Mercedes** - C-Class, E-Class
- [ ] **Volkswagen** - Polo, Passat
- [ ] **Nissan** - Almera, X-Trail

## 💡 Pro Tips

1. **Reuse Photos:**
   - Use 2 good photos, repeat for 4 cards
   - Service photos shared across ALL brands

2. **Placeholder Strategy:**
   - Pages work NOW with placeholders
   - Add real photos gradually
   - Update one brand at a time

3. **Photo Sources:**
   - Official brand websites
   - Stock photo sites (Unsplash, Pexels)
   - Your own workshop photos (best!)

4. **File Naming:**
   - Use clear names: "Toyota Vios.jpg"
   - Match brand name case: "Toyota" not "toyota"
   - Spaces OK in filenames

## 🔄 After Adding Photos

No need to regenerate pages! Just:
1. Add photos to brand folder
2. Refresh browser
3. Photos appear automatically

## 📱 Photo Specifications

**Model Cards:**
- Aspect ratio: 16:10 or 3:2
- Display size: 100% width x 160px height
- Object-fit: cover (crops to fit)
- Border radius: 8px

**Service Cards:**
- Aspect ratio: 16:9 or square
- Display size: 100% width x 200px height
- Object-fit: cover
- Border radius: 12px

## 🎯 Current Status

```
✅ Honda     - Complete with photos
⏳ Toyota    - Folder ready, needs photos
⏳ Perodua   - Folder ready, needs photos
⏳ Proton    - Folder ready, needs photos
⏳ BMW       - Folder ready, needs photos
⏳ Mercedes  - Folder ready, needs photos
⏳ VW        - Folder ready, needs photos
⏳ Nissan    - Folder ready, needs photos
```

---

Run the PowerShell commands above to create all folders, then just drop photos in!

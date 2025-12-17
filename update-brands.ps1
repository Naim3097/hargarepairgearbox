# Update remaining brand pages

$brands = @(
    @{Name="toyota"; DisplayName="Toyota"; Models="Toyota Vios, Toyota Camry, Toyota Vellfire, Toyota Alphard"},
    @{Name="nissan"; DisplayName="Nissan"; Models="Nissan Almera, Nissan X-Trail, Nissan Serena"},
    @{Name="bmw"; DisplayName="BMW"; Models="BMW 3 Series, BMW 5 Series, BMW X1, BMW X3, BMW X5"},
    @{Name="mercedes"; DisplayName="Mercedes"; Models="Mercedes C-Class, Mercedes E-Class, Mercedes GLC, Mercedes GLE"},
    @{Name="volkswagen"; DisplayName="Volkswagen"; Models="Volkswagen Polo, Volkswagen Passat, Volkswagen Tiguan"}
)

foreach ($brand in $brands) {
    $name = $brand.Name
    $displayName = $brand.DisplayName
    $models = $brand.Models
    $nameCapital = (Get-Culture).TextInfo.ToTitleCase($name)
    $file = "pages\brands\$name.html"
    
    Write-Host "Updating $displayName page..." -ForegroundColor Cyan
    
    $content = Get-Content $file -Raw -Encoding UTF8
    
    # Update service buttons
    $content = $content -replace "href=`"https://wa\.me/60102020723\?text=Saya%20nak%20tanya%20tentang%20Overhaul%20Gearbox%20$nameCapital`"[^>]*onclick=`"[^`"]*`"", "href=`"https://wa.me/601131051677?text=Model%20Kereta%3A%20$displayName%0A%0AHi%2C%20saya%20nak%20bertanya%20tentang%20Overhaul%20Gearbox.`""
    $content = $content -replace "href=`"https://wa\.me/60102020723\?text=Saya%20nak%20tanya%20tentang%20Servis%20Minyak%20Gearbox%20$nameCapital`"[^>]*onclick=`"[^`"]*`"", "href=`"https://wa.me/601131051677?text=Model%20Kereta%3A%20$displayName%0A%0AHi%2C%20saya%20nak%20bertanya%20tentang%20Servis%20Minyak%20Gearbox.`""
    $content = $content -replace "href=`"https://wa\.me/60102020723\?text=Saya%20nak%20book%20Diagnosis%20Gearbox%20$nameCapital%20percuma`"[^>]*onclick=`"[^`"]*`"", "href=`"https://wa.me/601131051677?text=Model%20Kereta%3A%20$displayName%0A%0AHi%2C%20saya%20nak%20bertanya%20tentang%20Diagnosis%20Gearbox.`""
    $content = $content -replace "href=`"https://wa\.me/60102020723\?text=Saya%20nak%20tanya%20tentang%20servis%20lain%20untuk%20$nameCapital`"[^>]*onclick=`"[^`"]*`"", "href=`"https://wa.me/601131051677?text=Model%20Kereta%3A%20$displayName%0A%0AHi%2C%20saya%20nak%20bertanya%20tentang%20Lain-lain%20Servis.`""
    
    # Add button CSS
    $content = $content -replace '(\.service-btn \{[^}]*margin-top: 8px;)', "`$1`n            border: none;`n            cursor: pointer;`n            font-family: inherit;"
    
    # Update form IDs
    $content = $content -replace "id=`"${nameCapital}QuotationForm`"", 'id="brandForm"'
    $content = $content -replace "onsubmit=`"handle${nameCapital}FormSubmit\(event\)`"", 'onsubmit="handleBrandFormSubmit(event)"'
    $content = $content -replace "for=`"${nameCapital}CarModel`"", 'for="brandCarModel"'
    $content = $content -replace "id=`"${nameCapital}CarModel`"", 'id="brandCarModel"'
    $content = $content -replace "for=`"${nameCapital}Problem`"", 'for="brandProblem"'
    $content = $content -replace "id=`"${nameCapital}Problem`"", 'id="brandProblem"'
    $content = $content -replace "for=`"${nameCapital}Location`"", 'for="brandLocation"'
    $content = $content -replace "id=`"${nameCapital}Location`"", 'id="brandLocation"'
    $content = $content -replace "id=`"${nameCapital}SuccessMessage`"", 'id="successMessage"'
    
    # Update placeholder
    $content = $content -replace "placeholder=`"Contoh: $nameCapital[^`"]*`"", "placeholder=`"Contoh: $models`""
    
    # Replace inline script
    $content = $content -replace '(?s)<script>\s*//\s*Mobile menu toggle.*?return false;\s*}\s*', ''
    $content = $content -replace '</body>', "    <script src=`"$name-script.js`"></script>`n</body>"
    
    # Save
    $content | Set-Content $file -Encoding UTF8 -NoNewline
    
    Write-Host "✓ $displayName page updated!" -ForegroundColor Green
}

Write-Host ""
Write-Host "All brand pages updated successfully!" -ForegroundColor Green

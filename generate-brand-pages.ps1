# Generate Brand Pages Script
# This script creates brand-specific pages from the Honda template

$brands = @(
    @{Name="Proton"; Models="Saga, Persona, Iriz, X50, X70"},
    @{Name="Perodua"; Models="Myvi, Axia, Bezza, Aruz"},
    @{Name="Toyota"; Models="Vios, Yaris, Camry, Hilux"},
    @{Name="BMW"; Models="320i, 520i, X1, X3, X5"},
    @{Name="Mercedes"; Models="C-Class, E-Class, GLA, GLC"},
    @{Name="Volkswagen"; Models="Polo, Golf, Passat, Tiguan"},
    @{Name="Nissan"; Models="Almera, X-Trail, Navara, Serena"}
)

# Read Honda template
$template = Get-Content "pages\brands\honda.html" -Raw

foreach ($brand in $brands) {
    $brandName = $brand.Name
    $brandLower = $brandName.ToLower()
    
    Write-Host "Generating $brandName page..." -ForegroundColor Green
    
    # Replace brand-specific content
    $content = $template `
        -replace 'Honda', $brandName `
        -replace 'honda', $brandLower `
        -replace 'HONDA', $brandName.ToUpper() `
        -replace 'Civic FC, City GM6, Jazz, BR-V', $brand.Models `
        -replace 'honda city gearbox problem, honda civic cvt repair', "$brandLower gearbox problem, $brandLower repair" `
        -replace "asset/car-brands/Honda/Car Photos/", "../../asset/car-brands/$brandName/Car Photos/" `
        -replace "asset/car-brands/Honda/Services Card Photo/", "../../asset/car-brands/$brandName/Services Card Photo/" `
        -replace "asset/car-brands/honda-logo.png", "../../asset/car-brands/$brandLower-logo.png" `
        -replace 'href="asset/logo/X.png"', 'href="../../asset/logo/X.png"' `
        -replace 'href="styles.css"', 'href="../../styles.css"' `
        -replace 'href="index.html"', 'href="../../index.html"' `
        -replace 'href="semak-harga.html"', 'href="../../semak-harga.html"' `
        -replace 'href="hubungi.html"', 'href="../../hubungi.html"'
    
    # Save to file
    $outputPath = "pages\brands\$brandLower.html"
    $content | Out-File -FilePath $outputPath -Encoding UTF8
    
    Write-Host "Created: $outputPath" -ForegroundColor Cyan
}

Write-Host "`nAll brand pages generated successfully!" -ForegroundColor Green
Write-Host "Pages created in: pages\brands\" -ForegroundColor Yellow

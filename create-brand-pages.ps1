# Script to create brand pages from Honda template

$brands = @(
    @{Name="Proton"; Models=@("Saga", "Persona", "X70", "X50")},
    @{Name="Nissan"; Models=@("Almera", "Sentra", "X-Trail", "Navara")},
    @{Name="BMW"; Models=@("320i", "520i", "X3", "X5")},
    @{Name="Mercedes"; Models=@("C-Class", "E-Class", "GLC", "GLE")},
    @{Name="Volkswagen"; Models=@("Polo", "Passat", "Tiguan", "Touran")}
)

foreach ($brand in $brands) {
    $brandName = $brand.Name
    $brandLower = $brandName.ToLower()
    $brandUpper = $brandName.ToUpper()
    $models = $brand.Models
    
    Write-Host "Creating $brandName page..."
    
    # Copy honda.html
    Copy-Item "honda.html" "$brandLower.html" -Force
    
    # Read content
    $content = Get-Content "$brandLower.html" -Raw
    
    # Replace brand names
    $content = $content -replace 'Honda Civic FC', "$brandName $($models[0])"
    $content = $content -replace 'Honda City GM6', "$brandName $($models[1])"
    $content = $content -replace 'Honda Jazz', "$brandName $($models[2])"
    $content = $content -replace 'Honda BR-V', "$brandName $($models[3])"
    $content = $content -replace 'Honda', $brandName
    $content = $content -replace 'honda', $brandLower
    $content = $content -replace 'HONDA', $brandUpper
    
    # Replace image paths with placeholders
    $content = $content -replace 'asset/car-brands/Honda/Car Photos/Honda Civic.jpg', "https://via.placeholder.com/400x200/f5f5f5/999999?text=$brandName"
    $content = $content -replace 'asset/car-brands/Honda/Car Photos/Honda City.jpg', "https://via.placeholder.com/400x200/f5f5f5/999999?text=$brandName"
    $content = $content -replace 'asset/car-brands/Honda/Services Card Photo/Overhaul Gearbox.jpg', 'https://via.placeholder.com/400x200/00A86B/ffffff?text=Overhaul'
    $content = $content -replace 'asset/car-brands/Honda/Services Card Photo/Servis Minyak Gearbox.png', 'https://via.placeholder.com/400x200/1976d2/ffffff?text=Service'
    $content = $content -replace 'asset/car-brands/Honda/Services Card Photo/Diagnose.png', 'https://via.placeholder.com/400x200/f59e0b/ffffff?text=Diagnosis'
    
    # Write content
    Set-Content "$brandLower.html" $content
    
    Write-Host "$brandName page created successfully!"
}

Write-Host "`nAll brand pages created!"

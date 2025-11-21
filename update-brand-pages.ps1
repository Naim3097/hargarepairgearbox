# Auto-update all brand pages with Malaysian market data
# This script updates models, pricing, and FAQ problems for accuracy

# Source the brand data
. .\brand-data-malaysia.ps1

function Update-BrandPage {
    param(
        [string]$BrandName,
        [hashtable]$Data
    )
    
    $brandLower = $BrandName.ToLower()
    $filePath = "pages\brands\$brandLower.html"
    
    if (-not (Test-Path $filePath)) {
        Write-Host "❌ File not found: $filePath" -ForegroundColor Red
        return
    }
    
    Write-Host "🔄 Updating $BrandName..." -ForegroundColor Yellow
    
    $content = Get-Content $filePath -Raw
    
    # Update Models Section
    $modelsHtml = ""
    foreach ($model in $Data.Models) {
        $modelsHtml += @"
                <div class="model-card">
                    <img src="https://via.placeholder.com/400x250/f5f5f5/666666?text=$BrandName+$($model.Name)" alt="$BrandName $($model.Name)" class="model-image">
                    <div class="model-content">
                        <h3>$BrandName $($model.Name)</h3>
                        <p class="model-type">$($model.Type)</p>
                        <div class="price">$($model.Price)</div>
                        <p class="price-note">$($model.Note)</p>
                    </div>
                </div>
                
"@
    }
    
    # Replace models grid
    $content = $content -replace '(?s)(<div class="models-grid">).*?(</div>\s*</div>\s*</section><!-- Section 3)', "`$1`n$modelsHtml            </div>`n        </div>`n    </section>`n`n    <!-- Section 3"
    
    # Update Service Pricing
    $content = $content -replace 'RM \d{1,2},\d{3} - \d{1,2},\d{3}(?=</p>\s*<p>Full teardown)', $Data.Services.Overhaul
    $content = $content -replace 'RM \d{3} - \d{3,4}(?=</p>\s*<p>Flush minyak)', $Data.Services.Servis
    
    # Update FAQ Problems
    $faqHtml = ""
    $problemIndex = 0
    foreach ($problem in $Data.Problems) {
        $faqHtml += @"
                <div class="faq-item">
                    <div class="faq-question" onclick="toggleFaq(this)">
                        <h3>$($problem.Title)</h3>
                        <span class="faq-icon">+</span>
                    </div>
                    <div class="faq-answer">
                        <div class="answer-section">
                            <strong>Punca</strong>
                            <p>$($problem.Punca)</p>
                        </div>
                        <div class="answer-section">
                            <strong>Apa Perlu Buat</strong>
                            <p>$($problem.Action)</p>
                        </div>
                        <div class="answer-section">
                            <strong>Anggaran Kos</strong>
                            <p>$($problem.Cost)</p>
                        </div>
                    </div>
                </div>
                
"@
        $problemIndex++
        if ($problemIndex -ge 5) { break }  # Max 5 problems
    }
    
    # Add generic problems if less than 5
    while ($problemIndex -lt 5) {
        $genericProblems = @(
            @{Title="Bunyi bising dari gearbox"; Punca="Bearing gearbox haus atau minyak ATF kurang/kotor. Bunyi biasa dengar masa slow speed atau tukar gear."; Action="Check tahap minyak ATF & condition. Kalau minyak okay tapi masih bising, kena buka gearbox untuk check bearing."; Cost="Top up minyak: RM 200-400. Overhaul dengan bearing: $($Data.Services.Overhaul)."},
            @{Title="Gearbox overheat (warning light)"; Punca="Cooler tersumbat, minyak breakdown, atau friction material kotor. Overheat boleh cause kerosakan besar."; Action="Jangan teruskan drive bila warning light menyala. Tow ke workshop untuk inspection & clean cooler."; Cost="Service dengan clean cooler: RM 600-900. Kalau ada damage: $($Data.Services.Overhaul)."}
        )
        
        if ($problemIndex -lt 5) {
            $prob = $genericProblems[$problemIndex - $Data.Problems.Count]
            $faqHtml += @"
                <div class="faq-item">
                    <div class="faq-question" onclick="toggleFaq(this)">
                        <h3>$($prob.Title)</h3>
                        <span class="faq-icon">+</span>
                    </div>
                    <div class="faq-answer">
                        <div class="answer-section">
                            <strong>Punca</strong>
                            <p>$($prob.Punca)</p>
                        </div>
                        <div class="answer-section">
                            <strong>Apa Perlu Buat</strong>
                            <p>$($prob.Action)</p>
                        </div>
                        <div class="answer-section">
                            <strong>Anggaran Kos</strong>
                            <p>$($prob.Cost)</p>
                        </div>
                    </div>
                </div>
                
"@
        }
        $problemIndex++
    }
    
    # Replace FAQ container
    $content = $content -replace '(?s)(<div class="faq-container">).*?(</div>\s*</div>\s*</section>\s*<!-- Quotation Form)', "`$1`n$faqHtml            </div>`n        </div>`n    </section>`n`n    <!-- Quotation Form"
    
    # Save updated content
    $content | Set-Content -Path $filePath -Encoding UTF8
    
    Write-Host "✅ $BrandName updated successfully!" -ForegroundColor Green
}

# Update all brands
Write-Host "`n🚀 Starting auto-update of all brand pages...`n" -ForegroundColor Cyan

foreach ($brand in $brandData.Keys) {
    Update-BrandPage -BrandName $brand -Data $brandData[$brand]
    Start-Sleep -Milliseconds 500
}

Write-Host "`n✨ All brand pages updated with Malaysian market data!" -ForegroundColor Green
Write-Host "📊 Updated: Models, Pricing, Common Problems" -ForegroundColor Cyan
Write-Host "🔍 Please review the pages to ensure accuracy`n" -ForegroundColor Yellow

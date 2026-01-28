# Download Offline Dependencies for Stat Logger
# Run this script from the "data loger" directory

Write-Host "Creating Offline Stat Logger..." -ForegroundColor Cyan
Write-Host ""

# Create directories
Write-Host "Creating directories..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "assets/css" | Out-Null
New-Item -ItemType Directory -Force -Path "assets/js" | Out-Null
Write-Host "✓ Directories created" -ForegroundColor Green
Write-Host ""

# Download DaisyUI CSS
Write-Host "Downloading DaisyUI CSS..." -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri "https://cdn.jsdelivr.net/npm/daisyui@4.6.0/dist/full.min.css" -OutFile "assets/css/daisyui.min.css"
    Write-Host "✓ DaisyUI downloaded ($(((Get-Item 'assets/css/daisyui.min.css').Length / 1KB).ToString('0.0')) KB)" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed to download DaisyUI" -ForegroundColor Red
}
Write-Host ""

# Download Chart.js
Write-Host "Downloading Chart.js..." -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri "https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js" -OutFile "assets/js/chart.min.js"
    Write-Host "✓ Chart.js downloaded ($(((Get-Item 'assets/js/chart.min.js').Length / 1KB).ToString('0.0')) KB)" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed to download Chart.js" -ForegroundColor Red
}
Write-Host ""

# Download Tailwind CSS standalone
Write-Host "Downloading Tailwind CSS..." -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri "https://cdn.tailwindcss.com/3.4.1" -OutFile "assets/js/tailwind.min.js"
    Write-Host "✓ Tailwind CSS downloaded ($(((Get-Item 'assets/js/tailwind.min.js').Length / 1KB).ToString('0.0')) KB)" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed to download Tailwind CSS" -ForegroundColor Red
}
Write-Host ""

# Summary
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Download Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Files downloaded to:" -ForegroundColor Yellow
Write-Host "  assets/css/daisyui.min.css"
Write-Host "  assets/js/chart.min.js"
Write-Host "  assets/js/tailwind.min.js"
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Open index-offline.html in your browser"
Write-Host "2. The app will now work completely offline!"
Write-Host ""
Write-Host "Note: Google Fonts (Inter) will use system fallback fonts offline." -ForegroundColor Gray
Write-Host "      This is fine - the app will still look great!" -ForegroundColor Gray

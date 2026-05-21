# ==============================================================================
# MatoshriCatPrep Codebase Migration & Cleanup Script
# Run this script in PowerShell to complete the organization & remove redundant files.
# ==============================================================================

Write-Host "Starting Workspace Migration & Cleanup..." -ForegroundColor Cyan

# 1. Ensure assets directory exists
if (-not (Test-Path "assets")) {
    New-Item -ItemType Directory -Force -Path "assets" | Out-Null
    Write-Host "[+] Created 'assets/' directory." -ForegroundColor Green
}

# 2. Copy binary logo to the assets folder
if (Test-Path "Logo.png") {
    Copy-Item "Logo.png" "assets/logo.png" -Force
    Write-Host "[+] Copied Logo.png -> assets/logo.png" -ForegroundColor Green
}

# 3. Copy fallback questions database to the js folder
if (Test-Path "questions.js") {
    Copy-Item "questions.js" "js/questions.js" -Force
    Write-Host "[+] Copied questions.js -> js/questions.js" -ForegroundColor Green
}

# 4. Copy fallback questions SQL insert script to the database folder
if (Test-Path "insert_questions.sql") {
    Copy-Item "insert_questions.sql" "database/insert_questions.sql" -Force
    Write-Host "[+] Copied insert_questions.sql -> database/insert_questions.sql" -ForegroundColor Green
}

# 5. List of redundant root files to delete
$filesToDelete = @(
    "About.html",
    "FDS.html",
    "IOT.html",
    "Math.html",
    "OOP.html",
    "style.css",
    "quiz_styles.css",
    "galaxy.js",
    "quiz.js",
    "process.py",
    "db_migration.sql",
    "supabase_setup.sql",
    "Logo.png",
    "questions.js",
    "insert_questions.sql"
)

Write-Host "`nCleaning up redundant files in root..." -ForegroundColor Yellow

foreach ($file in $filesToDelete) {
    if (Test-Path $file) {
        Remove-Item $file -Force
        Write-Host "[-] Deleted redundant file: $file" -ForegroundColor Gray
    }
}

Write-Host "`nMigration and Cleanup Complete! Your workspace is fully optimized." -ForegroundColor Green

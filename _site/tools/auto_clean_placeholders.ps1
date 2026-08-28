$root = 'c:\Users\Owner\Documents\degreartcode data\BlogUsage\LatestSearchAI\wesearchai-main'
$excludeDirs = @('adminUseOnly','assets','node_modules','_site')
$timestamp = (Get-Date).ToString('yyyyMMddHHmmss')
Get-ChildItem -Path $root -Recurse -Include *.md | Where-Object {
    $parts = $_.FullName -split '\\'
    $parent = if ($parts.Length -ge 2) { $parts[-2] } else { '' }
    $excludeDirs -notcontains $parent
} | ForEach-Object {
    $path = $_.FullName
    $text = Get-Content $path -Raw
    $orig = $text
    $pattern = '(?im)^\s*(\*\*?Word Count[:\s].*$|.*\b(placeholder|sample text|tbd|todo|replace this)\b.*)$'
    $text = [regex]::Replace($text, $pattern, '')
    # Remove repeated blank lines
    $text = [regex]::Replace($text, '(\r?\n){3,}', "`r`n`r`n")
    if ($text -ne $orig) {
        $backupDir = Join-Path -Path $root -ChildPath 'adminUseOnly\backups'
        if (-not (Test-Path -Path $backupDir)) { New-Item -ItemType Directory -Path $backupDir -Force | Out-Null }
        $bakName = "$($_.Name).bak.$timestamp"
        $bak = Join-Path -Path $backupDir -ChildPath $bakName
        Copy-Item -Path $path -Destination $bak -Force
        Set-Content -Path $path -Value $text -Encoding UTF8
        Write-Output "CLEANED|$path"
    } else {
        Write-Output "UNCHANGED|$path"
    }
}

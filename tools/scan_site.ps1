$root = 'c:\Users\Owner\Documents\degreartcode data\BlogUsage\LatestSearchAI\wesearchai-main'
$exclude = @('adminUseOnly','assets','node_modules','_site')
$threshold = 400
Get-ChildItem -Path $root -Recurse -Include *.md | Where-Object { $exclude -notcontains ($_.FullName -split '\\')[-2] } | ForEach-Object {
    $path = $_.FullName
    $text = Get-Content $path -Raw
    $words = ($text -split '\s+' | Where-Object { $_ -ne '' }).Count
    $low = $words -lt $threshold
    $placeholders = [regex]::IsMatch($text, '(?i)lorem|placeholder|template|TBD|TODO|Word Count|replace this|sample text')
    if ($low -or $placeholders) {
        Write-Output "FLAG|$path|$words|Placeholder:$placeholders"
    } else {
        Write-Output "OK|$path|$words"
    }
}
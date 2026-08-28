$posts='c:\Users\Owner\Documents\degreartcode data\BlogUsage\LatestSearchAI\wesearchai-main\_posts'
Get-ChildItem -Path $posts -Filter *.md | ForEach-Object {
    $t=Get-Content $_.FullName -Raw
    $w=($t -split '\s+').Count
    if ($w -lt 300) { Write-Output "$($_.Name) - $w words" }
}

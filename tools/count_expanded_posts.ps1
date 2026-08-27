$posts = @(
    'c:\Users\Owner\Documents\degreartcode data\BlogUsage\LatestSearchAI\wesearchai-main\_posts\2026-05-08-space-exploration.md',
    'c:\Users\Owner\Documents\degreartcode data\BlogUsage\LatestSearchAI\wesearchai-main\_posts\2026-05-09-archaeological-discoveries.md',
    'c:\Users\Owner\Documents\degreartcode data\BlogUsage\LatestSearchAI\wesearchai-main\_posts\2026-05-11-cybersecurity-threats.md',
    'c:\Users\Owner\Documents\degreartcode data\BlogUsage\LatestSearchAI\wesearchai-main\_posts\2026-05-14-immune-system-health.md'
)
foreach ($p in $posts) {
    $text = Get-Content $p -Raw
    $count = ($text -split '\s+').Count
    Write-Output "$(Split-Path $p -Leaf) - $count words"
}

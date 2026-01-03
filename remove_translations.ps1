$file = 'D:\Mr.Mohammd Taha Emami\My  Web Saits\tootak\html\toot asli\html2\index3.html'
[string]$content = Get-Content $file -Raw

# Find and remove the large translations object
# Pattern: const translations = { ... }; with everything inside
$pattern = 'const translations = \{[\s\S]*?\};'
$content = $content -replace $pattern, ''

# Also remove the isEnglish variable initialization since we don't need it
$content = $content -replace 'let isEnglish = false;', ''

[System.IO.File]::WriteAllText($file, $content)
Write-Host "Successfully removed translations object"

$file = 'D:\Mr.Mohammd Taha Emami\My  Web Saits\tootak\html\toot asli\html2\index3.html'
[string]$content = Get-Content $file -Raw

# Remove data-translate attributes
$content = $content -replace ' data-translate="[^"]*"', ''

# Remove data-translate-placeholder attributes
$content = $content -replace ' data-translate-placeholder="[^"]*"', ''

[System.IO.File]::WriteAllText($file, $content)
Write-Host "Successfully removed all translation attributes"

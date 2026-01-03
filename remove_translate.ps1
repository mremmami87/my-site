$file = 'd:\Mr.Mohammd Taha Emami\My  Web Saits\tootak\html\toot asli\html2\index3.html'
[string]$content = Get-Content $file -Raw
$content = $content -replace ' data-translate="[^"]*"', ''
[System.IO.File]::WriteAllText($file, $content)
Write-Host "Removed all data-translate attributes"

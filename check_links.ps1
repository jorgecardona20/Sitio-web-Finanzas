
$files = Get-ChildItem -Path . -Filter *.html
$errorsFound = $false

foreach ($file in $files) {
    $content = Get-Content $file.FullName
    
    # Check hrefs
    $matches = [regex]::Matches($content, 'href="([^#"]*?)"')
    foreach ($match in $matches) {
        $link = $match.Groups[1].Value
        if ($link -ne "" -and $link -notmatch "^http" -and $link -notmatch "^mailto:") {
            if (-not (Test-Path $link)) {
                Write-Host "Error in $($file.Name): Broken link '$link'" -ForegroundColor Red
                $errorsFound = $true
            }
        }
    }

    # Check images
    $imgMatches = [regex]::Matches($content, 'src="([^"]*?)"')
    foreach ($match in $imgMatches) {
        $img = $match.Groups[1].Value
        if ($img -ne "" -and $img -notmatch "^http") {
             if (-not (Test-Path $img)) {
                Write-Host "Error in $($file.Name): Broken image '$img'" -ForegroundColor Red
                $errorsFound = $true
            }
        }
    }
}

if (-not $errorsFound) {
    Write-Host "All checks passed!" -ForegroundColor Green
}

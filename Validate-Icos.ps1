$folders = Get-ChildItem -Directory | Where-Object { !$_.BaseName.StartsWith(".") } | Select -Expand FullName

foreach ($folder in $folders) {
    $files = ( Get-ChildItem -Path $folder -Filter *.ico | Select -Expand FullName )
    
    foreach ($file in $files) {
        $dataArray = (Get-Content $file -AsByteStream -TotalCount 4)
        $data = [BitConverter]::ToInt32($dataArray, 0)
        if ($data -ne 0x10000) {
            Write-Host "[ERROR] $file is not a valid ICO file!"
        }
    }
}

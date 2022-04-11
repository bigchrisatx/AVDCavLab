 # install 7-Zip
 write-host 'AIB Customization: Install 7-Zip'
 $7zipURL = 'https://www.7-zip.org/a/7z2107-x64.msi'
 $7zipMsi = '7z2107-x64.msi'
 $outputPath = $LocalPath + '\' + $7zipMsi
 Invoke-WebRequest -Uri $7zipURL -OutFile $outputPath
 Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart" -Wait
 write-host 'Finished Install 7-Zip' 

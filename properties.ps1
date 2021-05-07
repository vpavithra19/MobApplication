param ($search,$replacekeyvalue)
$replacevalue= "$search=$replacekeyvalue"
$line = Get-Content HeadlessBuild.properties | Select-String $search | Select-Object -ExpandProperty Line
$content = Get-Content HeadlessBuild.properties
$content | ForEach-Object {$_ -replace $line,"$replacevalue"} | Set-Content HeadlessBuild.properties

$files = Get-ChildItem -Path ..\

for ($i=0; $i -lt $files.Count; $i++) {
  $name = $files[$i].Name.Trim()
  $escaped = $name.Replace(" ", "%20")
  Write-Host "<a href=`"https://github.com/BriceRoncace/uke/raw/main/${escaped}`">${name}</a><br>" -NoNewLine
}
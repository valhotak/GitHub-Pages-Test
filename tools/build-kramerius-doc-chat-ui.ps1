$ProjectPath = 'C:\VA\Projects\VA\kramerius-doc-chat\kramerius-doc-chat-ui'

$ErrorActionPreference = 'Stop'
$ProjectPath = (Resolve-Path -LiteralPath $ProjectPath).Path
$Target = Join-Path $PSScriptRoot '..\docs\assets\kramerius-doc-chat-ui'

Push-Location $ProjectPath
try {
  npm run build:github-pages
}
finally {
  Pop-Location
}

$Dist = Join-Path $ProjectPath 'dist\kramerius-doc-chat-ui'
$Source = Join-Path $Dist 'browser'
$MainJs = Join-Path $Source 'main.js'
if (!(Test-Path -LiteralPath $MainJs)) { throw "Build output not found: $MainJs" }

if (Test-Path -LiteralPath $Target) { Remove-Item -LiteralPath $Target -Recurse -Force }
New-Item -ItemType Directory -Path $Target | Out-Null
Copy-Item -LiteralPath $MainJs -Destination (Join-Path $Target 'doc-chat-ui.js') -Force

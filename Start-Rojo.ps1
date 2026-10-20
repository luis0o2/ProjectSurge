$ErrorActionPreference = 'Stop'
$installedRojo = Get-Command rojo -ErrorAction SilentlyContinue
$rojo = if ($installedRojo) { $installedRojo.Source } else { Join-Path $PSScriptRoot '../.tools/rojo-7.7.1/rojo.exe' }
if (-not (Test-Path -LiteralPath $rojo)) {
    throw 'Install Rojo 7.7.1 and add rojo.exe to PATH, then run this script again. See README.md.'
}
& $rojo serve (Join-Path $PSScriptRoot 'default.project.json')
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

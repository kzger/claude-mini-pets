[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [ValidateSet('both', 'standard', 'smooth')]
    [string]$Variant = 'both',
    [string]$CodexHomePath
)

$ErrorActionPreference = 'Stop'
if (-not $CodexHomePath) {
    $CodexHomePath = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE '.codex' }
}
$petRoot = Join-Path ([IO.Path]::GetFullPath($CodexHomePath)) 'pets'
$choices = @(
    @{ Key = 'standard'; Folder = 'claude-mini-standard' },
    @{ Key = 'smooth'; Folder = 'claude-mini-smooth' }
)
$plans = @()
foreach ($choice in $choices) {
    if ($Variant -ne 'both' -and $Variant -ne $choice.Key) { continue }
    $source = Join-Path (Join-Path $PSScriptRoot 'pets') $choice.Folder
    $destination = Join-Path $petRoot $choice.Folder
    foreach ($name in @('pet.json', 'spritesheet.png', 'ATTRIBUTION.md')) {
        if (-not (Test-Path -LiteralPath (Join-Path $source $name) -PathType Leaf)) {
            throw "Missing package file: $source\$name"
        }
    }
    if (Test-Path -LiteralPath $destination) {
        $matches = $true
        foreach ($name in @('pet.json', 'spritesheet.png', 'ATTRIBUTION.md')) {
            $existing = Join-Path $destination $name
            if (-not (Test-Path -LiteralPath $existing -PathType Leaf)) { $matches = $false; break }
            if ((Get-FileHash -LiteralPath $existing -Algorithm SHA256).Hash -ne
                (Get-FileHash -LiteralPath (Join-Path $source $name) -Algorithm SHA256).Hash) {
                $matches = $false; break
            }
        }
        if (-not $matches) { throw "Destination differs; no files overwritten. Back it up first: $destination" }
        Write-Output "Already installed: $destination"
        continue
    }
    $plans += @{ Source = $source; Destination = $destination }
}
foreach ($plan in $plans) {
    if ($PSCmdlet.ShouldProcess($plan.Destination, 'Install Claude Mini pet')) {
        New-Item -ItemType Directory -Path $plan.Destination -Force | Out-Null
        foreach ($name in @('pet.json', 'spritesheet.png', 'ATTRIBUTION.md')) {
            Copy-Item -LiteralPath (Join-Path $plan.Source $name) -Destination $plan.Destination
        }
        Write-Output "Installed: $($plan.Destination)"
    }
}
Write-Output 'Open Settings > Pets / Mini & Pets, refresh local pets, and choose a Claude variant.'
Write-Output 'Existing cloud pets are separate records; this script does not update their artwork.'

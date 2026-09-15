param([Parameter(Mandatory=$true)][string]$Path)
if (-not (Test-Path $Path)) {
    Write-Host "No file at $Path"
    pause
    exit 1
}
Get-Content -Path $Path -Raw | Set-Clipboard
Write-Host "Chapter copied. In Robin send: Opening chapter. Then paste."

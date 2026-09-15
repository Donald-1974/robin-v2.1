$env:OLLAMA_THINK = "false"
$ollama = "$env:LOCALAPPDATA\Programs\Ollama\ollama.exe"
if (-not (Test-Path $ollama)) {
    Write-Host "Ollama not found at $ollama"
    pause
    exit 1
}
& $ollama run robin --think=false

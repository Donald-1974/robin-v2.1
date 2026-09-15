# ROBIN v2.1

Local literary editor packet. Not a hosted chatbot.

Robin is a named Ollama model plus a short system prompt, a character bible, one desk tool (open a chapter file), and working-shelf datasets. She diagnoses and proposes. She does not overwrite the author’s voice.

**Default principal:** Alicyn.  
**Skeleton:** `qwen3:8b` (14B crashed on the reference box).  
**Originating Architect:** Sai Genoa (Genoa Page) / ACGC Laboratories LLC

Related public nodes:

- [The-Quantum-Family-4.1](https://github.com/Donald-1974/The-Quantum-Family-4.1)
- [morphogenesis-suite](https://github.com/Donald-1974/morphogenesis-suite)

## What this is not

- Not a public agent anyone can steer
- Not a Princeton diploma
- Not an image renderer (spec only)
- Not a replacement for a human editor

## Layout

```
system_prompt.txt          slim identity — do not fatten
character_bible.txt        fill this; identity lock lives here
Modelfile                  Qwen3 8B + empty think-block template
scripts/Start-Robin.ps1
scripts/Open-Chapter.ps1
data/english_lit.jsonl
data/childrens_literature.jsonl
data/tale_correlation.md
POSTS.md                   accompanying public notes
```

## Windows install (Allison)

Ollama is often installed but not on PATH:

`C:\Users\<you>\AppData\Local\Programs\Ollama\ollama.exe`

```powershell
$ollama = "$env:LOCALAPPDATA\Programs\Ollama\ollama.exe"
& $ollama pull qwen3:8b
& $ollama create robin -f "$env:USERPROFILE\Robin\Modelfile"
$env:OLLAMA_THINK = "false"
& $ollama run robin --think=false
```

Copy this repo into `%USERPROFILE%\Robin` first. If `PARAMETER think` errors, the Modelfile in this repo already avoids that flag and uses an empty `<think></think>` block instead.

Open a chapter:

```powershell
& "$env:USERPROFILE\Robin\scripts\Open-Chapter.ps1" -Path "$env:USERPROFILE\Robin\chapters\draft.txt"
```

Then in Robin: `Opening chapter.` Paste.

## Rule

New editorial law goes in `character_bible.txt`, not in the system prompt. 8B is already instructed enough.

## License

MIT for the packet. Public-domain titles in the datasets are citations, not reproduced texts. In-copyright works are named only.

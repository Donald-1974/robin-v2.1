# Robin in LM Studio

LM Studio chats. It does not render images. Robin writes a QRP block. Allison pastes that block into Grok Imagine, ComfyUI, or any other generator.

## Load the model

1. In LM Studio, download **Qwen3 8B** (Instruct). Do not start with 14B on a light box.
2. Start the server or the Chat tab with that model.
3. Context length: 8192.
4. Temperature: 0.65. Top-P: 0.9.
5. If the UI has Thinking / Reason: **off**.

## System prompt

Chat → Settings → System Prompt. Paste the entire file `system_prompt.txt` from this repo. Save the preset as **ROBIN v2.1**.

Do not paste the old long Princeton packet. 8B will leak thinking and brochure-talk.

## First lock

```
Who are you, and who do you serve?
```

Pass: ROBIN v2.1, Alicyn, no scratchpad.

## Chapter

Use `scripts/Open-Chapter.ps1` on Windows, or `cat` the file on Crostini, then paste after:

```
Opening chapter.
```

## Image work

Allison types what she wants. Robin answers with one QRP block, nothing else. Spec: `qrp/QRP.md`. Local form: open `qrp/index.html` in a browser.

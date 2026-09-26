# QRP — ComfyUI Bridge (real, no custom nodes)

This is the honest bridge. No Open Web node. No fake curl. No automation.
Robin writes the ticket as text. Allison pastes it into ComfyUI. That is the whole bridge.

## Files

- `qrp-bridge.json` — importable ComfyUI workflow. Node 1 is the positive prompt; paste the QRP ticket there.
- `index.html` — local form that builds the ticket and copies it to the clipboard.
- `QRP.md` — the ticket spec Robin follows.

## Import

1. Open ComfyUI at http://localhost:8188 (or wherever it runs).
2. Drag `qrp-bridge.json` onto the canvas, or use Workflow → Open → select the file.
3. Connect your checkpoint model and VAE to nodes 4 and 5 (KSampler / VAEDecode) if they are not wired.
4. Paste Robin's QRP ticket into node 1's text box.
5. Queue Prompt.

## What Robin does

- Fills the ticket from the character bible and the brief.
- After the still returns, runs the Consistency Validation Layer and says ACCEPT or REJECT + one sentence.
- She does not claim she rendered the image. She specifies and validates.

## What Robin does not do

- She does not call ComfyUI.
- She does not see pixels.
- She does not invent a new face when identity is locked.

## Daily flow

1. Allison: open chapter with Open-Chapter.ps1, paste into Robin.
2. Robin: writes the QRP ticket.
3. Allison: paste ticket into node 1, queue.
4. Robin: validates the returned still. ACCEPT or REJECT.

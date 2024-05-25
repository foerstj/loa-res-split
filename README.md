# loa-res-split
LoA resources split. I added the original resources from Expansion.dsres and (German) ExpVoices.dsres, and rebuild them into somewhat smaller chunks:
- ExpCore.dsres: Core files
- ExpObjects.dsres: All game objects, incl. art & templates. Optionally split:
  - ExpObjects - actors.dsres: Friend and foe
  - ExpObjects - items.dsres: Plants, equipment, gizmos etc.
- ExpTerrain.dsres: Terrain pieces, incl. textures
- ExpSoundEffects.dsres: Sound effect wav files
- ExpMusic.dsres: Music mp3 files
- ExpMovies.dsres: Credits, Outros
- ExpVoices.dsres: (German) voice files. Optionally split:
  - ExpVoices - dialog.dsres: Dialog samples
  - ExpVoices - voiceover.dsres: Those annoying little things your characters say when given orders
- ExpSiegeEditorExtras.dsres: Files that are only relevant for SiegeEditor

An all-in-one Bits folder structure is kept, for now. Files are all original except I split the NNK files.

Why? I'm just playing around here... Maybe this can be useful for a backport to Vanilla, or for excluding Island-of-the-Utraeans themed equipment from other maps' pcontent... Heck I don't know what to do with it and now GitHub started charging me for LFS usage :weary:

## Attribution
All of these resources are from Gas Powered Games and Mad Doc Software, not me. I'm just re-tanking them here.

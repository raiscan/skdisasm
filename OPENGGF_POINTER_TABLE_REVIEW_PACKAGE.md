# Pointer Table Annotation Review Package

## Future Submission Title

Document Sonic & Knuckles object pointer table indexes

## Scope

This future patch documents the two Sonic & Knuckles object pointer tables without changing assembled output:

- `Sprite_Listing3` / `Levels/Misc/Object pointers - SK Set 1.asm`
- `Sprite_ListingK` / `Levels/Misc/Object pointers - SK Set 2.asm`

The currently isolated pointer-table file scope is:

```text
M       Levels/Misc/Object pointers - SK Set 1.asm
M       Levels/Misc/Object pointers - SK Set 2.asm
```

## Primary Evidence

- `sonic3k.asm` selects `Sprite_Listing3` or `Sprite_ListingK` in the Sonic & Knuckles object loading path based on `Current_zone`.
- `Levels/Misc/Object pointers - SK Set 1.asm` contains the SK Set 1 indexed object pointer table.
- `Levels/Misc/Object pointers - SK Set 2.asm` contains the SK Set 2 indexed object pointer table.
- The table entries already target existing skdisasm object labels; the patch adds table context plus `$XX` / decimal object index comments.

## Future Submission Notes

This documents the Sonic & Knuckles object pointer tables with table headers and hex object IDs. It keeps the existing pointer targets and assembled output unchanged.

The intent is to make the tables easier to use as object indexes, comparable to the practical lookup value in mature Sonic disassemblies. The comments use existing skdisasm terminology: `Sprite_Listing3`, `Sprite_ListingK`, SK Set 1, SK Set 2, and zone ranges.

## Verification

Command:

```powershell
.\build_tools\Lua\lua.exe chkbitperfect.lua
```

Result captured on 2026-06-15:

```text
-------------------------------------------------------------
Sonic 3 ROM is bit-perfect (with USA version).
Sonic & Knuckles ROM is bit-perfect.
```

## Submission Hold

No upstream PR or issue has been opened, and none should be opened during this work.

This review package is held locally until the externally decided OpenGGF release-readiness trigger occurs and the maintainer-facing scope is explicitly approved for submission. That trigger is expected to be a while off; local checkpoint commits and fork-side audit packages are the intended state until then.

Before any future PR is created, remove OpenGGF-specific Markdown documentation, CSV audit packages, and process notes from the PR branch. Future upstream branches should contain only narrow `skdisasm` source changes and submission prose grounded in `skdisasm`/ROM evidence.

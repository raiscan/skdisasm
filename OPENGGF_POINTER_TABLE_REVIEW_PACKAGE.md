# Pointer Table Annotation Review Package

## Current Status: Held Locally

This package is local review material only. It must not be used to open an upstream PR, draft PR, issue, maintainer ping, maintainer-facing submission, or style-confirmation contact at this moment in time.

Do not raise, open, draft, queue, or prepare an upstream PR or draft PR from this package now. The package can inform local checkpoint commits only. The plan is to wait until OpenGGF is ready for release, which is expected to be a while off and must be an externally decided project trigger.

Any upstream-contact trigger must be an externally decided OpenGGF release-readiness decision by the project. That trigger is expected to be a while off and is outside this skdisasm fork work; local completion, byte-perfect verification, and agent review do not authorize upstream contact.

Before any future upstream PR branch is created, remove OpenGGF-specific Markdown documentation, CSV audit packages, roadmap text, review packages, and process notes from that branch, including `OPENGGF_*.md` and `OPENGGF_*.csv`. This includes all OpenGGF-specific Markdown docs, not only files matching a narrow glob. If those files remain, the branch is still local fork material and must not be used for upstream review, even if the assembly-source patch is otherwise ready.

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

No upstream PR, draft upstream PR, issue, maintainer ping, maintainer-facing submission, or style-confirmation contact has been opened, and none may be opened during this work.

This review package is held locally until the externally decided OpenGGF release-readiness trigger occurs and the maintainer-facing scope is explicitly approved for submission. That trigger is expected to be a while off and will be decided outside this skdisasm fork work; local checkpoint commits and fork-side audit packages are the intended state until then. Local completion, byte-perfect verification, or agent review does not change this hold.

Before any future PR or draft PR is created, the external OpenGGF release-readiness trigger must already have happened and the PR branch must have OpenGGF-specific Markdown documentation, CSV audit packages, and process notes removed, including local `OPENGGF_*.md` and `OPENGGF_*.csv` artifacts. Future upstream branches should contain only narrow `skdisasm` source changes and submission prose grounded in `skdisasm`/ROM evidence. If the branch still includes these OpenGGF-specific files or process notes, it remains a local fork branch and must not be used for an upstream PR or draft PR.

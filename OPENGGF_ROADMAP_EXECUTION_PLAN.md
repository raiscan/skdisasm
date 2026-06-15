# skdisasm Roadmap Contribution Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Advance the OpenGGF skdisasm contribution roadmap beyond the object pointer pilot with a local pointer-table review package and a first AIZ object identity/data ownership pass.

**Architecture:** Keep future upstream submission material and exploratory annotation work separate inside the fork. No upstream PRs or issues are opened until the broader contribution package is complete and the maintainer-facing scope is approved by the user. When submission time arrives, extract narrowly scoped branches from this fork-side roadmap branch.

**Tech Stack:** `skdisasm` assembly sources, Git branches rooted at `upstream/master`, `chkbitperfect.lua`, manual CSV/Markdown audit artifacts, OpenGGF Java object registry only as corroborating evidence.

---

### Task 1: Prepare Local Pointer Pilot Review Package

**Files:**
- Read: `Levels/Misc/Object pointers - SK Set 1.asm`
- Read: `Levels/Misc/Object pointers - SK Set 2.asm`
- Create: `OPENGGF_POINTER_TABLE_REVIEW_PACKAGE.md`

- [ ] **Step 1: Confirm pointer-table scope**

Run:
```powershell
git fetch upstream
git diff --name-status upstream/master..HEAD -- "Levels/Misc/Object pointers - SK Set 1.asm" "Levels/Misc/Object pointers - SK Set 2.asm"
```

Expected:
```text
M       Levels/Misc/Object pointers - SK Set 1.asm
M       Levels/Misc/Object pointers - SK Set 2.asm
```

- [ ] **Step 2: Verify byte-perfect output**

Run:
```powershell
.\build_tools\Lua\lua.exe chkbitperfect.lua
```

Expected:
```text
Sonic 3 ROM is bit-perfect (with USA version).
Sonic & Knuckles ROM is bit-perfect.
```

- [ ] **Step 3: Write the local review package**

Create `OPENGGF_POINTER_TABLE_REVIEW_PACKAGE.md` with:
```markdown
# Pointer Table Annotation Review Package

## Future Submission Title

Document Sonic & Knuckles object pointer table indexes

## Scope

This future patch documents the two Sonic & Knuckles object pointer tables without changing assembled output:

- `Sprite_Listing3` / `Levels/Misc/Object pointers - SK Set 1.asm`
- `Sprite_ListingK` / `Levels/Misc/Object pointers - SK Set 2.asm`

## Primary Evidence

- The object loader in `sonic3k.asm` selects `Sprite_Listing3` or `Sprite_ListingK` by `Current_zone`.
- The two pointer table files contain the indexed object targets.
- Existing labels in the tables identify the object routines; the patch only adds table context and `$XX / decimal` index comments.

## Verification

Command:

```powershell
.\build_tools\Lua\lua.exe chkbitperfect.lua
```

Expected result:

```text
Sonic 3 ROM is bit-perfect (with USA version).
Sonic & Knuckles ROM is bit-perfect.
```

## Future Submission Notes

This documents the Sonic & Knuckles object pointer tables with table headers and hex object IDs. It keeps the existing pointer targets and assembled output unchanged.

The main intent is to make the tables easier to use as object indexes, similar to the practical lookup value in mature Sonic disassemblies. The comments use existing skdisasm terminology: `Sprite_Listing3`, `Sprite_ListingK`, SK Set 1, SK Set 2, and zone ranges.

Verified with:

```powershell
.\build_tools\Lua\lua.exe chkbitperfect.lua
```

Result:

```text
Sonic 3 ROM is bit-perfect (with USA version).
Sonic & Knuckles ROM is bit-perfect.
```

## Submission Hold

No upstream PR or issue has been opened. This package is held locally until the broader roadmap contribution batch is complete and explicitly approved for submission.
```

Commit the package on the roadmap branch:
```powershell
git add -- OPENGGF_POINTER_TABLE_REVIEW_PACKAGE.md OPENGGF_ROADMAP_EXECUTION_PLAN.md
git commit -m "docs: package pointer table review evidence"
git push
```

### Task 2: Prepare AIZ Object Identity Audit

**Files:**
- Create: `OPENGGF_AIZ_OBJECT_IDENTITY_AUDIT.csv`
- Read: `Levels/Misc/Object pointers - SK Set 1.asm`
- Read: `Levels/AIZ/Object Pos/1.bin`
- Read: `Levels/AIZ/Object Pos/2.bin`
- Read: `sonic3k.asm`
- Read: `Levels/AIZ/Misc Object Data/`

- [ ] **Step 1: Return to the roadmap branch**

Run:
```powershell
git switch feature/ai-object-pointer-annotations
```

- [ ] **Step 2: Create the AIZ audit skeleton**

Create `OPENGGF_AIZ_OBJECT_IDENTITY_AUDIT.csv` with columns:
```csv
object_id,pointer_label,placement_evidence,code_evidence,asset_evidence,proposed_upstream_change,confidence,patch_decision
```

- [ ] **Step 3: Populate the first AIZ batch**

Use only entries with clear primary evidence. Initial candidates:
```text
$03 Obj_AIZHollowTree
$05 Obj_AIZLRZEMZRock
$06 Obj_AIZRideVine
$09 Obj_AIZ1Tree
$0A Obj_AIZ1ZiplinePeg
$0C Obj_AIZGiantRideVine
$29 Obj_AIZDisappearingFloor
$2B Obj_AIZFlippingBridge
$2C Obj_AIZCollapsingLogBridge
$2D Obj_AIZFallingLog
$2E Obj_AIZSpikedLog
$32 Obj_AIZDrawBridge
$35 Obj_AIZForegroundPlant
$84 Obj_AIZPlaneIntro
$8C Obj_Bloominator
$8D Obj_Rhinobot
$8E Obj_MonkeyDude
$8F Obj_CaterKillerJr
$90 Obj_AIZMinibossCutscene
$91 Obj_AIZMiniboss
$92 Obj_AIZEndBoss
```

Each row must cite at least one pointer-table/code source and one placement or asset source where practical.

### Task 3: Apply First AIZ Identity/Data Ownership Patch

**Files:**
- Modify: `sonic3k.asm`
- Modify: AIZ-specific map/anim files only if a label is directly consumed by the object code

- [ ] **Step 1: Select a narrow AIZ batch**

Choose 1-3 AIZ objects whose labels are already mostly meaningful but whose local routine/data labels are still opaque. Prefer a batch where the object code and object-owned data live close together.

- [ ] **Step 2: Rename only routine/data labels with primary evidence**

Acceptable changes:
```text
Obj_AIZ..._Index
Obj_AIZ..._Init
Obj_AIZ..._Main
Obj_AIZ..._Display
Obj_AIZ... child/object data table labels
```

Avoid behavior comments unless directly obvious from code.

- [ ] **Step 3: Verify no stale labels remain**

Run targeted searches for every replaced raw label:
```powershell
rg -n "old_label_1|old_label_2|old_label_3" sonic3k.asm
```

Expected: no output.

- [ ] **Step 4: Verify byte-perfect output**

Run:
```powershell
.\build_tools\Lua\lua.exe chkbitperfect.lua
```

Expected:
```text
Sonic 3 ROM is bit-perfect (with USA version).
Sonic & Knuckles ROM is bit-perfect.
```

- [ ] **Step 5: Commit and push**

Run:
```powershell
git add -- sonic3k.asm OPENGGF_AIZ_OBJECT_IDENTITY_AUDIT.csv
git commit -m "docs: start AIZ object identity pass"
git push
```

## Self-Review

- Spec coverage: The plan covers local review package evidence, byte-perfect verification, AIZ audit, and first AIZ annotation patch.
- Placeholder scan: No TBD/TODO placeholders are present.
- Scope control: No upstream PRs or issues are opened during this roadmap execution; future submission branches are extracted only after the local contribution batch is done.

# skdisasm Contribution Program Design

## Purpose

OpenGGF has accumulated verified Sonic 3 & Knuckles object, data, and behavior knowledge while implementing ROM-backed engine parity. Some of that knowledge can support incremental `skdisasm` annotations in areas we have independently verified. The goal is to contribute back in a form that makes selected parts of the disassembly clearer and more useful, closer to the practical information level of `s1disasm` and `s2disasm`.

This is not an effort to import OpenGGF's internal model into `skdisasm`. Upstream changes should use `skdisasm` terminology, preserve byte-perfect build behavior, and remain reviewable on their own.

## Submission Freeze

No upstream pull request, upstream issue, or maintainer-facing submission should be opened at this time.

The current work is local preparation only. The upstream trigger is external to this branch: wait until OpenGGF is considered ready for release by the project, which is expected to be a while off. Until that external release-readiness decision happens, all changes stay in the fork as reviewable checkpoint commits and local audit packages.

Before any future upstream PR is created:

- extract a narrow upstream-facing branch from the local fork work
- remove OpenGGF-specific Markdown documentation, CSV audit packages, and any OpenGGF-branded process notes from the PR branch unless upstream maintainers explicitly ask for them
- rewrite PR text and commit scope around `skdisasm` evidence, ROM/disassembly verification, and byte-perfect annotation value
- keep OpenGGF references out of source comments and labels; OpenGGF may only be mentioned in external PR prose if that is still useful and appropriate at submission time

## High-Level Goal

Move verified areas of `skdisasm` gradually from opaque labels toward clearer preservation and research annotations with:

- clearer object pointer tables
- stable object identities
- named routine states where control flow is clear
- named object-owned data tables
- short factual comments for important subtype, state, and helper-call behavior
- better cross-references between object code and mappings, DPLCs, animation scripts, art, palettes, PLCs, and zone data

The comparison point is not perfection. The comparison point is the day-to-day usefulness of `s1disasm` and `s2disasm`, where object IDs, object names, helper routines, and many major data tables are identifiable without starting from raw addresses.

## What Contributing Back Means

Contributing back means upstreaming verified information into `skdisasm` in maintainable assembly-source form.

Acceptable upstream contribution types:

- add comments to explain object IDs, table layouts, subtype meanings, and state variables
- add semantic labels for objects, routines, and data once identity is verified and the naming style is acceptable upstream
- add aliases where multiple names point at the same routine or object entry
- improve object/data cross-reference names
- correct obvious typos in labels when the risk is low
- add local documentation comments around unusual systems

Non-goals for upstream patches:

- no OpenGGF Java names, class names, or registry concepts in `skdisasm`
- no OpenGGF-only terms such as `S3KL` or `SKL`; upstream should use `Sprite_Listing3`, `Sprite_ListingK`, `SK Set 1`, `SK Set 2`, and zone ranges
- no broad formatting churn
- no behavior changes to assembled output
- no speculative comments presented as fact
- no large mixed PRs that combine unrelated zones or systems

OpenGGF can be cited in PR descriptions as the source of verification work, but the patch content should stand as disassembly improvement rather than project synchronization.

This is future guidance only. During the current submission freeze, do not cite OpenGGF in any upstream venue because no upstream venue should be opened.

## Naming Policy

OpenGGF names are implementation evidence, not upstream names by default.

When preparing a patch:

- prefer existing `skdisasm` labels if they are already meaningful
- prefer names implied by object code, placement context, asset labels, or established Sonic disassembly naming style
- prefer comments or aliases before renaming existing labels
- rename existing labels only after the maintainer style has been established by a small accepted PR or explicit maintainer feedback
- translate implementation-shaped OpenGGF names into neutral object identities before proposing them upstream
- keep uncertain identities as comments with evidence notes rather than hard labels

## Fork Model

We should maintain a fork of `skdisasm` for this work.

The fork provides room to:

- commit freely while auditing labels and cross-references
- keep local staging branches for possible future upstream PRs after the release-readiness trigger
- maintain a backlog of candidate annotations
- run byte-perfect build checks before any future upstream submission
- split large research findings into small reviewable future PR scopes
- prepare style-confirmation material locally before any future maintainer contact

The fork should not become a permanent divergent disassembly. Its role is a staging and verification workspace. Changes intended for upstream should be kept in narrow branches that can be rebased, reviewed, and submitted independently.

Recommended repo boundaries:

- `origin` should point at the OpenGGF-controlled fork once it exists
- `upstream` should point at `https://github.com/sonicretro/skdisasm.git`
- patch branches should live in the standalone `skdisasm` checkout, not in the OpenGGF engine repository
- generated audit reports may live in OpenGGF tooling or notes, but upstream patch files should be edited only in the standalone `skdisasm` git tree
- sync from `upstream/master` before starting each future upstream PR branch
- use narrowly named branches such as `feature/ai-object-pointer-annotations`

## Completeness Ladder

### Level 1: Pointer Table Clarity

Object pointer tables should be readable like the object indexes in `s1disasm` and `s2disasm`.

Expected improvements:

- table headers explaining selection context
- object ID comments in hexadecimal where useful
- names for obvious entries
- comments for shared IDs, aliases, unused entries, and zone-specific meanings
- no assembled-output changes

### Level 2: Object Identity

Opaque object labels should be supplemented first, then replaced only when identity is proven by pointer table use, placement data, code behavior, linked asset data, and upstream naming style is clear.

Expected improvements:

- semantic `Obj_` labels for verified objects, where accepted by upstream style
- aliases for repeated object routines
- comments where an object is reused across multiple zones or contexts
- conservative handling of uncertain objects

### Level 3: Routine Structure

Within each object, obvious routine states should receive names.

Expected improvements:

- dispatch table labels
- `Init`, `Main`, `Display`, `Delete`, `Fall`, `Wait`, `Touch`, or similarly factual routine names
- comments on routine index values where table-driven behavior is clear
- no deep behavior claims unless supported by code and implementation evidence

### Level 4: Data Ownership

Object-owned data should be named and linked to the object that consumes it.

Expected improvements:

- mapping, DPLC, animation, movement, collision, subtype, and child-sprite table labels
- comments identifying table entry formats
- cross-reference comments where object code loads a named data table
- consistent names between object code and associated files

### Level 5: Behavior Notes

Behavior comments should explain important mechanics without overfitting to OpenGGF's implementation.

Expected improvements:

- subtype bit meanings
- state timer meanings
- parent/child object relationships
- collision flag and shield reaction notes
- offscreen deletion and respawn behavior
- boss hit counter and phase notes

This is higher risk than naming work and should follow verified object identity.

### Level 6: System-Level Documentation

Major S3K systems should have the same practical orientation that mature S1/S2 disassembly users expect.

Expected areas:

- object loading and pointer table selection
- Sprite Status Table fields
- child sprite system
- object collision and player interaction helpers
- zone event routines
- level drawing and mutation systems
- palette, animated tile, and PLC systems

These contributions should be developed as separate focused efforts, not mixed into object annotation PRs.

## Initial Milestone: Object Pointer Pilot

The first upstream-sized target is the two Sonic & Knuckles object pointer tables:

- `Levels/Misc/Object pointers - SK Set 1.asm`
- `Levels/Misc/Object pointers - SK Set 2.asm`

The pilot should:

- improve table headers
- annotate object IDs using upstream-friendly terminology
- clarify that the tables are selected by zone range
- call out shared IDs whose targets differ between `Sprite_Listing3` and `Sprite_ListingK`
- keep all labels and comments in `skdisasm` style
- avoid OpenGGF-internal terms in the patch
- preserve assembled output

This milestone proves the contribution style before larger naming or routine-structure work.

The pilot should produce a manual audit table before patching. Minimum columns:

- object ID
- `Sprite_Listing3` target
- `Sprite_ListingK` target
- current `skdisasm` label/comment
- proposed comment or name
- primary `skdisasm`/ROM evidence
- OpenGGF corroboration
- confidence
- upstream patch decision

The audit table is a working artifact. It should guide the patch and PR description, but it does not need to be committed upstream unless maintainers want it.

## Verification Sources

Each proposed upstream change should have primary evidence. OpenGGF evidence is corroborating, not sufficient on its own.

Primary evidence:

- current `skdisasm` pointer tables and code references
- object placement data or zone-specific usage
- linked mapping, DPLC, animation, art, PLC, or palette data
- direct ROM/disassembly cross-checks using existing project tooling

Secondary evidence:

- OpenGGF object registry or implementation
- OpenGGF tests or trace work where behavior has been validated

Every factual upstream annotation should include at least one primary source. Prefer two independent primary sources for renames, routine labels, and behavior comments. OpenGGF should be treated as a verification aid, not as the authority.

## Byte-Perfect Verification

Before each future upstream PR, after the external OpenGGF release-readiness trigger:

1. Start from a clean checkout synced to `upstream/master`.
2. Build the relevant baseline target using the repository's build scripts, such as `buildSK`, `buildS3`, `buildS3Complete`, or `chkbitperfect`.
3. Record the generated binary names and hashes.
4. Apply the annotation branch.
5. Rebuild the same target or run `chkbitperfect` when practical.
6. Compare generated ROM/binary artifacts by hash.
7. Record the commands and hash result in the PR description.

Comment-only changes should normally preserve generated binaries. Label changes can still affect symbols, listings, or tooling, so they require the same build check even when binary output is unchanged.

## Local Audit Tooling

OpenGGF should keep either a manual audit report or a small local audit/report tool for the first milestone.

Minimum first scope:

- `skdisasm` object pointer table entries
- OpenGGF object ID constants
- OpenGGF object registry primary names
- primary evidence notes from `skdisasm` code, placement, and linked assets
- proposed upstream-safe comments or names
- confidence and decision status

The tool or manual report should produce Markdown or CSV backlog notes. It should never auto-generate upstream patches and should never write into `skdisasm`. Human review remains required because naming and comments are editorial contributions.

## Roadmap

1. Fork `skdisasm`, add the fork as `origin`, and add Sonic Retro as `upstream`.
2. Sync a clean branch from `upstream/master`.
3. Run and record a baseline build or `chkbitperfect` result.
4. Create a branch in the standalone `skdisasm` checkout for the SK object pointer pilot.
5. Prepare the pointer-table audit table using upstream tables, placement data, linked assets, ROM behavior, and OpenGGF only as a cross-check.
6. Continue local zone-by-zone object identity passes, beginning with AIZ and then adjacent high-confidence areas where primary evidence is strong.
7. Follow with data ownership passes for implemented objects.
8. Add behavior notes only where identity and routine structure are already clear.
9. Maintain an internal backlog of candidate upstream contributions grouped by confidence and review risk.
10. Wait for the external OpenGGF release-readiness trigger before any upstream issue, style-confirmation PR, or annotation PR.
11. After that trigger, create clean upstream-facing branches that exclude OpenGGF-specific Markdown/CSV audit files and process documentation.
12. Only then, consider a very small style-confirmation issue or PR if maintainer preferences are unclear, followed by narrow annotation PRs.

## Risk Management

Primary risks:

- maintainers reject OpenGGF-specific terminology
- annotations overstate uncertain behavior
- PRs become too large to review
- labels change assembled output unintentionally
- fork drifts too far from upstream

Mitigations:

- use upstream-native terms only
- keep PRs narrow
- include evidence in PR descriptions
- run build and byte-perfect checks in the fork before any future submission
- prefer comments over renames when confidence is moderate
- keep experimental work on fork-only branches until ready
- confirm maintainer style with a tiny PR or issue only after the external OpenGGF release-readiness trigger

## Success Criteria

Near-term success:

- a fork exists and can build `skdisasm`
- the object pointer pilot is prepared as a small upstream-ready branch
- the pilot preserves assembled output
- the pilot has a primary-evidence audit table
- future PR language is drafted locally as disassembly clarity, not OpenGGF synchronization
- no upstream PR or issue has been opened before OpenGGF release readiness

Long-term success:

- accepted upstream PRs improve pointer tables, object labels, routine names, and data ownership
- future OpenGGF S3K implementation work may surface candidate annotations that still require direct upstream and ROM verification
- `skdisasm` becomes easier to navigate for preservation, modding, and independent research
- the fork remains a staging area rather than a permanent incompatible branch

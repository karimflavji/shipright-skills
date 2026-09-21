# Changelog

All notable changes to this pack will be documented in this file.

Format based on Keep a Changelog. Versioning follows SemVer.

**Status:** DRAFT — not published to GitHub.  
**Product name:** **ShipRight** (locked).

## [Unreleased] — rename-only (0.2.1-draft candidate)

### Changed

- **Name locked: ProductCraft → ShipRight** everywhere in the pack
- Removed “Working name — Altaz may rename” / provisional language
- Suggested repo names: `shipright` or `shipright-skills`
- Anti-slop remains capability/feature language only (not the product name)
- Tagline unchanged: **Context before generate. Product before pixels.**

### Notes

- Still **DRAFT**. Still **no GitHub publish**. Still **no commit** until Altaz says yes.
- Content otherwise same as 0.2.0-draft (rename-only pass).

## [0.2.0-draft] — 2026-09-20

### Added

- **Working brand: ProductCraft** (provisional at the time; later locked as **ShipRight** — see Unreleased)
- Tagline everywhere it helps: **Context before generate. Product before pixels.**
- Countable Pass/Fail gates (not vibes):
  - product-design: **8-check decision gate**
  - ui-ux-design: **10-gate pre-flight**
  - ux-critique: **10-gate ship audit**
- Killer README: gap vs UI-only packs (Taste / Hallmark / Pro Max), text workflow diagram, copy-paste install for Claude Code / Cursor / Codex, universal SKILL.md note
- Demo expansion: `examples/sample-saas-onboarding/` before/after narrative + `sample-skill-outputs.md`
- Clearer **you decide / let me decide** behavior table in shared intake

### Changed

- User-facing titles: “Anti-Slop Product Design Skill Pack” → **ProductCraft** (working); anti-slop kept as capability language
- README, architecture, AGENTS, skills catalog, personal-taste, docs templates rebranded
- All three skills bumped to pack **0.2.0-draft** with gate sections
- References deepened (named slop tells, pre-generate lock, decision-gate pointer)

### Notes

- Still **DRAFT**. Still **no GitHub publish**. Still **no commit** until Altaz approves.
- Open at the time: final name, personal-taste `.skill` files, publish yes.
- Suggested repo names (later locked): `shipright` or `shipright-skills`.

## [0.1.1-draft] — 2026-09-20

### Added

- Light intake pattern: `skills/_shared/intake.md` (3–5 questions, examples + “you decide / let me decide”)
- INTAKE section near the top of all three skills (`product-design`, `ui-ux-design`, `ux-critique`)
- `personal-taste/` stub + README for future Altaz `.skill` / preference overlays (do not block drafts)
- Taste Skill–inspired pieces in `ui-ux-design`: brief inference, design dials (VARIANCE / MOTION / DENSITY), hard pre-flight gate, anti purple SaaS language
- Dual quality bar callouts in README / architecture (Taste Skill philosophy + UI UX Pro Max depth)

### Changed

- README, architecture.md, skills.md, AGENTS.md updated for intake + personal-taste + dual quality bar
- Skill pack versions marked `0.1.1-draft`
- Refuse-to-invent clarified: still required for empty docs; light intake fills partial gaps only

### Notes

- Still DRAFT. Still **no GitHub publish**. Still **no commit** until Altaz approves.
- Personal taste files from Claude / Cursor / ChatGPT are pending — hooks only.

## [0.1.0] — 2026-09-20

### Added

- Root pack files: README, architecture.md, AGENTS.md, skills.md, LICENSE, CHANGELOG
- Before-build doc templates (`docs/01`–`05`): PRD, Technical Architecture, Security & Access, Frontend Spec, Feature Ticket List
- Skill `product-design` with references for states/flows and decision checklist
- Skill `ui-ux-design` with references for layout, state coverage, and anti-slop rules
- Skill `ux-critique` with references for slop tells and severity rubric
- Example: sample SaaS onboarding (README + filled PRD excerpt)

### Notes

- Draft for Altaz / Sehar review. Pack name and Altaz’s existing Claude/Codex UX skill files still open.
- No GitHub publish until Altaz approves.

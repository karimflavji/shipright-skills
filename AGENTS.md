# AGENTS.md — Rules for AI working in this pack

**Pack:** **ShipRight** (name locked)  
**Status: DRAFT — not published.**  
**Tagline:** Context before generate. Product before pixels.

These rules apply when an agent edits or uses this skill-pack repo. The reusable product is the content under `skills/` and `docs/`.

## Scope

- This file governs **this pack**, not the end-user’s application codebase.
- Prefer editing `SKILL.md` + `references/` + `docs/` templates. Do not maintain three divergent skill trees for Claude, Cursor, and Codex.

## Doc map

| File | Read when |
|------|-----------|
| `README.md` | Install, pitch, gap vs UI-only, example prompts |
| `architecture.md` | Folder ownership and loading order |
| `skills.md` | Which skill to run |
| `docs/01`–`05` | Before any product/UI generation |
| `skills/_shared/intake.md` | Light 3–5 Q intake pattern |
| `skills/*/SKILL.md` | When that skill activates |
| `skills/*/references/` | Only as needed |
| `personal-taste/` | Optional overlays when files exist (do not block drafts) |
| `examples/` | Shape of good output + before/after demo |

## Hard rules — Do

- [ ] Require filled (or explicitly partial) docs 01–05 before inventing product or UI
- [ ] If docs are missing, **refuse**, list gaps, and point to `docs/`
- [ ] Use **light intake** only: 3–5 questions max, with examples + **you decide / let me decide**
- [ ] Follow workflow: docs → light intake → product-design → ui-ux-design → ux-critique → tickets → code
- [ ] Run countable gates: product-design **8-check decision gate**, ui-ux-design **10-gate pre-flight**, ux-critique **10-gate ship audit**
- [ ] Cover empty, loading, error, success, and permission-denied states for interactive flows
- [ ] For ui-ux-design: one-line design read, set dials, run 10-gate pre-flight before ship
- [ ] If `personal-taste/` has files, load and prefer those preferences over defaults (do not rewrite core skills)
- [ ] Keep each `SKILL.md` lean; put long tables and checklists in `references/`
- [ ] Write simple, clear English (ESL-friendly). Short sentences. Define jargon in one line.
- [ ] Mark invented assumptions as **ASSUMPTION** and prefer asking over guessing
- [ ] Update `skills.md` and `CHANGELOG.md` when adding or changing a skill
- [ ] Keep user-facing brand as **ShipRight**; use “anti-slop” as capability language only (never as the product name)

## Hard rules — Don’t

- [ ] Do not invent features, navigation, roles, or APIs not supported by docs
- [ ] Do not dump huge questionnaires — intake stays 3–5 questions
- [ ] Do not claim research, interviews, or metrics without listed sources
- [ ] Do not use dark patterns (sneaky opt-outs, fake scarcity, hidden fees)
- [ ] Do not invent fake user quotes in critiques
- [ ] Do not paste the same skill body into `.claude/`, `.cursor/`, and `.agents/` as separate sources of truth
- [ ] Do not ship UI that relies on color alone, hover alone, or emoji-as-icons
- [ ] Do not default to generic purple SaaS / mesh blob UI
- [ ] Do not block draft work waiting for Altaz personal-taste files
- [ ] Do not publish to GitHub or commit unless a human explicitly asks (this draft pack: **do not publish, do not commit**)
- [ ] Do not rename **ShipRight** without Altaz approval; keep anti-slop as capability language only

## Writing style for this pack

- Practical. Complete sentences. No hype. No “revolutionary / seamless / delightful” fluff.
- Prefer checklists, tables, and concrete examples over abstract theory.
- Every skill description must start with **“Use this when …”** (or include that phrase clearly) and name trigger tasks.
- Mark **DRAFT** until Altaz approves publish.
- Tagline when useful: **Context before generate. Product before pixels.**

## How to add a new skill

1. Create `skills/<name>/` with `name` = folder name (lowercase, hyphens)
2. Add `SKILL.md` with YAML frontmatter: `name`, `description` (what + when)
3. Add an **INTAKE** section (3–5 Qs, examples + you decide / let me decide) near the top
4. Add a **countable Pass/Fail gate** (not vibes)
5. Add `references/` only for depth that would bloat the skill body
6. Document When to Use / When NOT to Use
7. Include refuse-to-invent gate tied to `docs/`
8. Update `skills.md` catalog table
9. Add a CHANGELOG entry under the next version
10. Optionally add a short example under `examples/`

## Done criteria (before claiming a change is finished)

- [ ] Frontmatter valid: `name` matches folder; `description` has triggers
- [ ] INTAKE section present and light
- [ ] Countable Pass/Fail gate present and numbered
- [ ] Relative links to `references/` and `docs/` work
- [ ] Catalog (`skills.md`) updated
- [ ] No stub files under ~20 lines except `LICENSE`
- [ ] DRAFT status still clear until Altaz approves publish
- [ ] Workflow order and refuse gate unchanged unless intentionally revised
- [ ] Branding says **ShipRight**, not “Anti-Slop Product Design Skill Pack” as the product title

## Quality gate for generated product/UI work (using the skills)

An agent using this pack to design a feature is **not done** until:

1. Docs 01–05 exist or gaps are listed  
2. Light intake done or skipped for good reason  
3. Happy path + fail path + state table exist  
4. product-design **8-check decision gate** passed (or fails listed)  
5. Empty / loading / error / success addressed  
6. ui-ux: dials stated + **10-gate pre-flight** passed  
7. Anti-slop rules checked  
8. ux-critique **10-gate ship audit** + findings with severity and rewrite asks  

---

*DRAFT — AGENTS.md — ShipRight*

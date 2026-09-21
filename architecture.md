# Architecture — ShipRight

**Status: DRAFT — not published.**  
**Tagline:** Context before generate. Product before pixels.

This file is a map of the pack. It is not a tutorial and not application code architecture.

## What this pack is

A small system that forces **context before generate** and **product before pixels**. You fill five before-build documents, answer a few light intake questions when needed, then three agent skills decide product behavior, craft UI/UX, and critique output — with **countable Pass/Fail gates**. The goal is to stop vibe-coding tools from inventing random UI and flows.

**Unique gap vs Taste / Hallmark / Pro Max:** full PRODUCT process (5 docs + product-design + ui-ux-design + ux-critique), not UI-only.

**Quality bar:** Taste Skill philosophy (brief inference, dials, pre-flight, anti purple SaaS) + UI UX Pro Max depth (references, Avoid lists, states, a11y) + Hallmark-style countable gates (paraphrased ideas, not copied text).

**Anti-slop** = capability language (gates that block generic AI UI). **ShipRight** = locked product name.

## Folder map

```text
pack/
├── README.md                 # Humans: pitch, gap, install, demo, boundaries
├── LICENSE                   # MIT, Copyright 2026 Altaz Lavji
├── CHANGELOG.md              # Version history
├── architecture.md           # This file — pack map
├── AGENTS.md                 # Rules for AI working in this repo
├── skills.md                 # Catalog of skills + workflow order
├── docs/                     # BEFORE-BUILD templates (mandatory context)
│   ├── 01-prd.md
│   ├── 02-technical-architecture.md
│   ├── 03-security-and-access.md
│   ├── 04-frontend-spec.md
│   └── 05-feature-ticket-list.md
├── personal-taste/           # Optional overlays (pending Altaz .skill files)
│   └── README.md             # Drop preference files here; do not block drafts
├── skills/
│   ├── _shared/
│   │   └── intake.md         # Light 3–5 Q intake pattern (DRY)
│   ├── product-design/       # What the product should DO (+ 8-check decision gate)
│   ├── ux-critique/          # Review for slop (+ 10-gate ship audit)
│   └── ui-ux-design/         # How it should LOOK (+ dials + 10-gate pre-flight)
└── examples/                 # Teaching samples + before/after demo
    └── sample-saas-onboarding/
```

### Ownership

| Path | Owns | Does not own |
|------|------|--------------|
| `docs/` | Locked product context (requirements, systems, security, frontend, tickets) | Runtime code |
| `skills/_shared/` | Shared light-intake pattern | Skill-specific craft rules |
| `skills/product-design/` | Flows, states, decisions, risks, eng handoff, decision gate | Pixel styling, fake research |
| `skills/ui-ux-design/` | Layout, dials, hierarchy, components, a11y, anti-slop, 10-gate pre-flight | Product strategy, pricing |
| `skills/ux-critique/` | Findings, severity, rewrite asks, 10-gate ship audit | Inventing new product scope |
| `personal-taste/` | Optional preference overlays (merge, don’t rewrite cores) | Core skill bodies |
| `examples/` | Teaching samples | Source of truth for a real product |

## Progressive loading (how agents should read)

1. **Metadata** — skill `name` + `description` in each `SKILL.md` frontmatter (choose the right skill)
2. **Intake** — `skills/_shared/intake.md` + the skill’s INTAKE section (3–5 Qs max)
3. **Instructions** — full `SKILL.md` body when the skill activates
4. **Personal taste** — if `personal-taste/` has files, load for ui-ux defaults
5. **References** — files under `skills/*/references/` only when needed for the current task
6. **Docs** — filled `docs/01`–`05` before inventing any product or UI
7. **Gates** — run the skill’s numbered Pass/Fail gate before claiming done

Do not load every reference on every turn. Keep the skill body lean; put depth in `references/`.

## Skill ownership diagram (simple)

```text
docs 01–05  (context locked)
      │
      ▼
light intake (3–5 Qs, examples + you decide / let me decide)
      │
      ▼
product-design  →  decisions, flows, states  →  8-check DECISION GATE
      │
      ▼
ui-ux-design    →  design read + dials + layout  →  10-gate PRE-FLIGHT
      │            (+ personal-taste overlays if present)
      ▼
ux-critique     →  findings + rewrite asks  →  10-gate SHIP AUDIT
      │
      ▼
docs/05 tickets → then code / generate UI
```

If critique finds a **wrong decision** (not just a visual issue), route back to **product-design**, not only to ui-ux-design.

## Countable gates summary

| Skill | Gate name | Checks |
|-------|-----------|--------|
| product-design | Decision gate | 8 |
| ui-ux-design | Pre-flight | 10 |
| ux-critique | Ship audit | 10 |

## Hard boundaries

**IS**

- Product decisions with a clear trail
- Light guided intake (never a novel questionnaire)
- State coverage (empty, loading, error, success, denied, partial)
- UI/UX craft grounded in docs + dials + pre-flight
- Honest critique with severity
- Countable Pass/Fail gates

**IS NOT**

- Inventing PRD scope, roles, or screens when docs are missing
- Fake user interviews or fake metrics
- Dark patterns
- Legal, medical, or compliance advice as if it were certified
- Three divergent copies of the same skill for Claude / Cursor / Codex (one `skills/` source of truth)
- Blocking drafts on missing `personal-taste/` files
- UI-only taste pack without product docs (that is Taste/Hallmark territory — we complement them)

## How to extend safely

1. Add depth in `references/`, not by growing `SKILL.md` past a readable length
2. Keep intake DRY via `skills/_shared/intake.md` when possible
3. Put Altaz preference files in `personal-taste/` — do not fork core skills
4. Update `skills.md` catalog and `CHANGELOG.md`
5. Keep folder names `lowercase-with-hyphens` matching frontmatter `name`
6. Do not duplicate skill text into tool-specific folders — use copy or symlink from `skills/`
7. Keep gates numbered and Pass/Fail — do not replace with vibe language

## What rarely changes

- Workflow order: docs → light intake → product-design → ui-ux-design → ux-critique → tickets → code
- Refuse-to-invent gate when docs are missing (intake only fills light gaps)
- Split of ownership across the three skills
- Dual quality bar: Taste Skill philosophy + Pro Max depth + countable gates
- Tagline: Context before generate. Product before pixels.

---

*DRAFT — architecture.md — ShipRight*

# Architecture — ShipRight

**Status: Public draft; this change set is unreleased.**
**Tagline:** Context before generate. Product before pixels.

This file is a map of the pack. It is not a tutorial and not application code architecture.

## What this pack is

A small system that forces **context before generate** and **product before pixels**. Use relevant existing context and the five templates where needed, then three agent skills decide product behavior, craft UI/UX, and critique output with evidence-based checks. The goal is to stop vibe-coding tools from inventing random UI and flows.

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
│   │   ├── intake.md         # Light 0–5 Q intake pattern (DRY)
│   │   └── operating-contract.md # Authority, evidence and readiness
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
| `skills/_shared/` | Shared intake, decision ownership and evidence contract | Skill-specific craft rules |
| `skills/product-design/` | Flows, states, decisions, risks, eng handoff, decision gate | Pixel styling, fake research |
| `skills/ui-ux-design/` | Layout, dials, hierarchy, components, a11y, anti-slop, 10-gate pre-flight | Product strategy, pricing |
| `skills/ux-critique/` | Findings, severity, rewrite asks, 10-gate ship audit | Inventing new product scope |
| `personal-taste/` | Optional preference overlays (merge, don’t rewrite cores) | Core skill bodies |
| `examples/` | Teaching samples | Source of truth for a real product |

## Progressive loading (how agents should read)

1. **Metadata** — skill `name` + `description` in each `SKILL.md` frontmatter (choose the right skill)
2. **Context and authority** — current request, relevant project sources and `skills/_shared/operating-contract.md`; then shared intake only if needed
3. **Instructions** — full `SKILL.md` body when the skill activates
4. **Personal taste** — if `personal-taste/` has files, load for ui-ux defaults
5. **References** — files under `skills/*/references/` only when needed for the current task
6. **Docs** — relevant context for the commitment; help draft missing sections without inventing approvals
7. **Gates** — run the skill’s numbered evidence-based gate before claiming done

Do not load every reference on every turn. Keep the skill body lean; put depth in `references/`.

## Skill ownership diagram (simple)

```text
relevant context (approved decisions preserved)
      │
      ▼
light intake if needed (delegation and user choice are distinct)
      │
      ▼
product-design  →  decisions, flows, states  →  8-check DECISION GATE
      │
      ▼
ui-ux-design    →  design read + dials + layout  →  10-gate PRE-FLIGHT
      │            (+ personal-taste overlays if present)
      ▼
ux-critique     →  spec findings + rewrite asks → 10-check SPEC AUDIT
      │
      ▼
docs/05 tickets → code / generate UI → critique actual result
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
- Evidence-based checks with stable IDs

**IS NOT**

- Treating proposed scope, roles or screens as approved requirements
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
7. Use the shared evidence statuses/readiness rule; check counts are coverage, not proof of quality

## What rarely changes

- Workflow order: context → light intake if needed → product-design → ui-ux-design → specification critique → tickets → code; review the actual result before release readiness
- No invented facts, validation or approval; unknowns block only affected commitments
- Split of ownership across the three skills
- Dual quality bar: Taste Skill philosophy + Pro Max depth + countable gates
- Tagline: Context before generate. Product before pixels.

---

*DRAFT — architecture.md — ShipRight*

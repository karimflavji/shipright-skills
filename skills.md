# Skills catalog — ShipRight

**Status: DRAFT — not published.**  
**Tagline:** Context before generate. Product before pixels.

## How to choose a skill

1. If context docs are empty → fill `docs/01`–`05` first (templates are the skill before the skills).
2. If context is partial → run **light intake** (3–5 questions with examples + **you decide / let me decide**). See `skills/_shared/intake.md`.
3. If you need **what the product should do** → `product-design` (ends with **8-check decision gate**)
4. If you need **how screens should look and behave** → `ui-ux-design` (dials + **10-gate pre-flight**; load `personal-taste/` if present)
5. If you need a **review of an existing mock or generate** → `ux-critique` (**10-gate ship audit**)
6. Wrong decision found in critique → go back to `product-design`, not only visual polish

## Intake pattern (all skills)

- **Max 3–5 questions** per run (or one shared intake for a multi-skill session).
- Each question: short **examples** + **you decide / let me decide**.
- If the user picks **you decide / let me decide**, the agent chooses from docs, labels `ASSUMPTION`, continues.
- Finalize after answers — no endless questionnaires.
- Shared write-up: `skills/_shared/intake.md`
- Each `SKILL.md` has its own **INTAKE** section near the top (ux-critique stays shorter: what to critique + goal).

## Catalog

| Skill | Use when… | Gate | Do not use when… | Entry |
|-------|-----------|------|------------------|-------|
| **product-design** | Shaping flows, states, action risk, confirm/undo, eng handoff | **8-check decision gate** | Pure pixel polish or color-only tasks | `skills/product-design/SKILL.md` |
| **ui-ux-design** | Layout, dials, hierarchy, components, a11y, anti-slop against docs | **10-gate pre-flight** | Inventing product strategy or scope | `skills/ui-ux-design/SKILL.md` |
| **ux-critique** | After a mock/generate, before ship; need findings + severity | **10-gate ship audit** | As a substitute for missing PRD/docs | `skills/ux-critique/SKILL.md` |

## Recommended workflow order

```text
docs 01→05
  → light intake (3–5 Qs, you decide / let me decide)
  → product-design (+ 8-check decision gate)
  → ui-ux-design (+ dials + 10-gate pre-flight)
  → ux-critique (+ 10-gate ship audit)
  → update 05 tickets
  → code / generate UI
```

Never skip docs for big invents. Never invent product or UI when docs are missing — refuse and list gaps. Intake fills light gaps only.

## Example prompts

### A) Product design

> Read docs/01–05. Using the product-design skill, start with light intake if needed, then specify the “invite teammate” flow: job story, happy path, fail path, state table, open questions. Run the 8-check decision gate. Do not add features outside the PRD.

### B) UI/UX design

> Using the ui-ux-design skill and docs/04, light intake then one-line design read + VARIANCE/MOTION/DENSITY. Produce structure notes for the onboarding checklist screen. Include empty, loading, error, success. Run the 10-gate pre-flight. No purple SaaS. Load personal-taste/ if present.

### C) UX critique

> Using the ux-critique skill, short intake (artifact + goal), then critique. Run the 10-gate ship audit. Use clarity, hierarchy, states, trust, a11y, and AI-slop lenses. Output blockers / majors / polish with rewrite asks. No fake user quotes.

## Skill versions (draft)

| Skill | Pack version |
|-------|----------------|
| product-design | 0.2.0-draft |
| ui-ux-design | 0.2.0-draft |
| ux-critique | 0.2.0-draft |

---

*DRAFT — skills.md — ShipRight*

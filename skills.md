# Skills catalog — ShipRight

**Status: Public draft; this change set is unreleased.**
**Tagline:** Context before generate. Product before pixels.

## How to choose a skill

1. Read current instructions and relevant project context. Help draft missing sections; block only commitments that depend on unresolved facts or decisions.
2. If context is partial → run **light intake** (0–5 questions when needed with examples + separate **you decide** and **let me decide** choices). See `skills/_shared/intake.md`.
3. If you need **what the product should do** → `product-design` (ends with **8-check decision gate**)
4. If you need **how screens should look and behave** → `ui-ux-design` (dials + **10-gate pre-flight**; load `personal-taste/` if present)
5. If you need a **review of a specification, visual artifact or implementation** → `ux-critique` (**10-gate audit** for the named stage)
6. Wrong decision found in critique → go back to `product-design`, not only visual polish

## Shared rules (all skills)

Read `skills/_shared/intake.md` and `skills/_shared/operating-contract.md`.
Ask only material unanswered questions, usually one and at most five per round; zero is valid. “You decide” delegates within scope. “Let me decide” reserves the choice. Blank answers are unresolved.

Use Pass, Fail, Not verified and justified Not applicable, with artifact/version, stage and evidence. A ticket or owner does not resolve a failure. Apply the same readiness rule to every check; do not claim release readiness from a specification or screenshot.

## Catalog

| Skill | Use when… | Gate | Do not use when… | Entry |
|-------|-----------|------|------------------|-------|
| **product-design** | Shaping flows, states, action risk, confirm/undo, eng handoff | **8-check decision gate** | Pure pixel polish or color-only tasks | `skills/product-design/SKILL.md` |
| **ui-ux-design** | Layout, dials, hierarchy, components, a11y, anti-slop against docs | **10-gate pre-flight** | Inventing product strategy or scope | `skills/ui-ux-design/SKILL.md` |
| **ux-critique** | Review a specification, visual artifact or implementation with evidence | **10-gate ship audit** | When no reviewable artifact is supplied | `skills/ux-critique/SKILL.md` |

## Recommended workflow order

```text
relevant context (docs 01–05 as needed)
  → light intake (0–5 Qs if needed, separate delegation/user choice)
  → product-design (+ 8-check decision gate)
  → ui-ux-design (+ dials + 10-gate pre-flight)
  → ux-critique (+ specification audit)
  → update 05 tickets
  → code / generate UI → critique actual result
```

Do not invent facts or approved scope. Missing documents allow provisional help; unresolved consequential decisions block the affected commitment. Written plans and implemented behavior require different evidence.

## Example prompts

### A) Product design

> Read docs/01–05. Using the product-design skill, start with light intake if needed, then specify the “invite teammate” flow: job story, happy path, fail path, state table, open questions. Run the 8-check decision gate. Do not add features outside the PRD.

### B) UI/UX design

> Using the ui-ux-design skill and docs/04, light intake then one-line design read + VARIANCE/MOTION/DENSITY. Produce structure notes for the onboarding checklist screen. Include empty, loading, error, success. Run the 10-gate pre-flight. Evaluate the approved brand on its merits. Load personal-taste/ if present.

### C) UX critique

> Using the ux-critique skill, short intake (artifact + goal), then critique. Run the 10-gate ship audit. Use clarity, hierarchy, states, trust, a11y, and AI-slop lenses. Output blockers / majors / polish with rewrite asks. No fake user quotes.

## Skill versions (draft)

| Skill | Pack version |
|-------|----------------|
| product-design | 0.2.1-draft + unreleased control/evidence fixes |
| ui-ux-design | 0.2.1-draft + unreleased control/evidence fixes |
| ux-critique | 0.2.1-draft + unreleased control/evidence fixes |

---

*DRAFT — skills.md — ShipRight*

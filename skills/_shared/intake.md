# Light intake (shared) — ShipRight DRAFT

**Status: DRAFT — not published.**  
**Tagline:** Context before generate. Product before pixels.  
**Use:** Keep every skill run light. Do **not** dump a huge questionnaire.

## Rule

Ask **only 3–5 questions** total per skill run (or one shared intake if several skills run in the same session).

Each question must offer:

1. Short **examples** (so the user can pick fast)
2. A clear **you decide / let me decide** option

### What “you decide / let me decide” means

| User says | Agent does |
|-----------|------------|
| **you decide** or **let me decide** | Pick a sensible default from filled docs + PRD jobs. Label it `ASSUMPTION`. State the choice in one line. Continue — do not wait. |
| A concrete answer | Use that answer. Do not override unless it contradicts a hard doc constraint (then say so). |
| Skip / blank on one question | Treat as **let me decide** for that question only. |

After those answers, **finalize** and proceed. Do not keep interviewing.

## When docs are partial

Refuse-to-invent still stands for big gaps (empty PRD, missing screens, unknown roles). Light intake is how you fill **small** gaps when docs exist but are incomplete — not a novel of follow-ups.

## Shared question bank (pick what fits the skill)

Use at most 3–5 from this list (or skill-specific variants). Skip any that docs already answer.

### Q1 — What are we working on?

- Examples: “Invite teammate flow”, “Onboarding checklist screen”, “Pricing page redesign”, “Empty state for projects list”
- Or: **you decide / let me decide** from the PRD’s top job

### Q2 — Who is the primary user (this run)?

- Examples: “New admin”, “End customer on mobile”, “Internal ops”, “Guest before signup”
- Or: **you decide / let me decide** from `docs/01-prd.md`

### Q3 — What is the success moment?

- Examples: “Invite sent”, “First project created”, “User understands price and clicks Start”, “Error recovered without data loss”
- Or: **you decide / let me decide**

### Q4 — Constraints or must-match?

- Examples: “Match existing brand tokens”, “Mobile-first”, “No new nav items”, “Must work offline-ish”, “Strict a11y”
- Or: **you decide / let me decide** from docs 02–04

### Q5 — How bold should this feel? (mostly for ui-ux-design)

- Examples: “Calm / editorial”, “Clear SaaS tool”, “Premium marketing”, “Dense dashboard”
- Or: **you decide / let me decide** (agent sets design dials — see ui-ux-design skill)

## Agent behavior (checklist)

1. [ ] Ask the 3–5 questions in **one short message** (not one-by-one forever).
2. [ ] Every question shows examples **and** **you decide / let me decide**.
3. [ ] If the user says **you decide / let me decide**, pick defaults from docs, mark `ASSUMPTION`, continue.
4. [ ] Restate the job in **one sentence**, then start the skill workflow.
5. [ ] Do not re-ask the same thing after answers land.
6. [ ] If a required doc is still empty after intake, **refuse** inventing scope — list gaps and point to `docs/`.

## Personal taste overlays

If `personal-taste/` has preference files, treat them as defaults for Q4/Q5 style answers unless the user overrides in intake.

---

*DRAFT — skills/_shared/intake.md — ShipRight*

---
name: ui-ux-design
description: "Use this when you need high-quality anti-slop UI/UX craft against locked product docs — brief inference, design dials (variance / motion / density), layout, hierarchy, components, state coverage, accessibility, and a hard 10-gate pre-flight before shipping UI. Works with Claude Design, Figma AI, Google Stitch, Cursor, Codex, or similar. Trigger phrases: design the screen, UI spec, layout, hierarchy, make it less AI, design dials, pre-flight, not purple SaaS. Dual quality bar: Taste Skill philosophy + UI UX Pro Max depth. Light intake (3–5 questions, examples + you decide / let me decide). If personal-taste/ has files, load and prefer those preferences. Refuse to invent product scope when docs/01–05 are missing. Not for product strategy alone (use product-design) or post-hoc critique only (use ux-critique). Part of ShipRight: context before generate, product before pixels."
---

# UI/UX Design Skill — ShipRight

**Status: DRAFT — not published.**  
**Pack version:** 0.2.1-draft  
**Pack name:** **ShipRight** (locked)  
**Tagline:** Context before generate. Product before pixels.

**Anti-slop** here means hard gates that block generic AI UI — not the product name.

**Dual quality bar (both matter):**

1. **Taste Skill philosophy** ([taste-skill](https://github.com/Leonxlnx/taste-skill) / [tasteskill.dev](https://tasteskill.dev)) — anti-slop frontend for agents: read the brief, infer direction, tune dials, run a hard pre-flight before ship. Not generic purple SaaS.  
2. **UI UX Pro Max depth** ([ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)) — lean skill + fat references, priority rules with Avoid lists, state coverage, a11y, persist decisions. Not a thin vibe prompt.

We paraphrase principles into this pack. We do **not** copy proprietary skill text verbatim.

## 1. Purpose + quality bar

Design screens and UI structure that match **locked docs**, cover real states, stay accessible, and avoid AI visual slop.

### IS

- Brief inference (don’t over-ask) then craft
- Design dials: variance / motion / density
- Layout, hierarchy, spacing, type, component choices
- State-by-state UI notes
- Accessibility and anti-slop enforcement
- Hard **10-gate pre-flight** before shipping UI notes or generate prompts
- Annotated decisions an eng or generator can follow

### IS NOT

- Inventing product scope, jobs, or nav
- Pricing / roadmap strategy
- Fake research
- A huge design questionnaire
- Logo / illustration art direction unless doc 04 asks for it

## INTAKE (do this first — keep it light)

Do **not** dump a long brand interview. Gather idea context in **only 3–5 questions**, then finalize.

Shared pattern: `../_shared/intake.md`

**you decide / let me decide:** If the user picks this, choose from docs / personal-taste, label `ASSUMPTION`, state the choice in one line, continue.

### Ask these (pick 3–5; skip any docs already answer)

**1. Which screen or surface?**  
Examples: “Onboarding checklist”, “Invite modal”, “Projects empty state”, “Marketing hero only”.  
Or: **you decide / let me decide** from `docs/04-frontend-spec.md`.

**2. What job must this screen finish?**  
Examples: “Send invite”, “Create first project”, “Understand pricing and start”, “Recover from save error”.  
Or: **you decide / let me decide** from PRD + product-design handoff.

**3. How should it feel? (sets dials)**  
Examples: “Calm / editorial”, “Clear SaaS tool”, “Premium marketing”, “Dense dashboard”, “Trust-first / serious”.  
Or: **you decide / let me decide** (agent infers dials — see § Design dials).

**4. Any must-match or must-avoid?**  
Examples: “Use tokens in doc 04”, “No new nav”, “Mobile-first”, “No gradients”, “Match existing app shell”.  
Or: **you decide / let me decide**.

**5. (Optional) Existing UI or redesign?**  
Examples: “Greenfield”, “Preserve brand, fix layout”, “Full visual overhaul but keep URLs/labels”.  
Or: **you decide / let me decide**.

After answers: write a **one-line design read**, set the three dials, then refuse gate + workflow. Do not keep interviewing.

### Personal taste overlays

If `personal-taste/` has files (besides its README), **load them** and **prefer those preferences over pack defaults** for visual direction, bans, and dial baselines — unless the user overrides in intake. Core refuse gates and docs still win when they conflict.

## 2. When to use / When NOT

**Use when** docs (especially 01 and 04) exist and you need UI structure, screen craft, dial-tuned direction, or “make this less AI” guidance before or during generate.

**Do NOT use when** the problem is “what should we build?” → **product-design**. When reviewing an existing generate for findings → **ux-critique** (you may still fix craft after critique).

## 3. Refuse gate

Required before inventing any screen:

| Doc | Why |
|-----|-----|
| `docs/01-prd.md` | Jobs and non-goals |
| `docs/04-frontend-spec.md` | Screens, nav, tokens |
| `docs/03-security-and-access.md` | Denied states and role-gated UI |
| `docs/02-technical-architecture.md` | Constraints that affect UI (devices, offline) |
| `docs/05-feature-ticket-list.md` | Optional at design time; update after |

If missing: **refuse**, list gaps, point to `docs/`. You may help fill templates from light intake; label `ASSUMPTION`.

## 4. Brief inference (don’t over-ask)

Before generating UI notes or prompts, **read the room** from docs + the 3–5 intake answers:

- Page / screen kind (app shell, marketing, form, dashboard, empty state)
- Audience and seriousness
- Brand assets / tokens already locked in doc 04
- Whether this is greenfield, preserve, or overhaul

Declare a **one-line design read**, for example:

> “Trust-first B2B onboarding checklist — calm, single column, one primary CTA, low motion.”

Do **not** default to generic purple SaaS, three equal feature cards, or mesh blob heroes.

## 5. Design dials (simple English)

After the design read, set three dials from **1–10**. Every layout/motion/spacing choice should respect them. Defaults below unless intake, docs, or `personal-taste/` say otherwise.

| Dial | Meaning | Low (1–3) | Mid (4–6) | High (7–10) |
|------|---------|-----------|-----------|-------------|
| **VARIANCE** | How experimental the layout feels | Centered, calm, predictable | Clear product UI with some asymmetry | Bold / asymmetric / editorial layouts |
| **MOTION** | How much animation | Mostly static; tiny hover only | Light transitions; respect reduced-motion | Richer motion — only if you will actually ship it |
| **DENSITY** | How much info per view | Airy, marketing / gallery | Balanced product screens | Dense dashboards / data tools |

**Starter baselines (infer, then adjust):**

| Signal from brief | VARIANCE | MOTION | DENSITY |
|-------------------|----------|--------|---------|
| Calm / editorial / minimal | 5–6 | 3–4 | 2–3 |
| Clear SaaS tool (default app UI) | 5–7 | 3–5 | 4–6 |
| Premium marketing / brand | 7–8 | 5–7 | 3–4 |
| Dense admin / ops dashboard | 4–5 | 2–4 | 7–9 |
| Trust-first / regulated / serious | 3–4 | 2–3 | 4–5 |

**Rules of thumb:**

- Say the three numbers and one line of why each.
- If MOTION is high, the UI notes must describe real motion — or lower the dial.
- Always respect `prefers-reduced-motion`.
- Do not ask the user to edit skill files to change dials — override in conversation.

## 6. Design principles (simple English)

1. **One job per screen** — Match a PRD job; do not add side quests.  
2. **One primary action** — Users should not guess the next click.  
3. **Hierarchy before decoration** — Type and spacing beat gradients.  
4. **States are part of the design** — Empty/loading/error/success/denied are mandatory for interactive screens.  
5. **Truthful UI** — No fake data, fake logos, fake urgency.  
6. **Consistency** — Reuse components and tokens from doc 04 (one accent, one radius system, one page theme).  
7. **Accessible by default** — Keyboard, focus, contrast, not color-only.  
8. **Respect product type** — Banking ≠ neon startup template; follow industry seriousness implied by PRD.  
9. **Not generic purple SaaS** — Neutral bases + one real accent from brand/docs; avoid mesh blobs and templated three-card rows unless doc 04 asks.

Deep layout rules: `references/layout-and-hierarchy.md`  
State UI rules: `references/state-coverage.md`  
Anti-slop: `references/anti-slop-rules.md`

## 7. Required state coverage

For every P0 interactive screen, specify UI for:

| State | Must include |
|-------|--------------|
| Empty | Message + one primary action |
| Loading | Skeleton or progress; no fake final numbers |
| Success / populated | Real content structure + primary action |
| Error | Cause + recovery action; keep user input when possible |
| Permission denied | Clear message + safe exit / request access |
| Filtered empty | Different from true empty |
| Partial | Show working parts; isolate failures |

Details: `references/state-coverage.md`

## 8. Layout / type / spacing / components

### Layout

- Start from content structure (title, explanation, primary action, supporting list/table/form)
- Prefer single column for forms and onboarding
- Use grids for collections only when comparison helps
- Avoid card-in-card nesting beyond one level
- Match VARIANCE: low = predictable; high = intentional asymmetry — not random clutter

### Type

- Clear H1 = screen purpose  
- Body readable; avoid long centered paragraphs  
- Buttons labeled with verb + object (“Invite teammate”, not “Submit”)

### Spacing

- Consistent spacing scale from tokens (doc 04)  
- Group related items; separate unrelated groups  
- DENSITY dial controls how tight groups feel  
- Do not use huge empty hero space that pushes the job below the fold without reason

### Components

- Prefer design-system components named in doc 04  
- If the brief clearly maps to a known system (Material, Polaris, Radix/shadcn, etc.), say so honestly — or label a web approximation  
- Standardize: buttons, inputs, tables, modals, toasts, empty states  
- Icons: SVG / system set — **not emoji-as-icons**

## 9. Accessibility (non-negotiable checks)

- [ ] Text contrast aims for WCAG AA  
- [ ] Focus ring visible; never remove without replacement  
- [ ] Primary tasks completable by keyboard  
- [ ] No hover-only critical actions  
- [ ] Touch targets ~44×44 where touch matters  
- [ ] Errors announced with text, not color alone  
- [ ] Motion respects reduced-motion  

## 10. Anti-slop rules (summary)

Full list: `references/anti-slop-rules.md`

**Ban unless doc 04 or personal-taste explicitly allows:**

- Generic purple / pink AI gradients and mesh blobs  
- Templated “three equal feature cards” as the default layout  
- Invented nav / dashboard widgets unrelated to jobs  
- Fake charts, fake testimonials, fake product UI made of empty divs  
- Glassmorphism everywhere  
- Emoji-as-icons  
- Scroll-cue theater (“Scroll to explore”) on ordinary product screens  
- Seven-step delight onboarding not in PRD  
- Centered-everything as the only layout idea  
- Inter/Roboto as both display and body with no pairing when brand needs character (app shells may stay system sans — say why)

**Prefer:** neutral base + one brand accent, clear hierarchy, real states, tokens from docs.

## 11. Workflow

1. [ ] Light intake (3–5 Qs) — or skip if docs + handoff already answer  
2. [ ] Load `personal-taste/` if present  
3. [ ] Refuse gate — docs present?  
4. [ ] One-line design read + set VARIANCE / MOTION / DENSITY  
5. [ ] Read PRD jobs + doc 04 screen inventory  
6. [ ] Confirm screen ID and primary action  
7. [ ] Draft **structure notes** (sections top → bottom)  
8. [ ] Specify each required state  
9. [ ] Apply layout + a11y + anti-slop references  
10. [ ] Annotate decisions (why this layout; cite dials + docs)  
11. [ ] **10-gate pre-flight** (below) — every box honest Pass/Fail  
12. [ ] Hand off to **ux-critique**, then tickets in doc 05  

## 12. Output format

```text
## UI/UX design — [Screen ID / name]
Docs used: 01, 04, … (list gaps if any)
Personal taste loaded: yes/no
Job supported: …
Design read (one line): …
Dials: VARIANCE=N · MOTION=N · DENSITY=N (why…)

### Structure (top → bottom)
1. …
2. …

### Components
| Area | Component | Notes |
|------|-----------|-------|

### States
| State | UI | Copy direction | Actions |
|-------|----|----------------|---------|

### Tokens / visual
- Color:
- Type:
- Spacing:
- What we explicitly AVOID:

### A11y notes
- …

### Annotated decisions
- Decision → rationale (cite doc + dial)

### Open questions
- …

### 10-gate pre-flight
| # | Check | Pass/Fail | Note |
|---|-------|-----------|------|
| 1 | … | | |
```

## 13. Pre-flight checklist (10 gates — hard gate, no box, no ship)

Every item must honestly **Pass** or **Fail** with one short note.  
**Fail** means fix or lower scope before shipping UI notes / generate prompts.  
Do not mark Pass on vibes — cite evidence from docs or your structure notes.

| # | Gate | Pass criteria |
|---|------|---------------|
| 1 | **Screen locked** | Screen exists in doc 04 (not invented) |
| 2 | **Design read + dials** | One-line read + VARIANCE / MOTION / DENSITY stated with why |
| 3 | **Primary action** | Matches a PRD job; verb + object label |
| 4 | **States covered** | Empty / loading / error / success / denied specified (filtered empty if lists) |
| 5 | **Anti-slop** | No purple SaaS / mesh blob / emoji-icon / fake social proof unless docs or personal-taste allow |
| 6 | **Nav honesty** | Nav matches doc 04 — no invented destinations |
| 7 | **A11y baseline** | Contrast, focus, keyboard, not color-only, reduced-motion considered |
| 8 | **Motion honesty** | Motion matches MOTION dial; if dial high, real motion notes exist |
| 9 | **Dial fidelity** | Density and variance match dials (not accidental clutter or empty hero theater) |
| 10 | **Assumptions + critique-ready** | ASSUMPTIONs labeled; output ready for **ux-critique** |

**Ship rule:** All 10 must be **Pass**, or Fail items listed with a fix plan before generate.

## 14. References

- `../_shared/intake.md`
- `../../personal-taste/` (optional overlays)
- `references/layout-and-hierarchy.md`
- `references/state-coverage.md`
- `references/anti-slop-rules.md`
- Pack docs: `../../docs/`

---

*DRAFT — skills/ui-ux-design/SKILL.md — ShipRight 0.2.1-draft*

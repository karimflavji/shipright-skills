---
name: ui-ux-design
description: "Use this when designing or refining a screen, interaction, layout or UI specification from product context, or making a focused visual correction. Preserve approved decisions and the existing design system when present. Part of ShipRight."
---

# UI/UX Design Skill — ShipRight

**Status: Public draft; these changes are unreleased.**
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

## INTAKE

Apply [the shared operating contract](../_shared/operating-contract.md) for decision ownership, missing context, evidence statuses and readiness. Use [shared intake](../_shared/intake.md); do not repeat questions already answered.

Identify the screen, its job and existing design constraints. Ask about direction only if unresolved; do not reopen approved choices for a small correction. Personal taste can guide visual defaults, but cannot override current project decisions, truthfulness or accessibility.

**You decide** delegates only the named choice. **Let me decide** reserves it for the user. Blank answers stay unresolved; continue independent work.

## 2. When to use / When NOT

**Use when** you have relevant product context and need UI structure, screen craft, direction, or “make this less AI” guidance before or during generate. Help draft missing context provisionally.

**Do NOT use when** the problem is “what should we build?” → **product-design**. When reviewing an existing generate for findings → **ux-critique** (you may still fix craft after critique).

## 3. Context check

Use current product scope, screen jobs, access rules and implementation constraints from available project context. Docs 01–04 are templates for that context; 05 records tickets when ready.

Help draft missing sections provisionally. Do not invent approved screens or implementation capabilities. Block only the affected commitment when an unknown changes scope, access, cost or recovery; continue independent work. An approved user correction can supersede an older document.

## 4. Brief inference (don’t over-ask)

Before generating UI notes or prompts, infer direction from relevant context and any needed intake answers:

- Page / screen kind (app shell, marketing, form, dashboard, empty state)
- Audience and seriousness
- Brand assets / tokens already locked in doc 04
- Whether this is greenfield, preserve, or overhaul

Declare a **one-line design read**, for example:

> “Trust-first B2B onboarding checklist — calm, single column, one primary CTA, low motion.”

Do **not** default to generic purple SaaS, three equal feature cards, or mesh blob heroes.

## 5. Design dials (simple English)

The three **1–10** dials are optional communication aids. Use them only when they clarify an unresolved design choice; they are not evidence of quality or prerequisites for a focused correction. Existing product decisions take precedence over these starter defaults.

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

- If using dials, explain the choices briefly; otherwise use a plain-language direction.
- If MOTION is high, the UI notes must describe real motion — or lower the dial.
- Always respect `prefers-reduced-motion`.
- Do not ask the user to edit skill files to change dials — override in conversation.

## 6. Design principles (simple English)

1. **One job per screen** — Match a PRD job; do not add side quests.  
2. **Clear action hierarchy** — Users should understand the next action for their current task.
3. **Hierarchy before decoration** — Type and spacing beat gradients.  
4. **States are part of the design** — Specify relevant empty/loading/error/success/denied behavior; explain genuine non-applicability.
5. **Truthful UI** — No fabricated proof or fake urgency; synthetic fixture data must be labeled.
6. **Consistency** — Reuse components and tokens from doc 04 (one accent, one radius system, one page theme).  
7. **Accessible by default** — Keyboard, focus, contrast, not color-only.  
8. **Respect product type** — Banking ≠ neon startup template; follow industry seriousness implied by PRD.  
9. **Product-specific craft** — Judge the approved palette and layout by purpose, hierarchy and accessibility; a color or pattern is not an automatic failure.

Deep layout rules: `references/layout-and-hierarchy.md`  
State UI rules: `references/state-coverage.md`  
Anti-slop: `references/anti-slop-rules.md`

## 7. Required state coverage

For every P0 interactive screen, specify applicable UI states below. Use Not applicable with a reason where behavior does not exist; do not invent filters or roles to satisfy a checklist:

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
- Icons: prefer the approved system; evaluate meaning, accessible labels and consistency rather than rejecting a symbol solely because it is emoji.

## 9. Accessibility (non-negotiable checks)

- [ ] Text contrast aims for WCAG AA  
- [ ] Focus ring visible; never remove without replacement  
- [ ] Primary tasks completable by keyboard  
- [ ] No hover-only critical actions  
- [ ] Touch targets ~44×44 where touch matters  
- [ ] Errors announced with text, not color alone  
- [ ] Motion respects reduced-motion  

## 10. Integrity and visual judgment

Use [anti-slop-rules.md](references/anti-slop-rules.md). Truthfulness, meaningful action/cost disclosure and usable access to critical controls cannot be waived by docs or personal taste. Label synthetic fixtures; do not silently add unapproved scope.

Gradients, purple palettes, cards, blur, symmetry, emoji and a single font are visual choices, not automatic failures. Evaluate their product purpose, brand fit, hierarchy, accessibility and actual use. Explain the specific problem before recommending a change.

## 11. Workflow

1. [ ] Light intake (0–5 questions when needed) — or skip if docs + handoff already answer
2. [ ] Load `personal-taste/` if present  
3. [ ] Context check — what supports the requested commitment?
4. [ ] One-line design read; dials only if useful
5. [ ] Read PRD jobs + doc 04 screen inventory  
6. [ ] Confirm screen ID and primary action  
7. [ ] Draft **structure notes** (sections top → bottom)  
8. [ ] Specify each required state  
9. [ ] Apply layout + a11y + anti-slop references  
10. [ ] Annotate decisions (why this layout; cite product context and any useful dials)
11. [ ] **10-gate pre-flight** (below) — statuses supported by evidence
12. [ ] Hand the specification to **ux-critique**, then update relevant tickets. Actual results need artifact/implementation evidence before release readiness.

## 12. Output format

```text
## UI/UX design — [Screen ID / name]
Docs used: 01, 04, … (list gaps if any)
Personal taste loaded: yes/no
Job supported: …
Design read (one line): …
Dials, if useful: VARIANCE=N · MOTION=N · DENSITY=N (why…)
Review stage / artifact version / requested next stage: …

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
- Decision → rationale (cite current context; dials only if useful)

### Open questions
- …

### 10-gate pre-flight
| # | Check | Status | Note |
|---|-------|-----------|------|
| 1 | … | | |
```

## 13. Pre-flight checklist (10 checks)

Evaluate readiness for the named specification/generation step using the shared contract. Use Pass, Fail, Not verified or justified Not applicable, with evidence and next action. A fix plan does not resolve a failed check. These checks do not certify a generated or running result.

| # | Gate | Criterion |
| --- | --- | --- |
| 1 | Screen context | Screen/job is approved or explicitly provisional; source is identified |
| 2 | Design direction | Direction fits user, content and approved constraints; dials optional |
| 3 | Action hierarchy | Actions support the user's task with meaningful labels |
| 4 | States | Relevant states have UI, feedback and recovery; no invented filters/roles |
| 5 | Integrity and craft | No fabricated proof or unapproved scope; visual judgments explain actual impact |
| 6 | Navigation | Destinations follow current project decisions |
| 7 | Accessibility specification | Relevant keyboard/focus, contrast, non-color cues and reduced-motion requirements are specified; implementation remains separately unverified |
| 8 | Motion | Relevant motion has purpose and reduced-motion behavior; mark Not applicable when absent |
| 9 | Content and density | Planned hierarchy works with realistic content; dials are not proof |
| 10 | Review handoff | Artifact/version, assumptions, unresolved issues and next stage are explicit |

Use the shared readiness rule across all ten checks. Do not mark Ready from failed items merely listed with fix plans.

## 14. References

- [Shared intake](../_shared/intake.md)
- [Operating contract](../_shared/operating-contract.md)
- `../../personal-taste/` (optional overlays)
- `references/layout-and-hierarchy.md`
- `references/state-coverage.md`
- `references/anti-slop-rules.md`
- Pack docs: `../../docs/`

---

*DRAFT — skills/ui-ux-design/SKILL.md — ShipRight 0.2.1-draft*

---
name: ux-critique
description: "Use this when you need to review a mock, generated screen, or flow before shipping — clarity, hierarchy, empty/error/loading states, trust, accessibility, and AI-slop tells. Trigger phrases: critique this UI, UX review, heuristic audit, find slop, pre-ship review, what’s wrong with this flow, ship audit. Start with short light intake (what to critique + goal, 3–5 max, examples + you decide / let me decide). Run the 10-gate ship audit (Pass/Fail). Output findings with severity and rewrite asks. Never invent fake user quotes. If docs/01–05 are missing, refuse to invent product fixes; ask for gaps or point to docs/. Route wrong product decisions back to product-design. Part of ShipRight: context before generate, product before pixels."
---

# UX Critique Skill — ShipRight

**Status: DRAFT — not published.**  
**Pack version:** 0.2.1-draft  
**Pack name:** **ShipRight** (locked)  
**Tagline:** Context before generate. Product before pixels.

## 1. Purpose

Review screens and flows to catch weak UX and **AI slop** before ship. Produce actionable findings — not vague taste comments. End with a **10-gate ship audit** (Pass/Fail).

### IS

- Structured critique with severity
- Slop detection (generic dashboards, random gradients, happy-path-only, purple SaaS tells)
- Rewrite asks tied to docs when docs exist
- Countable ship gate — not vibes

### IS NOT

- A substitute for a missing PRD
- Fake personas or invented interview quotes
- Full visual redesign (hand to **ui-ux-design** after decisions are sound)
- Product strategy from scratch (hand to **product-design**)
- A huge questionnaire

## INTAKE (do this first — keep it short)

Critique intake is shorter than design intake, but still **3–5 questions max**, with examples and **you decide / let me decide**.

Shared pattern: `../_shared/intake.md`

**you decide / let me decide:** If the user picks this, choose from the artifact + docs, label `ASSUMPTION`, continue.

### Ask these (pick up to 5; skip what is already obvious)

**1. What are we critiquing?**  
Examples: “This Figma frame”, “Stitch generate of invite flow”, “Coded onboarding checklist”, “Whole signup path”.  
Or: **you decide / let me decide** from the artifact the user already attached.

**2. What is the goal of this review?**  
Examples: “Ship check”, “Find blockers only”, “Slop scan”, “A11y pass”, “Compare to docs 01+04”.  
Or: **you decide / let me decide** → default to full pre-ship review (clarity, flow, hierarchy, states, trust, a11y, slop).

**3. Who is the primary user we should judge for?**  
Examples: “First-time admin”, “Mobile customer”, “Power user”.  
Or: **you decide / let me decide** from PRD.

**4. Any known constraints?**  
Examples: “Cannot change IA this sprint”, “Brand tokens locked”, “Must keep current CTA label”.  
Or: **you decide / let me decide**.

**5. (Optional) Docs available?**  
Examples: “Yes — docs/ filled”, “Only PRD”, “No docs yet”.  
Or: **you decide / let me decide** → agent checks `docs/` and reports gaps.

After answers: state the critique goal in one line, then refuse gate + lenses. Do not keep interviewing.

## 2. When to use / When NOT

**Use when** a mock, Figma AI / Stitch / Claude Design output, or coded UI exists and someone asks: review, critique, audit, find issues, is this shippable?

**Do NOT use when** there is no artifact to review and docs are empty — first fill `docs/` and run **product-design**. Do not use as pure brand illustration feedback.

## 3. Refuse gate

| Situation | Action |
|-----------|--------|
| Artifact present + docs present | Critique against docs; flag invents that contradict docs |
| Artifact present + docs missing | Critique **only** usable/slop/a11y issues; **refuse** to invent new product scope or nav; list doc gaps |
| No artifact | Refuse critique; ask for screen/flow or link to generate after docs |

Point gaps to `docs/01`–`05`. Light intake does not replace a missing artifact.

## 4. Critique lenses

Work through each lens. Skip a lens only if truly N/A and say why.

1. **Clarity** — Can a new user tell what this screen is for in 5 seconds?  
2. **Flow** — Are steps necessary? Dead ends? Missing back/cancel?  
3. **Hierarchy** — Is the primary action obvious? Is noise competing?  
4. **States** — Empty / loading / error / success / denied present and distinct?  
5. **Trust** — Honest copy? Scary permissions explained? No dark patterns?  
6. **Accessibility** — Contrast, focus, keyboard, not color-only, touch size?  
7. **AI slop tells** — See `references/slop-tells.md` (purple SaaS, mesh blobs, emoji-icons, fake proof, happy-path-only, centered-everything)

## 5. Severity rubric

Use `references/severity-rubric.md`. Short form:

| Severity | Meaning | Ship rule |
|----------|---------|-----------|
| **Blocker** | Stops the job, causes harm, or major access failure | Do not ship |
| **Major** | Serious confusion, missing critical state, strong slop that misleads | Fix before release if possible |
| **Polish** | Visual/copy nits that do not block the job | Backlog OK |

## 6. Output format

```text
## Critique summary
- Artifact:
- Intake goal:
- Docs available: yes/partial/no (list gaps)
- Verdict: ship / fix-then-ship / re-decide product

## Findings
### B1 — [Blocker] Title
- Lens:
- Evidence:
- Impact:
- Rewrite ask:
- Route: product-design / ui-ux-design / eng / copy

### M1 — [Major] ...
### P1 — [Polish] ...

## AI-slop tells spotted
- ...

## What looks good
- (honest; 2–5 bullets)

## 10-gate ship audit
| # | Gate | Pass/Fail | Note |
|---|------|-----------|------|
| 1 | … | | |

## Next steps
1. ...
```

### Rewrite ask quality

Bad: “Make it nicer.”  
Good: “Replace gradient hero with brand token background from doc 04; keep one primary CTA — Invite teammate.”

## 7. What never to invent

- Fake user quotes (“Users said…”) without sources  
- Fake metrics (“this will lift conversion 20%”)  
- New features to “engage” users not in PRD  
- Legal conclusions  

If research is needed, say **unknown — needs research**, do not fabricate.

## 8. Routing

| Finding type | Route to |
|--------------|----------|
| Wrong flow / wrong decision / missing job | **product-design** |
| Layout, hierarchy, visual slop, a11y craft, dials/pre-flight | **ui-ux-design** |
| Permissions / roles wrong | doc **03** + product-design |
| Ticket / AC update | doc **05** |

## 9. Ship audit (10 gates — hard gate, not vibes)

Every item must honestly **Pass** or **Fail** with one short note.  
Use this **after** findings. Verdict rules:

- Any **Fail** on gates 1–6 → verdict **fix-then-ship** or **re-decide product** (not ship)
- Gates 7–10 Fail → may ship only if deferred as Major/Polish tickets with owners

| # | Gate | Pass criteria |
|---|------|---------------|
| 1 | **Artifact** | A real screen/flow exists to review (not imaginary) |
| 2 | **Docs honesty** | Docs present **or** gaps listed; no invented product fixes when docs missing |
| 3 | **Job clarity** | A new user can tell the screen job in ~5 seconds (or finding filed) |
| 4 | **Primary action** | One clear primary CTA; verb + object; matches PRD when docs exist |
| 5 | **States** | Empty / loading / error / success / denied not missing on P0 interactive UI (or findings filed as Blocker/Major) |
| 6 | **No blockers open** | Zero unresolved Blocker findings |
| 7 | **Anti-slop** | No unaddressed strong slop tells (purple gradient hero, emoji-icons, fake proof, invented nav) — or Majors filed |
| 8 | **Trust / dark patterns** | No sneaky opt-outs, fake urgency, hidden costs |
| 9 | **A11y baseline** | Contrast, focus, keyboard, not color-only checked — or findings filed |
| 10 | **Rewrite path** | Every Blocker/Major has a concrete rewrite ask + route (product-design / ui-ux-design / eng / copy) |

**Verdict mapping:**

| Result | Verdict |
|--------|---------|
| Gates 1–6 Pass + no open blockers | **ship** (polish OK later) |
| Gate 1–6 any Fail, or open blockers | **fix-then-ship** |
| Wrong product decision / missing job | **re-decide product** → product-design |

## 10. Quality gate (skill completeness)

- [ ] Intake stayed within 3–5 questions  
- [ ] Refuse gate handled  
- [ ] Each finding has severity + rewrite ask  
- [ ] No fake quotes  
- [ ] Slop lens considered  
- [ ] **10-gate ship audit** filled Pass/Fail  
- [ ] Blockers clearly called out  

## 11. References

- `../_shared/intake.md`
- `references/slop-tells.md`
- `references/severity-rubric.md`

---

*DRAFT — skills/ux-critique/SKILL.md — ShipRight 0.2.1-draft*

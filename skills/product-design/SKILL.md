---
name: product-design
description: "Use this when you need to decide what a product should do — shape flows, specify states, review interaction decisions, harden edge cases, or write an engineering handoff. Trigger phrases: design the flow, what states, confirm vs undo, edge cases, product spec, handoff to eng, decision gate. Start with light intake (3–5 questions, examples + you decide / let me decide). End with the 8-check decision gate (Pass/Fail). Refuse to invent product scope when docs/01–05 are missing; ask for gaps or point to docs/. Do not use for pixel polish alone or fake user research. Part of ShipRight: context before generate, product before pixels."
---

# Product Design Skill — ShipRight

**Status: DRAFT — not published.**  
**Pack version:** 0.2.1-draft  
**Pack name:** **ShipRight** (locked)  
**Tagline:** Context before generate. Product before pixels.

## 1. Purpose

### IS

- Decide what the product should **do**
- Shape flows, reachable states, and action consequences
- Record decisions so AI and eng do not invent behavior
- Hand off clear specs to **ui-ux-design** and engineering
- Pass an **8-check decision gate** before claiming done

### IS NOT

- Pixel styling, color palettes, or illustration
- Inventing PRD scope, roles, or metrics
- Claiming user interviews without sources
- Legal or compliance certification
- A huge questionnaire dump

## INTAKE (do this first — keep it light)

Do **not** open with a long form. Gather idea context in **only 3–5 questions**, then finalize.

Shared pattern: `../_shared/intake.md`

**you decide / let me decide:** If the user picks this, choose from docs, label `ASSUMPTION`, state the choice in one line, continue.

### Ask these (pick 3–5; skip any docs already answer)

**1. What flow or decision are we shaping?**  
Examples: “Invite teammate”, “Cancel subscription”, “First-run checklist”, “Permission denied recovery”.  
Or: **you decide / let me decide** from the PRD’s top job.

**2. Who is the primary user for this run?**  
Examples: “New admin”, “End user on mobile”, “Guest before signup”, “Internal ops”.  
Or: **you decide / let me decide** from `docs/01-prd.md`.

**3. What is the success moment?**  
Examples: “Invite sent and pending”, “User recovers from error without losing input”, “Teammate accepts and lands in app”.  
Or: **you decide / let me decide**.

**4. Any hard constraints?**  
Examples: “No new roles”, “Must work with existing API only”, “Destructive actions need confirm”, “Mobile-first”.  
Or: **you decide / let me decide** from docs 02–03.

**5. (Optional) What is explicitly out of scope this run?**  
Examples: “No billing”, “No redesign of nav”, “No new onboarding steps”.  
Or: **you decide / let me decide** from PRD non-goals.

After answers: restate the job in one sentence, mark any `ASSUMPTION`, then run the refuse gate and workflow below. Do not keep interviewing.

## 2. When to use / When NOT

**Use when** the user asks to design a flow, define states, choose confirm vs undo, map edge cases, or write a product handoff.

**Do NOT use when** the task is only visual polish, only copy tone, or pure backend with no product surface. For post-generate review, prefer **ux-critique**. For layout craft against a locked spec, prefer **ui-ux-design**.

## 3. Required inputs (refuse gate)

Before inventing any flow or feature, check for filled (or explicitly partial) docs:

| Doc | Path | Minimum needed |
|-----|------|----------------|
| PRD | `docs/01-prd.md` | Problem, users, goals, non-goals, scope |
| Technical Architecture | `docs/02-technical-architecture.md` | Systems map + constraints (or UNKNOWN) |
| Security & Access | `docs/03-security-and-access.md` | Roles + key permissions |
| Frontend Spec | `docs/04-frontend-spec.md` | Screen/nav inventory if UI is in scope |
| Feature Tickets | `docs/05-feature-ticket-list.md` | May be empty at start; update after |

**If docs are missing or empty:**

1. **Refuse** to invent product behavior  
2. List the **gaps** (which sections)  
3. Point the user to `docs/` templates  
4. You may help **fill** templates using light intake answers — mark assumptions as `ASSUMPTION`

Light intake fills small gaps. It does **not** replace an empty PRD for inventing a whole product.

## 4. Modes (pick one per run)

| Mode | Goal |
|------|------|
| **Shape flow** | Happy path + fail path + decision points |
| **Spec states** | State table for a screen or flow |
| **Decision review** | Confirm vs undo, modal vs inline, etc. |
| **Edge-case harden** | Permission denied, partial data, retries, race cases |

Say which mode you are in at the start of the output.

## 5. Step checklist

1. [ ] Light intake (3–5 Qs) complete or skipped because docs already answer  
2. [ ] Confirm docs 01–05 status (refuse gate)  
3. [ ] Restate the **user job** in one sentence (from PRD + intake)  
4. [ ] Pick mode  
5. [ ] List in-scope / out-of-scope from PRD (do not expand)  
6. [ ] Draft happy path (numbered)  
7. [ ] Draft fail / cancel path  
8. [ ] Build state table (see `references/states-and-flows.md`)  
9. [ ] Apply decision checklist (`references/decision-checklist.md`)  
10. [ ] List open questions (do not silently answer them)  
11. [ ] Handoff notes for ui-ux-design + eng  
12. [ ] **8-check decision gate** (Pass/Fail — below)

## 6. Required outputs

Every completed run must include:

1. **Job** — who + verb + object  
2. **Happy path** — numbered steps  
3. **Fail / cancel path** — numbered steps  
4. **State table** — at least: empty, loading, success, error, permission denied (add partial / filtered-empty when relevant)  
5. **Key decisions** — with short rationale tied to docs  
6. **Open questions** — unresolved items  
7. **Handoff** — what ui-ux-design and eng need next  
8. **Decision gate** — all 8 checks marked Pass or Fail

### State table template

| State | User sees | System does | Primary action |
|-------|-----------|-------------|----------------|
| Empty | | | |
| Loading | | | |
| Success | | | |
| Error | | | |
| Permission denied | | | |
| Partial | | | |
| Filtered empty | | | |

## 7. Decision rules (short)

- **Destructive + hard to undo** → confirm  
- **Destructive + easy to undo** → prefer undo toast when safe  
- **Empty** (never had data) ≠ **filtered empty** (filters hide data) — different copy and actions  
- **Permission denied** is a real state — not a blank page  
- Prefer **inline** errors for field issues; **page-level** for hard blockers  
- Do not add steps that are not in PRD scope  

Full checklist: `references/decision-checklist.md`

## 8. Handoff

### To ui-ux-design

- Screen IDs from doc 04  
- State table  
- Primary / secondary actions  
- Content that must appear (not lorem)

### To engineering

- Acceptance-oriented behavior  
- API/entity names only if present in doc 02 — else mark UNKNOWN  
- Analytics event names if listed in doc 04  
- Explicit non-goals

### Back to docs

- Suggest updates to `docs/05-feature-ticket-list.md` after decisions settle

## 9. Decision gate (8 checks — hard gate, not vibes)

Every item must honestly **Pass** or **Fail** with one short note.  
**Rule:** Any **Fail** on checks 1–6 blocks handoff to ui-ux-design / generate. Checks 7–8 may Fail only if listed as open questions with owners.

| # | Check | Pass / Fail | Note |
|---|-------|-------------|------|
| 1 | Docs refuse gate handled (docs present or gaps listed; no invented scope) | | |
| 2 | Job restated in one sentence from PRD + intake | | |
| 3 | Happy path written and stays inside PRD scope | | |
| 4 | Fail / cancel path written | | |
| 5 | State table includes at least empty, loading, success, error, permission denied | | |
| 6 | Empty ≠ filtered empty called out when lists/filters exist | | |
| 7 | Destructive / high-risk actions have confirm or undo decision recorded | | |
| 8 | Open questions + ASSUMPTIONs explicit (none silently invented) | | |

**Done only if:** checks 1–6 are Pass, and 7–8 are Pass **or** Fail with named open questions.

## 10. References

- `../_shared/intake.md`
- `references/states-and-flows.md`
- `references/decision-checklist.md`
- Pack docs: `../../docs/`

---

*DRAFT — skills/product-design/SKILL.md — ShipRight 0.2.1-draft*

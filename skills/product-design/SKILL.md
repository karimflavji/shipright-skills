---
name: product-design
description: "Use this when shaping product flows, specifying states, reviewing interaction decisions, hardening edge cases or preparing a build handoff. Preserve the owned outcome and approved product decisions. Not for visual polish alone. Part of ShipRight."
---

# Product Design Skill — ShipRight

**Status: Public draft; these changes are unreleased.**
**Pack version:** 0.2.1-draft  
**Pack name:** **ShipRight** (locked)  
**Tagline:** Context before generate. Product before pixels.

## 1. Purpose

### IS

- Decide what the product should **do**
- Shape flows, reachable states, and action consequences
- Record decisions so AI and eng do not invent behavior
- Hand off clear specs to **ui-ux-design** and engineering
- Evaluate the **8-check decision gate** for the named handoff stage

### IS NOT

- Pixel styling, color palettes, or illustration
- Inventing PRD scope, roles, or metrics
- Claiming user interviews without sources
- Legal or compliance certification
- A huge questionnaire dump

## INTAKE

Apply [the shared operating contract](../_shared/operating-contract.md) for decision ownership, missing context, evidence statuses and readiness. Use [shared intake](../_shared/intake.md); do not repeat questions already answered.

Restate the user job and select an existing mode. Ask only about missing flow, user, outcome or constraints that change this decision.

**You decide** delegates only the named choice. **Let me decide** reserves it for the user. Blank answers stay unresolved; continue independent work.

## 2. When to use / When NOT

**Use when** the user asks to design a flow, define states, choose confirm vs undo, map edge cases, or write a product handoff.

**Do NOT use when** the task is only visual polish, only copy tone, or pure backend with no product surface. For post-generate review, prefer **ux-critique**. For layout craft against a locked spec, prefer **ui-ux-design**.

## 3. Relevant inputs

Read available project context for the requested decision. The five templates record product, architecture, access, frontend and tickets; equivalent existing documents or explicit user instructions can supply those facts.

- PRD: user, outcome, approved scope and non-goals.
- Architecture: observed capabilities and constraints affecting this flow.
- Access: actual actors, permissions and consequential effects.
- Frontend: existing screen jobs/navigation when UI is involved.
- Tickets: relevant acceptance criteria, or update after decisions settle.

Missing files do not block clarification or provisional drafting. Help fill relevant gaps and label proposals/unknowns. Apply the shared contract: block only the affected commitment, not independent work. Do not turn missing roles, APIs or approvals into facts.

## 4. Modes (pick one per run)

| Mode | Goal |
|------|------|
| **Shape flow** | Happy path + fail path + decision points |
| **Spec states** | State table for a screen or flow |
| **Decision review** | Confirm vs undo, modal vs inline, etc. |
| **Edge-case harden** | Permission denied, partial data, retries, race cases |

Say which mode you are in at the start of the output.

## 5. Step checklist

1. [ ] Light intake (0–5 questions when needed) complete or skipped because docs already answer
2. [ ] Identify relevant context and unresolved dependencies
3. [ ] Restate the **user job** in one sentence (from PRD + intake)  
4. [ ] Pick mode  
5. [ ] List in-scope / out-of-scope from PRD (do not expand)  
6. [ ] Draft happy path (numbered)  
7. [ ] Draft fail / cancel path  
8. [ ] Build state table (see `references/states-and-flows.md`)  
9. [ ] Apply decision checklist (`references/decision-checklist.md`)  
10. [ ] List open questions (do not silently answer them)  
11. [ ] Handoff notes for ui-ux-design + eng  
12. [ ] **8-check decision gate** with evidence and next actions (below)

## 6. Required outputs

For a flow/state handoff, include the relevant outputs below. For a narrow decision or correction, report only affected behavior and checks; preserve unrelated approvals:

1. **Job** — who + verb + object  
2. **Happy path** — numbered steps  
3. **Fail / cancel path** — numbered steps  
4. **State table** — applicable empty, loading, success, error and permission-denied states; partial / filtered-empty only when the flow supports them
5. **Key decisions** — with short rationale tied to docs  
6. **Open questions** — unresolved items  
7. **Handoff** — what ui-ux-design and eng need next  
8. **Decision gate** — relevant checks marked Pass, Fail, Not verified or Not applicable with evidence

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

## 9. Decision gate (8 checks)

Use the shared contract's four statuses and one readiness rule. Identify the artifact/version, handoff stage and critical requirements first. Each row needs evidence and next action. A logged risk or named owner cannot turn failure into a pass, including checks 7–8.

| # | Check | Status | Evidence / next action |
| --- | --- | --- | --- |
| 1 | Relevant context supports the affected commitment; unknown dependencies and provisional choices are explicit | | |
| 2 | User job and intended outcome are clear | | |
| 3 | Happy path follows approved or explicitly provisional scope | | |
| 4 | Failure/cancel behavior states preserved input, persistent effects and recovery | | |
| 5 | Required states have defined behavior; unsupported states are Not applicable with a reason | | |
| 6 | Empty differs from filtered empty when filtering exists; no filters invented for this check | | |
| 7 | Consequential actions have actor, effect and supported confirm/recovery decisions | | |
| 8 | Open questions and assumptions have decision status, source and disposition | | |

**Readiness:** Re-decide, Fix first, Not established, or Ready for the named next stage, as defined by the shared contract. Never claim handoff readiness from gaps listed or risks assigned alone.

## 10. References

- [Shared intake](../_shared/intake.md)
- [Operating contract](../_shared/operating-contract.md)
- `references/states-and-flows.md`
- `references/decision-checklist.md`
- Pack docs: `../../docs/`

---

*DRAFT — skills/product-design/SKILL.md — ShipRight 0.2.1-draft*

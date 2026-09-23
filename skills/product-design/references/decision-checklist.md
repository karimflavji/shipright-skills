# Decision checklist — reference

**Status: DRAFT.** Use during **Decision review** mode and before marking product-design done.  
**Pack:** ShipRight. Pairs with the skill’s **8-check decision gate**.

## Interaction choices

| Question | Options | Pick when… |
|----------|---------|------------|
| Confirm vs undo? | Confirm modal / Undo toast / Neither | Irreversible → confirm; reversible → undo; low risk → neither |
| Modal vs inline? | Modal / Inline panel / Full page | Short interrupt → modal; complex task → page/panel |
| Autocomplete vs plain field? | Auto / Plain | Known finite set → prefer guided input |
| Single page vs wizard? | One page / Steps | Few fields → one page; clear phases or legal gates → steps |
| Soft vs hard validation? | On blur / On submit / Both | Prefer help before submit; block submit on hard rules |

## Risk prompts (answer in writing)

- [ ] What is the worst user mistake on this flow?  
- [ ] Can they recover without support?  
- [ ] What data is destroyed or exposed on failure?  
- [ ] What does a guest / wrong role see? (doc 03)  
- [ ] What happens offline or on slow network?  
- [ ] Is there a double-submit risk?  

## Scope discipline

- [ ] Every step maps to an approved or explicitly provisional job; non-goals stay excluded
- [ ] No “while we’re here” features  
- [ ] No invented navigation destinations  
- [ ] Assumptions labeled `ASSUMPTION`  

## Handoff completeness

- [ ] State table present  
- [ ] Primary action named per key state  
- [ ] Error copy ownership noted (who writes final strings)  
- [ ] Analytics events only if in docs — else UNKNOWN  
- [ ] Tickets suggested for `docs/05`  
- [ ] **8-check decision gate** uses the shared four statuses with evidence and next action

## Severity for leftover issues

Use the same impact-based severity as ux-critique. Severity describes harm or friction; P0/P1/P2 describe delivery priority.

| Level | Meaning |
|-------|---------|
| Blocker | The supported core job cannot complete, access fails, or material harm is likely |
| Major | Substantial friction with a usable, understood workaround |
| Polish | Clarification or craft that does not block the job |

Critical failures block the affected handoff even when tracked in a ticket. Use the shared readiness rule; assigning a priority does not resolve a failure.

## Never invent

- Legal copy, medical claims, guaranteed SLAs  
- Fake research quotes  
- APIs and field names not in doc 02 (mark UNKNOWN)  

---

*DRAFT — product-design/references/decision-checklist.md — ShipRight*

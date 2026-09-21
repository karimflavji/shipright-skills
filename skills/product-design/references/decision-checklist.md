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

- [ ] Every step maps to a PRD job or explicit non-goal  
- [ ] No “while we’re here” features  
- [ ] No invented navigation destinations  
- [ ] Assumptions labeled `ASSUMPTION`  

## Handoff completeness

- [ ] State table present  
- [ ] Primary action named per key state  
- [ ] Error copy ownership noted (who writes final strings)  
- [ ] Analytics events only if in docs — else UNKNOWN  
- [ ] Tickets suggested for `docs/05`  
- [ ] **8-check decision gate** filled Pass/Fail in the skill output  

## Severity for leftover issues

When reviewing an existing decision set:

| Level | Meaning |
|-------|---------|
| P0 | Wrong or missing decision blocks the job or risks harm |
| P1 | Confusing or incomplete; fix before polish |
| P2 | Nice clarification |
| P3 | Optional note |

## Never invent

- Legal copy, medical claims, guaranteed SLAs  
- Fake research quotes  
- APIs and field names not in doc 02 (mark UNKNOWN)  

---

*DRAFT — product-design/references/decision-checklist.md — ShipRight*

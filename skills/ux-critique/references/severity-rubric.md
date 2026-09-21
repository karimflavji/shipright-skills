# Severity rubric — reference

**Status: DRAFT.** Used by `ux-critique` when labeling findings.  
**Pack:** ShipRight. Use with the **10-gate ship audit**.

## Three levels

### Blocker

Ship is unsafe or the core job fails.

Examples:

- Primary task cannot be completed
- Data loss without warning
- Permission denied shows as blank/broken with no recovery
- Security-sensitive action exposed to wrong role (vs doc 03)
- Critical accessibility failure (e.g. keyboard trap on primary flow)
- Strong dark pattern

**Rule:** Must fix before release.

### Major

Serious friction or misleading UI; users will struggle or distrust.

Examples:

- Missing error or empty state on a P0 screen
- Primary action unclear; competing CTAs
- Nav or features invented vs docs (even if pretty)
- Multiple strong AI-slop tells that hide the real product
- Form loses user input on error
- Mobile layout breaks primary task

**Rule:** Fix before release when possible; if deferred, record risk on ticket.

### Polish

Does not block the job; improves clarity or craft.

Examples:

- Spacing inconsistency
- Minor copy tone
- Icon style drift
- Non-critical alignment
- Optional empty-state illustration quality

**Rule:** Backlog OK; do not dilute blockers with polish noise.

## Prioritization tips

1. List blockers first, then majors, then polish  
2. Cap polish to what helps learning — do not write 40 nits  
3. If a “visual” issue hides a wrong decision, escalate to **blocker/major** and route to **product-design**  
4. One finding = one problem (do not bundle unrelated issues)

## Mapping to tickets (doc 05)

| Severity | Ticket priority suggestion |
|----------|----------------------------|
| Blocker | P0 |
| Major | P0 or P1 |
| Polish | P2 |

---

*DRAFT — ux-critique/references/severity-rubric.md — ShipRight*

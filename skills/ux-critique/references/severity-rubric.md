# Severity rubric — reference

**Status: DRAFT.** Used by `ux-critique` when labeling findings.  
**Pack:** ShipRight. Use with the **10-gate ship audit**.

## Three levels

### Blocker

Ship is unsafe or the core job fails.

Examples:

- Primary task cannot be completed, including on a supported mobile viewport
- Data loss without warning
- Permission denied shows as blank/broken with no recovery
- Security-sensitive action exposed to wrong role (vs doc 03)
- Critical accessibility failure (e.g. keyboard trap on primary flow)
- Strong dark pattern

**Rule:** Must fix before release.

### Major

Substantial friction with a usable, understood workaround. If the core supported task fails, classify it as Blocker regardless of whether the cause is visual.

Examples:

- Missing error or empty state on a P0 screen
- Primary action unclear; competing CTAs
- Nav or features invented vs docs (even if pretty)
- Multiple strong AI-slop tells that hide the real product
- Form loses user input on error
- Mobile layout adds friction but the primary task remains usable

**Rule:** Critical requirements block the affected stage even if labeled Major. A noncritical deferral needs explicit disposition and impact; the underlying check remains Fail. A ticket alone does not resolve it.

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

Severity is impact; priority is delivery order. Retest the affected artifact/version before closing a finding. See the shared operating contract for readiness.

| Severity | Ticket priority suggestion |
|----------|----------------------------|
| Blocker | P0 |
| Major | P0 or P1 |
| Polish | P2 |

---

*DRAFT — ux-critique/references/severity-rubric.md — ShipRight*

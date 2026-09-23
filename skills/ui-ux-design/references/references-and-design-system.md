# References and design-system direction — reference (optional)

**Status: Public draft.** Used by `ui-ux-design`.
**Pack:** ShipRight.

Taste comes from real references and exact values, not from asking for "premium". Product comes first: do not choose tokens, hex values or type scales before the screen jobs exist.

## Reference analysis

Use at **New surface** or **New product** depth, or when the user supplies references. Ask for **one line of feeling** (for example, calm, precise, trustworthy) and **1–2 real products or sites** that have it. Use at most 3 references, supplied or approved by the user.

| Reference | Problem it solves | Borrow (pattern, not look) | Reject (why) | Fit to our screen job |
| --- | --- | --- | --- | --- |

- Borrow patterns: spacing rhythm, hierarchy, how one action is made obvious.
- Never copy brand identity, logos, illustrations, copy or distinctive layouts wholesale.
- A reference cannot add screens, sections or features. Section lists come from screen jobs, not from a template (for example, not "hero, 3 benefits, proof, FAQ" by default).
- "Proof" sections need real, approved proof. Otherwise leave them out.

## Design-system direction — pick one mode and say it

### Preserve (existing product — the default when an app exists)

Record what is actually in use from inspected screens or code:

- Color roles (background, surface, text, muted, accent, success, warning, danger)
- Type sizes and weights, spacing steps, radius, elevation, motion
- Key components and their states (buttons, inputs, tables, modals, toasts, empty states)

Mark each value **Observed** (with where you saw it) or **Unknown**. Flag inconsistencies as findings. Propose only the smallest additions the task needs. Approved identity (colors, shapes, navigation) is not reopened. Record the result in `docs/04` sections 4–5.

### Establish (new product with no visual authority)

A small set only, every value **Proposed** until the user approves:

- Color roles as above, with contrast targets (text at least WCAG AA)
- 3–4 type sizes, one spacing scale, one radius system, elevation rules
- Motion: purpose, duration range and reduced-motion behavior
- Components with required states
- Exact brand values (hex, font names) once approved, so build tools do not guess

## Output

Keep it short: the mode, the feeling line, the reference table (if used), the token/component list with statuses, and open questions. Put approved values in `docs/04`; the build handoff pack reads them from there.

---

*Public draft — ui-ux-design/references/references-and-design-system.md — ShipRight*

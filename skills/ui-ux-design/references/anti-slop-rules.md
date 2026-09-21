# Anti-slop rules — reference

**Status: DRAFT.** Hard rules for `ui-ux-design`. Aligns with critique lens in `ux-critique/references/slop-tells.md`.  
**Pack:** ShipRight. Anti-slop = capability, not the product name.  
Inspired by Taste Skill / Hallmark / UI UX Pro Max ideas (paraphrased — not copied verbatim).

## Purpose

Vibe-coding tools invent pretty, generic UI. These rules force craft back to **your** product docs, design dials, and the **10-gate pre-flight**.

**Tagline:** Context before generate. Product before pixels.

## Hard bans (default)

Unless `docs/04-frontend-spec.md` or `personal-taste/` explicitly allows them:

1. **AI purple / pink neon gradients** and mesh blobs as the default brand look  
2. **Generic purple SaaS** templates (same hero, same three equal feature cards, same fake dashboard chrome)  
3. **Glassmorphism + heavy blur** on every surface  
4. **Emoji as icons**  
5. **Fake testimonials, logos, or avatars** presented as real  
6. **Fake charts** with decorative data  
7. **Div-based fake product UI** (empty task lists / terminals as decoration)  
8. **Invented navigation** not listed in doc 04  
9. **Generic admin dashboards** unrelated to PRD jobs  
10. **Engagement theater** (confetti, 7-step delight, “Scroll to explore”) not in PRD  
11. **Dark patterns** (hidden costs, sneaky opt-outs, fake timers)  
12. **Hover-only critical actions**  
13. **Centered-everything** as the only layout idea on product screens (bias when the job needs it)  
14. **One font doing display + body** with no reason when brand needs character (app shells may stay system sans — say why)

## Prefer instead

| Instead of slop | Prefer |
|-----------------|--------|
| Random gradient hero | Token background + clear H1 + CTA |
| Three equal feature cards by default | Layout that matches VARIANCE dial + real content structure |
| Six unrelated widgets | Widgets mapped to PRD metrics only |
| “Submit” | Verb + object from the job |
| Custom snowflake controls | Design-system components |
| Color-only status | Text + icon + color |
| Centered long essay | Short context + structured content |
| Motion dial high but nothing moves | Real motion notes — or lower MOTION |

## Product-type sanity

Match seriousness to the product in the PRD:

| Product vibe in PRD | Avoid |
|---------------------|-------|
| Finance / health / admin | Neon playfulness, joke copy |
| Consumer social | Dense enterprise table overload without need |
| Internal tools | Marketing landing chrome inside the app shell |

If unsure, stay **neutral and clear** — not “AI trendy.” Set dials low-mid for trust-first products.

## Pre-generate lock (actionable)

Before calling Figma AI / Stitch / Claude Design / Cursor UI generate:

- [ ] Doc 04 screen list locked  
- [ ] One-line design read + VARIANCE / MOTION / DENSITY stated  
- [ ] Tokens / brand pointed to  
- [ ] Anti-slop bans acknowledged in the prompt  
- [ ] State requirements listed in the prompt  
- [ ] **10-gate pre-flight** in the skill marked Pass/Fail  

Example prompt fragment:

> Follow docs/04. Design read: [one line]. Dials: V=/M=/D=. Screens only: [list]. No purple SaaS gradients, no emoji icons, no invented nav. Include empty, loading, error, success, denied. Primary CTA: [verb + object].

## After generate

Run **ux-critique** (10-gate ship audit). Convert blockers/majors into doc 05 tickets or design revisions.

## Honest failure

If the model output is mostly slop, say so. Do not “lightly edit” a wrong product into existence — return to docs + product-design. Fail pre-flight honestly.

---

*DRAFT — ui-ux-design/references/anti-slop-rules.md — ShipRight*

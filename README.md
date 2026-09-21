# ShipRight

**Status: Published on GitHub as shipright-skills.** Still not on GitHub. Do not commit/push until Altaz says so.

**Tagline:** Context before generate. Product before pixels.

---

## One-line pitch

Stop AI from inventing random UI and flows. Lock product context in five docs, ask a few light questions, then run three skills — product decisions, UI craft, and critique — **before** you generate code or screens.

**Anti-slop** is a capability (hard gates that block generic AI UI), not the product name.

## Why this pack (gap vs UI-only skills)

| Pack type | What it does well | What it often skips |
|-----------|-------------------|---------------------|
| Taste Skill, Hallmark, UI UX Pro Max | Frontend taste, anti-slop visuals, pre-flight | Full product process before pixels |
| **ShipRight** | **5 before-build docs + product-design + ui-ux-design + ux-critique** | Pure brand illustration / logo art |

UI-only packs polish screens. ShipRight forces **product before pixels**: jobs, roles, states, and tickets — then craft — then critique.

## Dual quality bar (ideas we match, text we do not copy)

1. **Taste Skill** — brief inference, design dials, hard pre-flight, not purple SaaS  
2. **UI UX Pro Max** — lean skills + deep references, Avoid lists, states, a11y  
3. **Hallmark-style rigor** — countable Pass/Fail gates, named slop tells, honest fail

We paraphrase. We do not copy proprietary skill text.

## Who this is for

- Product designers, POs, and vibe-coders using Claude Design, Figma AI, Google Stitch, Cursor, Codex, Claude Code
- Teams tired of generic “AI purple dashboard” output
- Anyone who wants **context before generate**

## Who this is not for

- Pure backend / infra with no product surface
- Brand illustration or logo art alone
- Inventing fake user research or legal/medical advice

## What’s inside

| Layer | Path | Job |
|-------|------|-----|
| Before-build docs | `docs/01`–`05` | Lock context so AI cannot invent |
| Product decisions | `skills/product-design/` | Flows, states, **decision gate** |
| UI/UX craft | `skills/ui-ux-design/` | Dials + **10-gate pre-flight** + anti-slop |
| Critique | `skills/ux-critique/` | **10-gate ship audit** + severity findings |
| Shared intake | `skills/_shared/intake.md` | Light 3–5 questions (DRY) |
| Personal taste | `personal-taste/` | Your `.skill` overlays later (do not block drafts) |
| Catalog | `skills.md` | Which skill + prompts |
| Map | `architecture.md` | How the pack is organized |
| Agent rules | `AGENTS.md` | Do / don’t for agents |
| Demo | `examples/sample-saas-onboarding/` | Before/after + filled docs + sample outputs |

## Workflow (always this order)

```text
┌─────────────────────────────────────────────────────────┐
│  1. Fill docs 01 → 05     (context locked)              │
│  2. Light intake 3–5 Qs   (you decide / let me decide)  │
│  3. product-design        → decision gate               │
│  4. ui-ux-design          → dials + 10-gate pre-flight  │
│  5. ux-critique           → 10-gate ship audit          │
│  6. Update docs/05 tickets                              │
│  7. ONLY THEN → code / generate UI                      │
└─────────────────────────────────────────────────────────┘
         Context before generate. Product before pixels.
```

If docs 01–05 are empty, every skill **refuses to invent**. Ask for gaps or point to `docs/`.

## Countable gates (not vibes)

| Skill | Gate | Count |
|-------|------|-------|
| **product-design** | Decision gate | **8** Pass/Fail checks |
| **ui-ux-design** | Pre-flight | **10** Pass/Fail checks |
| **ux-critique** | Ship audit | **10** Pass/Fail checks |

Every check is honest **Pass** or **Fail** with a short note. Fail = fix or lower scope before ship.

## Light intake (important)

Skills must **not** dump a huge questionnaire.

- Gather idea context in **only 3–5 questions** per skill run (or one shared intake).
- Each question offers short **examples** and **you decide / let me decide**.
- If you pick **you decide / let me decide**, the agent chooses from docs, labels `ASSUMPTION`, and continues.
- After answers: finalize and work. See `skills/_shared/intake.md`.

Refuse-to-invent still stands when docs are empty — intake fills light gaps when docs are partial, not a whole missing PRD.

## Personal taste overlays (pending your files)

Folder: `personal-taste/`. Drop Claude / Cursor / ChatGPT preference files later. The pack merges them **without rewriting** core skills. **Do not block drafts** waiting for those files.

## Install (copy-paste ready)

Keep **one** canonical `skills/` folder. Skills use portable `SKILL.md` + `references/` (universal Agent Skills shape). Copy or symlink into your tool:

```bash
# From this pack root (replace /path/to/pack with your real path)
PACK=/path/to/shipright        # or /path/to/shipright-skills (repo root)

# --- Claude Code ---
mkdir -p ~/.claude/skills
ln -s "$PACK/skills/product-design" ~/.claude/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   ~/.claude/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    ~/.claude/skills/ux-critique
# Shared intake + personal-taste stay reachable via relative paths inside the pack,
# or copy the whole pack into your project and point skills there.

# Project-scoped Claude (recommended for teams)
mkdir -p .claude/skills
ln -s "$PACK/skills/product-design" .claude/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   .claude/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    .claude/skills/ux-critique

# --- Cursor ---
mkdir -p .cursor/skills
ln -s "$PACK/skills/product-design" .cursor/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   .cursor/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    .cursor/skills/ux-critique

# --- Codex / Agent Skills ---
mkdir -p .agents/skills
ln -s "$PACK/skills/product-design" .agents/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   .agents/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    .agents/skills/ux-critique
# Personal Codex: ~/.codex/skills/ (same three folders)
```

Also open or symlink `AGENTS.md` so the agent knows pack rules:

```bash
ln -s "$PACK/AGENTS.md" ./AGENTS.md
# Optional Claude convention:
ln -s "$PACK/AGENTS.md" ./CLAUDE.md
```

**Universal note:** Each skill is a folder with `SKILL.md` (YAML frontmatter + instructions) and optional `references/`. That shape works across tools that load Agent Skills. Do not fork three divergent copies — symlink or copy from this `skills/` source of truth.

Exact paths can vary by tool version — treat as draft guidance until Altaz says publish yes.

**Suggested repo names (when publishing later):** `shipright` or `shipright-skills`.

## Demo (proves the difference)

See **`examples/sample-saas-onboarding/`**:

- Empty vibe-code **fail** vs docs + skills **success** (short before/after)
- Filled PRD excerpt
- Sample skill outputs (product-design → ui-ux → critique)

## Three example prompts

**1 — Shape a flow (product-design)**  
> Use the product-design skill. Start with light intake (max 5 questions). Our filled docs are in docs/. Design the invite-teammate flow: happy path, fail path, and a state table. Run the 8-check decision gate. Do not invent features not in the PRD.

**2 — Craft UI (ui-ux-design)**  
> Use the ui-ux-design skill against docs/01–04. Light intake, then one-line design read + dials. Spec empty, loading, error, and success for the onboarding checklist. Run the 10-gate pre-flight. No purple SaaS. Load personal-taste/ if present.

**3 — Critique before ship (ux-critique)**  
> Use the ux-critique skill. Short intake: what to critique + goal. Run the 10-gate ship audit. List blockers, majors, and polish. Flag AI-slop tells. Suggest rewrite asks — do not invent fake user quotes.

## Boundaries

- **Do not** invent product scope, roles, or screens when docs are empty  
- **Do not** claim user research was done unless sources are listed  
- **Do not** use dark patterns (trick opt-outs, fake urgency, hidden costs)  
- **Do** keep intake to 3–5 questions with examples + you decide / let me decide  
- **Do** cover empty / loading / error / success / permission denied  
- **Do** pass countable gates (or list fails) before ship  
- **Do** write in simple, clear English  

## Version

- Current: **v0.2.1-draft** (ShipRight rename lock — still DRAFT)
- See [CHANGELOG.md](./CHANGELOG.md)

## Feedback / open items

For Altaz / Sehar:

- [x] Final product name locked: **ShipRight**  
- [ ] Personal taste `.skill` files for `personal-taste/` when ready  
- [ ] Publish to GitHub — **only when Altaz says yes**  
- [ ] Commit — **only when Altaz says yes**  

---

*DRAFT — ShipRight — © 2026 Altaz Lavji — MIT*  
*Context before generate. Product before pixels.*

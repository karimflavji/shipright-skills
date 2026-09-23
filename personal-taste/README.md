# Personal taste overlays — ShipRight DRAFT

**Status: DRAFT — pending Altaz files.**  
**Do not block pack drafts** waiting for these files.  
**Pack:** **ShipRight** (name locked).

## What this folder is for

Drop Altaz’s personal taste / preference skill files here later. Typical sources:

- Claude `.skill` / skill markdown exports
- Cursor skill files
- ChatGPT custom instructions or skill exports

The pack **merges** these as overlays. It does **not** rewrite the three core skills (`product-design`, `ui-ux-design`, `ux-critique`).

## How agents should use this folder

1. If this folder has usable files (besides this README), **load them**.
2. Prefer personal-taste preferences over pack defaults for:
   - Visual direction (calm vs bold, density, motion)
   - Banned patterns Altaz cares about
   - Brand / type / spacing habits
3. Current explicit project decisions and the shared operating contract take precedence. Taste cannot authorize scope, fabricate evidence or waive usable access to critical controls.
4. If this folder is empty (only this README), ignore it and use pack defaults.

## Suggested drop names (optional)

```text
personal-taste/
├── README.md                 # this file
├── altaz-taste.skill.md      # example name — any clear name is fine
├── cursor-preferences.md
└── chatgpt-style-notes.md
```

## Mentioned in

- Pack `README.md`
- `AGENTS.md`
- `skills/ui-ux-design/SKILL.md` (load + prefer when present)
- `skills/_shared/intake.md` (defaults for feel / constraints)

---

*DRAFT — personal-taste/ — ShipRight*

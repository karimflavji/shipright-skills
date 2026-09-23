# Personal taste overlays — ShipRight

**Status: Optional.** Do not block work waiting for these files.

## What this folder is for

Drop your own taste / preference files here. Typical sources:

- Claude skill markdown exports
- Cursor rules or skill files
- ChatGPT custom instructions or style notes

The pack **merges** these as overlays. It does **not** rewrite the three core skills (`product-design`, `ui-ux-design`, `ux-critique`).

## How agents should use this folder

1. If this folder has usable files (besides this README), **load them** for ui-ux-design defaults.
2. Prefer personal-taste preferences over pack defaults for:
   - Visual direction (calm vs bold, density, motion)
   - Patterns you want banned
   - Brand / type / spacing habits
3. Current explicit project decisions and the shared operating contract take precedence. Taste cannot authorize scope, fabricate evidence or waive usable access to critical controls.
4. If this folder is empty (only this README), ignore it and use pack defaults.

## Suggested drop names (optional)

```text
personal-taste/
├── README.md                 # this file
├── my-taste.md               # any clear name is fine
├── cursor-preferences.md
└── chatgpt-style-notes.md
```

---

*Public draft — personal-taste/ — ShipRight*

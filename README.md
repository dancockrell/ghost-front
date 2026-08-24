# Ghost Front

A WW2 horror platformer. One file, no build step, no dependencies —
open `index.html` in a browser and play.

## What it is

The Allied front, 1944, and the things the war dug up. A side-scrolling
platformer with telegraphed boss fights, hand-cut sprite work and a
procedural soundscape, shipped as a single self-contained HTML file.

Currently at **v21**.

## Design notes worth keeping

- **Boss telegraphs** — every attack announces itself before it lands. A tell
  you can read is what separates a fair death from a cheap one.
- **No camping** — bosses punish standing still rather than rewarding it.
  An enemy that waits for you to walk into range isn't a fight, it's furniture.
- **One file** — the game, the notes and the toolchain live in the same
  document. Open it in a browser to play, open it in an editor to work on it.

## Repo layout

```
index.html   the whole game
```

## Related

Shares a universe with [World Aflame](https://github.com/dancockrell/world-aflame),
a card game built from the same setting and the same design lessons.

## Licence

All rights reserved (for now).

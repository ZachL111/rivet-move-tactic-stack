# Review Journal

I treated `rivet-move-tactic-stack` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 117, lane `watch`
- `stress`: `move ordering`, score 205, lane `ship`
- `edge`: `search width`, score 126, lane `watch`
- `recovery`: `endgame risk`, score 182, lane `ship`
- `stale`: `position pressure`, score 237, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.

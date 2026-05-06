# Rivet Move Tactic Stack Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 117 | watch |
| stress | move ordering | 205 | ship |
| edge | search width | 126 | watch |
| recovery | endgame risk | 182 | ship |
| stale | position pressure | 237 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.

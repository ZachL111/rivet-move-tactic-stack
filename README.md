# rivet-move-tactic-stack

`rivet-move-tactic-stack` is a compact Elixir repository for chess and game engines, centered on this goal: Build an Elixir toolkit that studies tactic behavior through framed sample traffic, with bounds and ordering tests and explicit failure cases.

## Why It Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how position pressure and search width should influence a review result.

## Rivet Move Tactic Stack Review Notes

For a quick review, compare `position pressure` with `position pressure` before reading the middle cases.

## Features

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/rivet-move-tactic-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The Elixir implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limitations And Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.

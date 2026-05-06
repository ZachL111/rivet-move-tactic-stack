# rivet-move-tactic-stack

`rivet-move-tactic-stack` packages a practical chess and game engines exercise in Elixir. The emphasis is on deterministic behavior, a small public API, and examples that explain the tradeoffs.

## How I Read Rivet Move Tactic Stack

The useful thing to inspect here is how the same score rule is represented in code, metadata, and examples. If those three pieces disagree, the audit script should make the drift visible.

## Problem Shape

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Repository Map

- `lib`: library code
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Main Behaviors

- Includes extended examples for turn flow, including `surge` and `degraded`.
- Documents search limits tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Internal Model

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying chess and game engines behavior without needing a service or database unless the language project itself is SQL. The Elixir project uses Mix and ExUnit with clear data maps for each scenario.

## Run It Locally

Use a normal shell with Elixir available on `PATH`. The verifier is written as a PowerShell script because the portfolio was assembled on Windows.

## Scenario Walkthrough

The extended cases are not random smoke tests. `degraded` keeps pressure on the review path, while `surge` shows the model when capacity and weight are strong enough to clear the threshold.

## How To Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Validation

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Follow-Up Work

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more chess and game engines fixture that focuses on a malformed or borderline input.

## Known Edges

This code is local-first. It makes no claim about deployed usage and avoids credentials, hosted state, and environment-specific setup.

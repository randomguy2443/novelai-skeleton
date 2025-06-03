# Contributor Guide for Codex

Welcome, agent! Follow these conventions to keep work deterministic.

## Directory policy
| Folder  | Purpose                                        |
|---------|------------------------------------------------|
| `config/` | NovelAI presets, scenarios, model configs |
| `src/`     | All Python source code (FastAPI server, helpers) |
| `tests/`   | Pytest suites and fixtures |

## How to validate changes
1. **Lint & format**  
   ```bash
   black src tests
   isort src tests
   ```
2. **Run tests**  
   ```bash
   pytest -q
   ```

The CI will run `./setup.sh`, then `pytest -q`. Ensure both pass before finishing.

## Style rules
* Python ≥3.11
* Use type hints everywhere.
* Keep functions <50 LOC.
* Document public APIs with docstrings.

## Networking
Internet is **off** during agent execution. Vendor data or model weights must be pulled in `setup.sh` only (or mocked in tests).

## Pull Request template
```
### Summary
_One‑sentence overview_

### Changes
- ...

### Verification
- [ ] `pytest` passes
- [ ] `black` shows no diff
```
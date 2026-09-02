# Move manifest

Each directory move preserves its complete relative subtree. Thus, for a
directory mapping `old/ -> TO_DELETE/old/`, every file `old/<path>` was moved
to `TO_DELETE/old/<path>`.

## Individual files

| Original path | Archived path |
| --- | --- |
| `.Rbuildignore` | `TO_DELETE/.Rbuildignore` |
| `DESCRIPTION` | `TO_DELETE/DESCRIPTION` |
| `KiribatiBiomarkers.Rproj` | `TO_DELETE/KiribatiBiomarkers.Rproj` |
| `LICENSE.md` | `TO_DELETE/LICENSE.md` |
| `NAMESPACE` | `TO_DELETE/NAMESPACE` |
| `NEWS.md` | `TO_DELETE/NEWS.md` |
| `README.Rmd` | `TO_DELETE/README.Rmd` |
| `_target_notebook.Rmd` | `TO_DELETE/_target_notebook.Rmd` |
| `_targets.R` | `TO_DELETE/_targets.R` |
| `renv.lock` | `TO_DELETE/renv.lock` |
| `uvr.lock` | `TO_DELETE/uvr.lock` |
| `uvr.toml` | `TO_DELETE/uvr.toml` |

## Directory trees

| Original tree | Archived tree |
| --- | --- |
| `.quarto/` | `TO_DELETE/.quarto/` |
| `.spack-env/` | `TO_DELETE/.spack-env/` |
| `R/` | `TO_DELETE/R/` |
| `_targets/` | `TO_DELETE/_targets/` |
| `dev/` | `TO_DELETE/dev/` |
| `inst/` | `TO_DELETE/inst/` |
| `man/` | `TO_DELETE/man/` |
| `rv/library/` | `TO_DELETE/rv/library/` |
| `sandbox/` | `TO_DELETE/sandbox/` |
| `slurm/build/logs/` | `TO_DELETE/slurm/build/logs/` |
| `slurm/launch/logs/` | `TO_DELETE/slurm/launch/logs/` |
| `tests/` | `TO_DELETE/tests/` |
| `vignettes/` | `TO_DELETE/vignettes/` |

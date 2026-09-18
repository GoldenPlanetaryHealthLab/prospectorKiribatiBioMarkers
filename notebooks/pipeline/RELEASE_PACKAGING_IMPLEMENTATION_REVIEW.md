# Release packaging implementation review

No Quarto or R command was run while making these changes. Generated HTML,
rendered DAG files, and runtime validation remain intentionally pending.

| Area | Files | Change and review note |
|---|---|---|
| Dependencies | `infrastructure/14_page-uvr.qmd` | Synchronized the Manual declaration with the current 72-package `uvr.toml` set by adding `frictionless = "*"`. `uvr.toml` and `uvr.lock` were already updated; `codebook` and `labelled` remain. |
| Input targets | `pipeline/16_page-stage-inputs.qmd` | Renamed the manifest and staged-input targets to six-part convention names; no compatibility aliases were added. |
| Curation | `pipeline/18_page-targets-curation.qmd` | Added exact source selection and required-column validation, used the observed `L1_q16_date_of_interview` field, renamed all targets, and removed `slimmed_*`, `small_*`, and generic writers. |
| Page boundary | `pipeline/18_page-targets-curation.qmd` | Curation now ends with two curated participant-level data frames and writes no release files. |
| Frictionless package | `pipeline/19_page-package-release.qmd` | Added two described schemas and one two-resource Data Package; schema creation fails if descriptions and curated columns diverge. |
| Release artifacts | `pipeline/19_page-package-release.qmd` | Added one file target for `datapackage.json`, `biomarker_ptx.csv`, and `demog_ptx.csv`; `data/outputs/releases/v0.1.0/` is immutable and must initially be empty. |
| Manual order | `_quarto.yml`, pipeline pages 19–21 | Inserted Package Release and renumbered Execute Pipeline and Verify Release to pages 20 and 21. |
| Root graph | `_targets.R`, `pipeline/20_page-execute-pipeline.qmd` | Registered only Stage Inputs, Curate Release, and Package Release; the documented registration now matches the root script. |
| Verification | `pipeline/21_page-verify-release.qmd` | Added resource, schema-description, de-identification, round-trip, and no-op rebuild checks for later execution in the supported runtime. |
| Generated artifacts | `docs/`, `pipeline/pipeline.mmd`, `data/interim/pipeline.mmd` | Intentionally untouched; regenerate later with the approved Manual and pipeline workflows. |

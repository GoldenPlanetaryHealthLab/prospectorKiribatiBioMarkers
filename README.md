# Kiribati Biomarkers Curation Manual

This repository contains a Quarto Manual for preparing and executing the
Kiribati biomarkers input-provenance pipeline.

The authored manual lives in [`notebooks/`](notebooks/). The project-root
`_targets.R` is the standard `{targets}` entry point: initialize it with
`targets::use_targets()` and maintain its notebook registrations there.

Render the Manual while authoring (the default profile):

```sh
quarto render notebooks
```

Run the root-level scientific graph only from an adequate allocation, through
the container runtime:

```sh
scripts/kiribati-biomarkers Rscript scripts/run-pipeline.R
```

Manual renders never run targets. The container command is the only supported
path that invokes `targets::tar_make()`.

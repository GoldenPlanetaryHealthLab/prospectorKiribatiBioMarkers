# Kiribati Biomarkers Curation Manual

This repository contains a Quarto Manual for preparing and executing the
Kiribati biomarkers input-provenance pipeline.

The authored manual lives in [`notebooks/`](notebooks/). Conventional pipeline
files are derived from the manual and must not become a second source of truth.

Render the Manual while authoring (the default profile):

```sh
quarto render notebooks
```

Materialize the generated targets script without running it:

```sh
quarto render notebooks --profile emit
```

Materialize the script and run its input-provenance graph after a successful
full Manual render:

```sh
quarto render notebooks --profile pipeline
```

The `pipeline` profile is the only supported path in this repository that runs
`targets::tar_make()`. Normal authoring renders execute neither the emitted
code nor the pipeline.

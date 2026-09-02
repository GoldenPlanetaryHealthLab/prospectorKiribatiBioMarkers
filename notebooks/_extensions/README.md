# Manual extensions

This directory vendors the reviewed extensions from
[`GoldenPlanetaryHealthLab/QuartoManual`](https://github.com/GoldenPlanetaryHealthLab/QuartoManual)
at commit `a557d36f5e64b3e69adcc1f722e9c8694d75cd8a`:

- Quarto Manual v0.1.0 at
  `_extensions/GoldenPlanetaryHealthLab/quarto-manual/`;
- Quarto-emit v1.0.0 at
  `_extensions/GoldenPlanetaryHealthLab/quarto-emit/`.

Both extension versions require a Quarto version supported by the installed
Quarto 1.9.38.

The default `authoring` profile uses the Manual's native `book` project type
and `manual-html` format without loading Quarto-emit. The `emit` and
`pipeline` profiles load Quarto-emit; their profile environment files set
`QUARTO_EMIT=1`, allowing only those renders to materialize generated files.
The `pipeline` profile additionally runs the input-provenance graph after a
full render.

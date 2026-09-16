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
profile load Quarto-emit; its profile environment file sets `QUARTO_EMIT=1`,
allowing only that render mode to materialize generated files. Manual renders
disable code execution. Scientific work runs separately through the
container runtime and the emitted targets graph.

#!/usr/bin/env Rscript

# This hook is deliberately non-fatal: the Manual is the primary render
# artifact, while input failures must remain visible to the operator.
if (Sys.getenv("QUARTO_PROJECT_RENDER_ALL") != "1") {
  message("[pipeline] Skipping targets: this was not a full Manual render.")
  quit(status = 0)
}

script_arg <- grep("^--file=", commandArgs(trailingOnly = FALSE), value = TRUE)
script_path <- if (length(script_arg)) sub("^--file=", "", script_arg[[1]]) else ""

tryCatch(
  {
    if (!nzchar(script_path)) {
      stop("Could not determine the pipeline runner path.")
    }

    repository_root <- normalizePath(
      file.path(dirname(script_path), "..", ".."),
      mustWork = TRUE
    )
    setwd(repository_root)
    targets::tar_make(script = "pipeline/_targets.R")
  },
  error = function(error) {
    message(
      "\n*** PIPELINE WARNING ***\n",
      "The Manual rendered successfully, but the input-provenance pipeline failed.\n",
      conditionMessage(error),
      "\n*** END PIPELINE WARNING ***\n"
    )
  }
)

quit(status = 0)

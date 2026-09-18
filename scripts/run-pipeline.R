#!/usr/bin/env Rscript

script_arg <- grep("^--file=", commandArgs(trailingOnly = FALSE), value = TRUE)
script_path <- if (length(script_arg)) sub("^--file=", "", script_arg[[1]]) else ""

if (!nzchar(script_path)) {
  stop("Could not determine the pipeline runner path.")
}

repository_root <- normalizePath(
  file.path(dirname(script_path), ".."),
  mustWork = TRUE
)
setwd(repository_root)
targets::tar_make()

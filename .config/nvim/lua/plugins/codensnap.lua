return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  opts = {
    save_path = "~/Pictures/code-snapshots/",
    has_breadcrumbs = false,
    bg_theme = "sea",
    watermark = ""
  }
}

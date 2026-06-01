return {
  -- Подключаем сам плагин catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- Выбираем тему mocha
    },
  },
  -- Говорим LazyVim загружать её по умолчанию
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

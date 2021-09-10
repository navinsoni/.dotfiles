local lspconfig = require "lspconfig"

local vint = require "nv/efm/vint"
local stylua = require "nv/efm/stylua"
local golint = require "nv/efm/golint"
local goimports = require "nv/efm/goimports"
local black = require "nv/efm/black"
local isort = require "nv/efm/isort"
local flake8 = require "nv/efm/flake8"
local mypy = require "nv/efm/mypy"
local prettier = require "nv/efm/prettier"
local eslint = require "nv/efm/eslint"
local shellcheck = require "nv/efm/shellcheck"
local shfmt = require "nv/efm/shfmt"
local terraform = require "nv/efm/terraform"
local misspell = require "nv/efm/misspell"

-- https://github.com/mattn/efm-langserver
lspconfig.efm.setup {
    on_attach = on_attach,
    init_options = { documentFormatting = true },
    root_dir = vim.loop.cwd,
    settings = {
        rootMarkers = { ".git/" },
        languages = {
            ["="] = { misspell },
            vim = { vint },
            lua = { stylua },
            go = { golint, goimports },
            python = { black, isort, flake8, mypy },
            typescript = { prettier, eslint },
            javascript = { prettier, eslint },
            typescriptreact = { prettier, eslint },
            javascriptreact = { prettier, eslint },
            yaml = { prettier },
            json = { prettier },
            html = { prettier },
            scss = { prettier },
            css = { prettier },
            markdown = { prettier },
            sh = { shellcheck, shfmt },
            terraform = { terraform },
        },
    },
}

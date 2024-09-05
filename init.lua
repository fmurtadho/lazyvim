-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Path to Node 20 bin directory
local node20_bin_path = "/Users/24061754/.nvm/versions/node/v20.17.0/bin"
-- Prepend Node 20's bin path to the existing PATH environment variable
vim.env.PATH = node20_bin_path .. ":" .. vim.env.PATH

require'lspconfig'.pylsp.setup{
    settings = {
      pylsp = {
        plugins = {
          pycodestyle = {
                        enabled = false
                    },
                    -- pylint = {
                    --     enabled = false
                    -- }
        }
      }
    }
}

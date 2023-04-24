-- Inspired by: https://github.com/arkav/lualine-lsp-progress

local osv = require('lualine.component'):extend()

osv.init = function(self, options)
  osv.super.init(self, options)
end

osv.update_status = function(self)
  return require('osv').is_running() and 'OSV Running' or ''
end

return osv

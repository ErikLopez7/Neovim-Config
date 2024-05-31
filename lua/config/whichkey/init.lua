local wk = require("which-key")
wk.register({
	f = {":NeoTreeFocus<CR>", 'neotree'},
	L = {":Lazy<CR>", 'lazy'},
	m = {":Mason<CR>", 'mason'},

	l = {
		name = "+lsp",
		a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', 'code action', silent = true},
		c = {
			name ="+config",

			i = {':LspInfo<CR>', 'info'},
			l = {':LspLog<CR>', 'log'},
			o = {':verbose set omnifunc?<CR>', 'omnifunc'},
			p = {':LspStop <CR>', 'stop'},
			r = {':LspRestart <CR>', 'restart'},
			s = {':LspStart <CR>', 'start'},
		},
		d = {'<cmd>lua vim.lsp.buf.definition()<CR>', 'definition', silent = true},
		f = {'<cmd>lua vim.lsp.buf.format()<CR>', 'format'},
		h = {'<cmd>lua vim.lsp.buf.hover()<CR>', 'hover', silent = true},
		I = {'<cmd>lua vim.lsp.buf.implementation()<CR>', 'implementation', silent = true},
		m = {
			name = "+mason",
			l = {':MasonLog<CR>', 'Log'},
			m = {':Mason<CR>', 'Mason'},
			u = {':MasonUpdate<CR>', 'Update'},
			U = {':MasonUninstallAll<CR>', 'Uninstall All'},
		},
		n = {'<cmd>lua vim.diagnostic.goto_next()<CR>', 'next', silent = true},
		o = {'<cmd>lua vim.diagnostic.open_float()<CR>', 'open_float', silent = true},
		p = {'<cmd>lua vim.diagnostic.goto_prev()<CR>', 'prev', silent = true},
		r = {'<cmd>lua vim.lsp.buf.rename()<CR>', 'rename'},
		s = {'<cmd>lua vim.lsp.buf.document_symbol()<CR>', 'symbol'},
		T = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', 'type definition', silent = true},
		t = {
			name = "+telescope",
			c = {
				name = "calls",
				i = {":Telescope lsp_incoming_calls<CR>", 'incoming'},
				o = {":Telescope lsp_outgoing_calls<CR>", 'outgoing'},
			},
			d = {":Telescope lsp_definitions<CR>", 'definitions'},
			D = {":Telescope diagnostics<CR>", 'diagnostics'},
			i = {":Telescope lsp_implementations<CR>", 'implementations'},
			r = {":Telescope lsp_references<CR>", 'references'},
			t = {":Telescope lsp_type_definitions<CR>", 'type'},
			s = {
				name = "symobls",

				d = {":Telescope lsp_document_symbols<CR>", 'document'},
				w = {":Telescope lsp_workspace_symbols<CR>", 'workspace'},
				W = {":Telescope lsp_dynamic_workspace_symbols<CR>", 'dynamic'},
			},
	    },

		v = {'<cmd>lua vim.lsp.buf.declaration()<CR>', 'declaration', silent = true},
		R = {'<cmd>lua vim.lsp.buf.references()<CR>', 'references'},
	},
}, 
{ prefix = "<leader>" })

if executable(expand('~/lsp/plaintext-emoji-language-server/server/bin/server'))
  echom 'Starting emoji language server...'
  au User lsp_setup call lsp#register_server({
    \ 'name': 'my custom vim emojis autocomplete plugin',
    \ 'cmd': {server_info->[
    \     &shell,
    \     &shellcmdflag,
    \    expand('~/lsp/plaintext-emoji-language-server/server/bin/server')
    \  ]},
    \ 'whitelist': ['text'],
    \ })
else
  echohl ErrorMsg
  echom 'Emoji language server in not accessible'
  echohl NONE
endif

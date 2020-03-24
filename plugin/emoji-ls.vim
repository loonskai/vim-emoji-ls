if executable(expand('~/lsp/plaintext-emoji-language-server/server'))
  au User lsp_setup call lsp#register_server({
    \ 'name': 'my custom vim emojis autocomplete plugin',
    \ 'cmd': {server_info->[
    \     &shell,
    \     &shellcmdflag,
    \    expand('~/lsp/plaintext-emoji-language-server/server')
    \  ]},
    \ 'whitelist': ['text'],
    \ })
endif

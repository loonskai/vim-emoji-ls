if executable(expand('~/Work/MyProjects/plaintext-emoji-language-server/'))
  au User lsp_setup call lsp#register_server({
    \ 'name': 'my custom vim emojis autocomplete plugin',
    \ 'cmd': {server_info->[
    \     &shell,
    \     &shellcmdflag,
    \    expand('~/Work/MyProjects/plaintext-emoji-language-server/')
    \  ]},
    \ 'whitelist': ['text'],
    \ })
endif

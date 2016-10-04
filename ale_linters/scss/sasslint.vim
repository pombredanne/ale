" Author: KabbAmine - https://github.com/KabbAmine

if exists('g:loaded_ale_linters_scss_sasslint')
    finish
endif

let g:loaded_ale_linters_scss_sasslint = 1

call ALEAddLinter('scss', {
\   'name': 'sassLint',
\   'executable': 'sass-lint',
\   'command': g:ale#util#stdin_wrapper . ' .scss sass-lint -v -q -f compact',
\   'callback': 'ale#handlers#HandleCSSLintFormat',
\})
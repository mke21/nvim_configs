" vim script om een release te maken, gewoon een tag en upgraden
function! Release()
	silent execute "Git fetch --tags"
	silent execute "Git checkout master"
	execute "Git pull"
	let tag = 0
	redir => tag
        silent execute "Git describe --abbrev=0 --tag"
	redir END
	let nieuw_tag  = tag+1
	silent execute "Git tag " . nieuw_tag
	silent execute "Git push origin " . nieuw_tag
	echom "Released version " . nieuw_tag
endfunction

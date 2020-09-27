" For quick loading and avoiding recurring loading of same plugin

 if !exists('loaded_vimrc_refresher')

    " --------------------------------
    "  Variable(s)
    " --------------------------------
    "  g:vimrcLocation for where you store your vimrc file
    if !exists('g:vimrcLocation')
        let g:vimrcLocation='~/.vimrc'
    endif


    " --------------------------------
    "  Function(s)
    " --------------------------------
    function! RefreshVimrcFunction()
        :exec 'edit '.g:vimrcLocation.''
        :exec 'so %'
        :exec 'bd'
        :exec 'bp'
    endfunction()

    " --------------------------------
    "  Expose our commands to the user
    " --------------------------------
    command! RefreshVimrc call RefreshVimrcFunction()


    " mark that everything has been loaded succesfully
    "let loaded_vimrc_refresher='yes loaded'
endif

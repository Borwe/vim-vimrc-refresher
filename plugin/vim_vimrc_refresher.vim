" For quick loading and avoiding recurring loading of same plugin

 if !exists('loaded_complete')

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
        :exec 'b#'
    endfunction()

    " --------------------------------
    "  Expose our commands to the user
    " --------------------------------
    command! RefreshVimrc call RefreshVimrcFunction()


    " mark that everything has been loaded succesfully
    let loaded_complete='yes loaded'
endif

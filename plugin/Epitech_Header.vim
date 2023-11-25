if exists("g:header")
    finish
endif

command! -nargs=0 Header lua require("epitech_header").header()

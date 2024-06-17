function nv --description 'neovim shorthand'
    if command_exists nvim
        nvim $argv
    else
        vim $argv
    end
end

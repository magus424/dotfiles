function cat --wraps=bat --description 'alias cat to bat, if it exists'
    if type -q bat
        bat $argv
    end
end

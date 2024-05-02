function cat --wraps=bat --description 'alias cat to bat, if it exists'
    if command_exists bat
        bat $argv
    end
end

function prompt_pwd_long --description "Print the current working directory"
    echo $PWD | sed -e "s|^$HOME|~|"
end

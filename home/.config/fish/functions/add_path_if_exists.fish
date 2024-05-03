function add_path_if_exists
    if test -d "$argv"
        fish_add_path "$argv"
    end
end


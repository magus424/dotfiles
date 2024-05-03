function add_pythonpath_if_exists
    if test -d "$argv"
        if test -d $argv
            if not contains $argv $PYTHONPATH
                set PYTHONPATH $argv $PYTHONPATH
            end
        end
    end
end


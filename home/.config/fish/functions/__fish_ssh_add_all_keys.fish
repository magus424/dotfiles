function __fish_ssh_add_all_keys
    set -l active_keys (ssh-add -l)
    for key in ~/.ssh/id_ed25519
        set -l fingerprint (ssh-keygen -lf $key)
        if test -z (string match "*$fingerprint*" $active_keys)
            ssh-add $key
        end
    end
end


function __fish_aws_sso_login_status --description 'check aws sso login status'
    if type -q jq
        for json in ~/.aws/sso/cache/*.json
            set -l startUrl (jq -cr '.startUrl' $json)
            if test $startUrl != "null"
                set -l expiresAtISO (jq -cr '.expiresAt' $json | sed -e 's/Z//')(date +"%z")
                set -l nowISO (date +"%Y-%m-%dT%H:%M:%S%z")
                # echo "exp ISO: $expiresAtISO"
                # echo "now ISO: $nowISO"
                set -l expiresAt (date -d "$expiresAtISO" +"%s")
                set -l now (date +"%s")
                # echo "exp: $expiresAt"
                # echo "now: $now"
                if test $expiresAt -gt $now
                    echo "active"
                else
                    echo "expired"
                end
            end
        end
    end
end


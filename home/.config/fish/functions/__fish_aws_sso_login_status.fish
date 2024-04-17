function __fish_aws_sso_login_status --description 'check aws sso login status'
    if type -q jq
        for json in ~/.aws/sso/cache/*.json
            set -l startUrl (jq -cr '.startUrl' $json)
            if test $startUrl != "null"
                # this date will only ever be ~1hr in the future running any aws
                # command will update the date if the sso session is still valid
                #
                # The following user cron entry would do to keep it updated:
                #
                # 0 8-20 * * MON-FRI aws sts get-caller-identity --query Account > /dev/null 2>&1

                set -l expiresAtISO (jq -cr '.expiresAt' $json)
                set -l nowISO (date +"%Y-%m-%dT%H:%M:%S%z")

                set -l expiresAt (date -d "$expiresAtISO" +"%s")
                set -l now (date +"%s")

                if test $expiresAt -gt $now
                    echo "active"
                else
                    echo "expired"
                end
            end
        end
    end
end


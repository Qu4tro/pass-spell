#!/bin/bash

usage() {
	echo "Usage: pass spell pass-name <nato-spell-options>";
}

path="$1"
passfile="$PREFIX/$path.gpg"
check_sneaky_paths "$path"

if [[ -f $passfile ]]; then
    temporary=$($GPG -d "${GPG_OPTS[@]}" "$passfile" | tail -n +1 | head -n 1 | sed -e 's/\\/\\\\/g' | sed -e 's/"/\\"/g' )
    shift

    nato-spell "$temporary" "$@"
elif [[ -z $path ]]; then
    die ""
else
    die "Error: $path is not in the password store."
fi

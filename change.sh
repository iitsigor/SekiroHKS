#!/bin/sh

VARS="`set -o posix ; set`";

source ./env.sh

SCRIPT_VARS="`grep -vFe "$VARS" <<<"$(set -o posix ; set)" | grep -v ^VARS=`";

unset VARS;

while IFS=';' read -ra SCRIPT_KEYS; do
    for i in "${SCRIPT_KEYS[@]}"; do
        if [[ $i == 'BASH_ARGC=([0]="0")' ]]; then
            continue;
        fi

        iKey="${i%=*}";
        iValue="${i#*=*}"

        for f in ./*.hks; do
            sed -i -e "s/\benv\x28$iValue\b/env\x28$iKey/g" $f;
        done
    done
done <<< "$SCRIPT_VARS"

VARS="`set -o posix ; set`";

source ./act.sh

SCRIPT_VARS="`grep -vFe "$VARS" <<<"$(set -o posix ; set)" | grep -v ^VARS=`";

unset VARS;

while IFS=';' read -ra SCRIPT_KEYS; do
    for i in "${SCRIPT_KEYS[@]}"; do
        if [[ $i == 'BASH_ARGC=([0]="0")' ]]; then
            continue;
        fi

        iKey="${i%=*}";
        iValue="${i#*=*}"

        for f in ./*.hks; do
            sed -i -e "s/\bact\x28$iValue\b/act\x28$iKey/g" $f;
        done
    done
done <<< "$SCRIPT_VARS"


#!/usr/bin/env bash
# Authored By : @https://tm.t/Immanuel_Raj

DEVICE=$1
DECISION=$2
TYPE=$3
. build/envsetup.sh

if [ $# -lt 3 ]; then
    echo "Missing mandatory parameters it must be like this :- bash build.sh jasmine_sprout true/false userdebug/eng/user"
    exit 1
fi

export WITH_GAPPS=$DECISION
lunch legion_$DEVICE-$TYPE
make installclean
make legion

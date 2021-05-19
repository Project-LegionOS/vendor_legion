DEVICE=$1
DECISION=$2
. build/envsetup.sh

if [ $# -lt 2 ]; then
    echo "Missing mandatory parameters it must be like this :- bash build.sh jasmine_sprout true/false"
    exit 1
fi

export WITH_GAPPS=$DECISION
lunch legion_$DEVICE-userdebug
make installclean
make legion

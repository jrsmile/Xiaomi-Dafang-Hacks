#!/bin/sh

if [ "$1" == "on" ]; then

    source /system/sdcard/config/motion.conf
    source /system/sdcard/scripts/common_functions.sh

    # Fetch Image from Camera and Save it on NFS Share
    /system/sdcard/bin/getimage > /system/media/nas/$(busybox hostname)/$(busybox date +%s).jpg
fi

#!/sbin/sh
# This script is Needed to Set Automatically Device Props.

load_RMX1911()
{
    resetprop "ro.product.model" "Realme 5"
    resetprop "ro.build.product" "RMX1911"
    resetprop "ro.product.device" "RMX1911"
}

load_RMX1925()
{
    resetprop "ro.product.model" "Realme 5s"
    resetprop "ro.build.product" "RMX1925"
    resetprop "ro.product.device" "RMX1925"
}

load_RMX2030()
{
    resetprop "ro.product.model" "Realme 5i"
    resetprop "ro.build.product" "RMX2030"
    resetprop "ro.product.device" "RMX2030"
}


board_id=$(cat /proc/cmdline)
echo $board_id

case $board_id in
    "board_id=S86125AA1")
        load_RMX1925
        ;;
    "board_id=S86129AA1")
        load_RMX2030
        ;;        
    *)
        load_RMX1911
        ;;
esac

exit 0
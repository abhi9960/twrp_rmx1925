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


id=$(cat /proc/oppoVersion/serialID)
echo $id

case $id in
    "0x7f7c7d59")
        load_RMX1925
        ;;
    "0xf6eba053")
        load_RMX1911
        ;;        
    *)
        load_RMX2030
        ;;
esac

exit 0

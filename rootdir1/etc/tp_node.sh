#!/system/bin/sh

if [ ! -d "/data/tp" ]; then
    mkdir /data/tp
    chmod 0775 /data/tp
    chown system:system /data/tp
else
    rm /data/tp/*
fi

# ==============================================================================
# gt1151

if [ -e "/sys/bus/i2c/devices/5-005d/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/5-005d/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/5-005d/wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/5-005d/wakeup_gesture
	ln -s /sys/bus/i2c/devices/5-005d/wakeup_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/gt1x_test/openshort" ]; then
	ln -s /sys/gt1x_test/openshort /data/tp/ic_detect
fi

if [ -e "/sys/bus/i2c/devices/5-005d/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/5-005d/touch_mode
	ln -s /sys/bus/i2c/devices/5-005d/touch_mode /data/tp/touch_mode
fi

if [ -e "/sys/bus/i2c/devices/5-005d/keypad_enable" ]; then
	chown system:system /sys/bus/i2c/devices/5-005d/keypad_enable
	ln -s /sys/bus/i2c/devices/5-005d/keypad_enable /data/tp/keypad_enable
fi

# ==============================================================================
# Cypress 

if [ -e "/sys/bus/i2c/devices/5-0024/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/5-0024/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/5-0024/hw_reset" ]; then
	ln -s /sys/bus/i2c/devices/5-0024/hw_reset /data/tp/reset
	echo 1 > /sys/bus/i2c/devices/5-0024/hw_reset
fi

if [ -e "/sys/bus/i2c/devices/5-0024/ic_detect" ]; then
	ln -s /sys/bus/i2c/devices/5-0024/ic_detect /data/tp/ic_detect
fi

if [ -e "/sys/bus/i2c/devices/5-0024/manual_cali" ]; then
	ln -s /sys/bus/i2c/devices/5-0024/manual_cali /data/tp/manual_cali
fi

if [ -e "/sys/bus/i2c/devices/5-0024/fw_upgrade_flag" ]; then
	ln -s /sys/bus/i2c/devices/5-0024/fw_upgrade_flag /data/tp/fw_upgrade_flag
fi

if [ -e "/sys/bus/i2c/devices/5-0024/easy_wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/5-0024/easy_wakeup_gesture
	ln -s /sys/bus/i2c/devices/5-0024/easy_wakeup_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/bus/i2c/devices/5-0024/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/5-0024/touch_mode
	ln -s /sys/bus/i2c/devices/5-0024/touch_mode /data/tp/touch_mode
fi

if [ -e "/sys/bus/i2c/devices/5-0024/hall_mode" ]; then
	chown system:system /sys/bus/i2c/devices/5-0024/hall_mode
	ln -s /sys/bus/i2c/devices/5-0024/hall_mode /data/tp/hall_mode
fi

if [ -e "/sys/bus/i2c/devices/5-0024/keypad_enable" ]; then
	chown system:system /sys/bus/i2c/devices/5-0024/keypad_enable
	ln -s /sys/bus/i2c/devices/5-0024/keypad_enable /data/tp/keypad_enable
fi


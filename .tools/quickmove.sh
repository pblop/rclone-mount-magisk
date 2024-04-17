#!/usr/bin/env bash


rm ../rclonemount.zip
zip -r ../rclonemount.zip customize.sh module.prop service.sh system common META-INF syncd.sh uninstall.sh
adb shell rm /sdcard/rclonemount.zip
adb push ../rclonemount.zip /sdcard/

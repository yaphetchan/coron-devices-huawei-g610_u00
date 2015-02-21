#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
    echo ">>> Remove the Official Verify Preference."
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	sed -i -e "/setOfficialVerifyPreference/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali	

    echo ">>> change EMULATED_STORAGE_TARGET to EMULATED_STORAGE_TARGET_X in Memory.java"
    sed -i 's/EMULATED_STORAGE_TARGET/EMULATED_STORAGE_TARGET_X/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali
    echo ">>> use vendor persist.sys.primarysd property to support storage change"
    sed -i 's/persist.sys.baidu.default_write/persist.sys.primarysd/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali
    sed -i 's/first_storage/0/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali
    sed -i 's/secondary_storage/1/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali

    echo ">>> use isHaveExternalSdcard to check weather support UsbMassStorage in UsbSettings.java"
    sed -i 's#invoke-virtual {v.*}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z#invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->isHaveExternalSdcard()Z#g' $tempSmaliDir/smali/com/android/settings/deviceinfo/UsbSettings.smali

    echo ">>> add origin settings"
    sed -i '/com.android.settings.ManageApplicationsSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml
     
fi


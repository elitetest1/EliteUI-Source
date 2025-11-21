#!/bin/bash
# Debloat Tool
# based in debloat script of Salvo Giangreco | Adapted by: Elitetest1
# date: $(date +%Y-%m-%d)

BASE_DIR=$(pwd)
WORK_DIR="$BASE_DIR/EliteUI-Delta/extracted_content"
LOG_FILE="$BASE_DIR/debloat_log_$(date +%Y%m%d_%H%M%S).txt"

echo "EliteUI Debloat Log - $(date)" > "$LOG_FILE"
echo "--------------------------------------------------" >> "$LOG_FILE"

log_print() {
    echo "$1"
    echo "$1" >> "$LOG_FILE"
}

log_print ">>> Base Directory: $BASE_DIR"
log_print ">>> Target Directory: $WORK_DIR"
log_print ">>> Log File: $LOG_FILE"

if [ ! -d "$WORK_DIR" ]; then
    log_print "CRITICAL ERROR: 'extracted_content' folder not found."
    exit 1
fi

SYSTEM_PATH="$WORK_DIR/system"
SYSTEM_INNER_PATH="$WORK_DIR/system/system"
SYSEXT_PATH="$WORK_DIR/system/system/system_ext"
VENDOR_PATH="$WORK_DIR/vendor"
PRODUCT_PATH="$WORK_DIR/product"

SYSTEM_DEBLOAT=""
VENDOR_DEBLOAT=""
PRODUCT_DEBLOAT=""
SYSTEM_EXT_DEBLOAT=""

TARGET_COMMON_SUPPORT_EMBEDDED_SIM="false" 
TARGET_LCD_CONFIG_HFR_MODE="0"

SYSTEM_DEBLOAT+=" dpolicy_system "
VENDOR_DEBLOAT+=" etc/dpolicy "

FOUND_DRIVERS=$(find "$SYSTEM_INNER_PATH" -type d -name "*Driver-*" 2>/dev/null | sed "s|$SYSTEM_PATH/||g")
SYSTEM_DEBLOAT+=" $FOUND_DRIVERS "

SYSTEM_DEBLOAT+=" system/etc/proca.db "
SYSTEM_DEBLOAT+="
system/bin/ssud
system/etc/init/ssu.rc
system/etc/permissions/privapp-permissions-com.samsung.ssu.xml
system/etc/sysconfig/samsungsimunlock.xml
system/lib64/android.security.securekeygeneration-ndk.so
system/lib64/libssu_keystore2.so
system/priv-app/SsuService
"

VENDOR_DEBLOAT+="
recovery-from-boot.p
bin/install-recovery.sh
etc/init/vendor_flash_recovery.rc
"
SYSTEM_DEBLOAT+=" system/preload "

if [ -f "$SYSTEM_INNER_PATH/etc/vpl_apks_count_list.txt" ]; then
    truncate -s 0 "$SYSTEM_INNER_PATH/etc/vpl_apks_count_list.txt"
    log_print "[V] TRUNCATED: system/etc/vpl_apks_count_list.txt"
fi

[[ "$TARGET_COMMON_SUPPORT_EMBEDDED_SIM" == "false" ]] && SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.samsung.android.app.esimkeystring.xml
system/etc/permissions/privapp-permissions-com.samsung.euicc.xml
system/etc/sysconfig/preinstalled-packages-com.samsung.android.app.esimkeystring.xml
system/etc/sysconfig/preinstalled-packages-com.samsung.euicc.xml
system/priv-app/EsimKeyString
system/priv-app/EuiccService
"

[ "$TARGET_LCD_CONFIG_HFR_MODE" -lt "1" ] && SYSTEM_DEBLOAT+=" system/priv-app/IntelligentDynamicFpsService "

SYSTEM_DEBLOAT+=" system/app/MAPSAgent "
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.samsung.android.app.updatecenter.xml
system/priv-app/AppUpdateCenter
"
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.sec.bcservice.xml
system/priv-app/BCService
"
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.samsung.android.game.gamehome.xml
system/priv-app/GameHome
"
PRODUCT_DEBLOAT+=" app/BardShell "
PRODUCT_DEBLOAT+=" app/Gmail2 "
PRODUCT_DEBLOAT+=" app/AssistantShell "
PRODUCT_DEBLOAT+=" app/Chrome "
PRODUCT_DEBLOAT+=" app/DuoStub "
PRODUCT_DEBLOAT+=" app/Maps "
SYSTEM_DEBLOAT+=" system/app/PlayAutoInstallConfig "

SYSTEM_DEBLOAT+="
system/app/Cameralyzer
system/app/FactoryAirCommandManager
system/app/FactoryCameraFB
system/app/HMT
system/app/WlanTest
system/etc/default-permissions/default-permissions-com.sec.factory.cameralyzer.xml
system/etc/permissions/privapp-permissions-com.samsung.android.providers.factory.xml
system/etc/permissions/privapp-permissions-com.sec.facatfunction.xml
system/priv-app/FacAtFunction
system/priv-app/FactoryTestProvider
"

FOUND_TTS=$(find "$SYSTEM_INNER_PATH" -type d -name "*TTSVoice*" 2>/dev/null | sed "s|$SYSTEM_PATH/||g")
SYSTEM_DEBLOAT+=" $FOUND_TTS "

SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.sec.android.cover.ledcover.xml
system/priv-app/LedCoverService
"
SYSTEM_DEBLOAT+=" system/priv-app/YourPhone_P1_5 "
SYSTEM_DEBLOAT+="
system/app/LiveTranscribe
system/etc/sysconfig/feature-a11y-preload.xml
"
SYSTEM_DEBLOAT+="
system/app/FBAppManager_NS
system/etc/default-permissions/default-permissions-meta.xml
system/etc/permissions/privapp-permissions-meta.xml
system/etc/sysconfig/meta-hiddenapi-package-allowlist.xml
system/priv-app/FBInstaller_NS
system/priv-app/FBServices
"
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.microsoft.skydrive.xml
system/priv-app/OneDrive_Samsung_v3
"
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.mygalaxy.service.xml
system/etc/sysconfig/preinstalled-packages-com.mygalaxy.service.xml
system/priv-app/MyGalaxyService
"
SYSTEM_DEBLOAT+="
system/app/DsmsAPK
system/etc/permissions/privapp-permissions-com.samsung.android.dqagent.xml
system/etc/permissions/privapp-permissions-com.sec.android.diagmonagent.xml
system/etc/permissions/privapp-permissions-com.sec.android.soagent.xml
system/priv-app/DeviceQualityAgent36
system/priv-app/DiagMonAgent95
system/priv-app/SOAgent76
"
SYSTEM_DEBLOAT+="
system/etc/default-permissions/default-permissions-com.sec.android.mimage.avatarstickers.xml
system/etc/permissions/privapp-permissions-com.samsung.android.aremojieditor.xml
system/etc/permissions/privapp-permissions-com.sec.android.mimage.avatarstickers.xml
system/etc/permissions/signature-permissions-com.sec.android.mimage.avatarstickers.xml
system/priv-app/AREmojiEditor
system/priv-app/AvatarEmojiSticker
"
SYSTEM_DEBLOAT+=" system/app/SamsungCalendar "
SYSTEM_DEBLOAT+=" system/app/ClockPackage "
SYSTEM_DEBLOAT+=" system/app/MinusOnePage "
SYSTEM_DEBLOAT+="
system/etc/default-permissions/default-permissions-com.samsung.android.messaging.xml
system/etc/permissions/privapp-permissions-com.samsung.android.messaging.xml
system/priv-app/SamsungMessages
"
SYSTEM_DEBLOAT+="
system/app/SamsungPassAutofill_v1
system/etc/init/samsung_pass_authenticator_service.rc
system/etc/permissions/authfw.xml
system/etc/permissions/privapp-permissions-com.samsung.android.authfw.xml
system/etc/permissions/privapp-permissions-com.samsung.android.samsungpass.xml
system/etc/permissions/signature-permissions-com.samsung.android.samsungpass.xml
system/etc/permissions/signature-permissions-com.samsung.android.samsungpassautofill.xml
system/etc/sysconfig/samsungauthframework.xml
system/etc/sysconfig/samsungpassapp.xml
system/priv-app/AuthFramework
system/priv-app/SamsungPass
"
SYSTEM_DEBLOAT+=" system/app/SmartReminder "
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.samsung.android.ipsgeofence.xml
system/priv-app/IpsGeofence
"
SYSTEM_DEBLOAT+="
system/etc/init/digitalkey_init_ble_tss2.rc
system/etc/permissions/org.carconnectivity.android.digitalkey.rangingintent.xml
system/etc/permissions/org.carconnectivity.android.digitalkey.secureelement.xml
system/etc/permissions/privapp-permissions-com.samsung.android.carkey.xml
system/etc/permissions/privapp-permissions-com.samsung.android.dkey.xml
system/etc/permissions/privapp-permissions-com.samsung.android.spayfw.xml
system/etc/permissions/signature-permissions-com.samsung.android.spay.xml
system/etc/permissions/signature-permissions-com.samsung.android.spayfw.xml
system/etc/sysconfig/digitalkey.xml
system/etc/sysconfig/preinstalled-packages-com.samsung.android.dkey.xml
system/etc/sysconfig/preinstalled-packages-com.samsung.android.spayfw.xml
system/priv-app/DigitalKey
system/priv-app/PaymentFramework
system/priv-app/SamsungCarKeyFw
"

SYSTEM_EXT_DEBLOAT+="
framework/org.carconnectivity.android.digitalkey.rangingintent.jar
framework/org.carconnectivity.android.digitalkey.secureelement.jar
"

PRODUCT_DEBLOAT+="
overlay/GmsConfigOverlaySearchSelector.apk
priv-app/SearchSelector
"
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.samsung.android.settingshelper.xml
system/etc/sysconfig/settingshelper.xml
system/priv-app/SHClient
"
SYSTEM_DEBLOAT+="
system/etc/default-permissions/default-permissions-com.samsung.android.visualars.xml
system/etc/permissions/privapp-permissions-com.samsung.android.visualars.xml
system/priv-app/SmartTouchCall
"
SYSTEM_DEBLOAT+=" system/hidden/SmartTutor "
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.wssyncmldm.xml
system/priv-app/FotaAgent
"
SYSTEM_DEBLOAT+="
system/etc/permissions/privapp-permissions-com.samsung.android.svcagent.xml
system/priv-app/SVCAgent
"
SYSTEM_DEBLOAT+=" system/priv-app/SVoiceIME "
SYSTEM_DEBLOAT+="
system/app/VoiceAccess
system/etc/sysconfig/feature-a11y-preload-voacc.xml
"
PRODUCT_DEBLOAT+=" app/YouTube "

log_print ">>> STARTING DEBLOAT PROCESS..."

do_delete() {
    local partition_name=$1
    local base_path=$2
    local file_list=$3
    local count_deleted=0
    local count_missed=0

    if [ ! -d "$base_path" ]; then
        log_print ">>> Skipping $partition_name (Base path not found)"
        return
    fi

    log_print "--- Processing Partition: $partition_name ---"

    for file in $file_list; do
        file=$(echo "$file" | tr -d '[:space:]')
        if [ -z "$file" ]; then continue; fi

        local target="$base_path/$file"
        
        if [[ "$partition_name" == "SYSTEM" ]]; then
            if [[ "$file" != system/* ]]; then
                target="$base_path/system/$file"
            fi
        fi

        if [ -e "$target" ]; then
            rm -rf "$target"
            log_print "[V] DELETED: $file"
            ((count_deleted++))
        else
            log_print "[X] NOT FOUND: $file"
            ((count_missed++))
        fi
    done
    
    log_print ">>> Summary for $partition_name: Deleted: $count_deleted | Not Found: $count_missed"
    echo "" >> "$LOG_FILE"
}

do_delete "SYSTEM" "$SYSTEM_PATH" "$SYSTEM_DEBLOAT"
do_delete "VENDOR" "$VENDOR_PATH" "$VENDOR_DEBLOAT"
do_delete "PRODUCT" "$PRODUCT_PATH" "$PRODUCT_DEBLOAT"
do_delete "SYSTEM_EXT" "$SYSEXT_PATH" "$SYSTEM_EXT_DEBLOAT"

log_print "==========================================="
log_print " DEBLOAT COMPLETED "
log_print " Check log file: $LOG_FILE"
log_print "==========================================="
.class public abstract Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.super Landroid/os/Binder;
.source "ISemPersonaManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final greylist TRANSACTION_CMFALock:I = 0x40

.field static final greylist TRANSACTION_CMFAUnLock:I = 0x41

.field static final greylist TRANSACTION_addAppPackageNameToAllowList:I = 0x1e

.field static final greylist TRANSACTION_appliedPasswordPolicy:I = 0x35

.field static final greylist TRANSACTION_bindCoreServiceAsUser:I = 0x29

.field static final greylist TRANSACTION_broadcastIntentThroughPersona:I = 0x19

.field static final greylist TRANSACTION_clearAttributes:I = 0x22

.field static final greylist TRANSACTION_getAdminComponentName:I = 0x1d

.field static final greylist TRANSACTION_getAttributes:I = 0x21

.field static final greylist TRANSACTION_getContainerName:I = 0x8

.field static final greylist TRANSACTION_getContainerOrder:I = 0x16

.field static final greylist TRANSACTION_getCustomResource:I = 0x23

.field static final greylist TRANSACTION_getDualDARProfile:I = 0x30

.field static final greylist TRANSACTION_getECName:I = 0xa

.field static final greylist TRANSACTION_getFocusedLauncherId:I = 0x1f

.field static final greylist TRANSACTION_getFocusedUser:I = 0x2c

.field static final greylist TRANSACTION_getFotaVersion:I = 0x1a

.field static final greylist TRANSACTION_getKnoxForesightService:I = 0x4c

.field static final greylist TRANSACTION_getKnoxIcon:I = 0x24

.field static final greylist TRANSACTION_getMoveToKnoxMenuList:I = 0x2b

.field static final greylist TRANSACTION_getPersonaCacheValue:I = 0x1b

.field static final greylist TRANSACTION_getPersonaUserHasBeenShutdownBefore:I = 0x34

.field static final greylist TRANSACTION_getPersonalModeName:I = 0xd

.field static final greylist TRANSACTION_getProfileName:I = 0xb

.field static final greylist TRANSACTION_getProfiles:I = 0x2

.field static final greylist TRANSACTION_getRCPDataPolicy:I = 0x36

.field static final greylist TRANSACTION_getRCPDataPolicyForUser:I = 0x37

.field static final greylist TRANSACTION_getSecureFolderId:I = 0x6

.field static final greylist TRANSACTION_getSecureFolderName:I = 0x7

.field static final greylist TRANSACTION_getSecureFolderPolicy:I = 0x3e

.field static final greylist TRANSACTION_getSeparatedAppsList:I = 0x11

.field static final greylist TRANSACTION_getSeparationConfigfromCache:I = 0x42

.field static final greylist TRANSACTION_getUCMProfile:I = 0x32

.field static final greylist TRANSACTION_getUpdatedListWithAppSeparation:I = 0x13

.field static final greylist TRANSACTION_getWorkspaceName:I = 0x9

.field static final greylist TRANSACTION_hasLicensePermission:I = 0x4b

.field static final greylist TRANSACTION_hideMultiWindows:I = 0x28

.field static final greylist TRANSACTION_isAppSeparationPresent:I = 0x12

.field static final greylist TRANSACTION_isContainerCorePackageUID:I = 0x45

.field static final greylist TRANSACTION_isContainerService:I = 0x49

.field static final greylist TRANSACTION_isExternalStorageEnabled:I = 0x17

.field static final greylist TRANSACTION_isFOTAUpgrade:I = 0x1

.field static final greylist TRANSACTION_isFotaUpgradeVersionChanged:I = 0x5

.field static final greylist TRANSACTION_isInSeparatedAppsOnly:I = 0x10

.field static final greylist TRANSACTION_isKnoxProfileActivePasswordSufficientForParent:I = 0x2d

.field static final greylist TRANSACTION_isKnoxWindowExist:I = 0x15

.field static final greylist TRANSACTION_isMoveFilesToContainerAllowed:I = 0x3a

.field static final greylist TRANSACTION_isMoveFilesToOwnerAllowed:I = 0x3b

.field static final greylist TRANSACTION_isPasswordSufficientAfterKnoxProfileUnification:I = 0x2e

.field static final greylist TRANSACTION_isPossibleAddAppsToContainer:I = 0xf

.field static final greylist TRANSACTION_isShareClipboardDataToContainerAllowed:I = 0x3d

.field static final greylist TRANSACTION_isShareClipboardDataToOwnerAllowed:I = 0x39

.field static final greylist TRANSACTION_isUsbDebuggingAllowed:I = 0x50

.field static final greylist TRANSACTION_logDpmsKA:I = 0x3c

.field static final greylist TRANSACTION_notifyApplicationChanged:I = 0x14

.field static final greylist TRANSACTION_postPwdChangeNotificationForDeviceOwner:I = 0x48

.field static final greylist TRANSACTION_refreshLockTimer:I = 0x26

.field static final greylist TRANSACTION_registerDdmBroadcastReceiver:I = 0x4e

.field static final greylist TRANSACTION_registerSystemPersonaObserver:I = 0x3

.field static final greylist TRANSACTION_resetUCMProfile:I = 0x33

.field static final greylist TRANSACTION_sendKnoxForesightBroadcast:I = 0x4a

.field static final greylist TRANSACTION_sendProxyMessage:I = 0x27

.field static final greylist TRANSACTION_sendRequestKeyStatus:I = 0x2a

.field static final greylist TRANSACTION_setAppSeparationDefaultPolicy:I = 0x43

.field static final greylist TRANSACTION_setAttributes:I = 0x20

.field static final greylist TRANSACTION_setDdmPolicy:I = 0x4d

.field static final greylist TRANSACTION_setDualDARProfile:I = 0x2f

.field static final greylist TRANSACTION_setFocusedLauncherId:I = 0x4

.field static final greylist TRANSACTION_setPackageSettingInstalled:I = 0x25

.field static final greylist TRANSACTION_setPersonalModeName:I = 0xe

.field static final greylist TRANSACTION_setProfileName:I = 0xc

.field static final greylist TRANSACTION_setRCPDataPolicy:I = 0x38

.field static final greylist TRANSACTION_setSecureFolderPolicy:I = 0x3f

.field static final greylist TRANSACTION_setUCMProfile:I = 0x31

.field static final greylist TRANSACTION_shouldBlockCommand:I = 0x4f

.field static final greylist TRANSACTION_startActivityThroughPersona:I = 0x18

.field static final greylist TRANSACTION_startCountrySelectionActivity:I = 0x46

.field static final greylist TRANSACTION_startTermsActivity:I = 0x47

.field static final greylist TRANSACTION_updatePersonaCache:I = 0x1c

.field static final greylist TRANSACTION_updateProfileActivityTimeFromKnox:I = 0x44


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "isUsbDebuggingAllowed"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "shouldBlockCommand"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "registerDdmBroadcastReceiver"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "setDdmPolicy"

    return-object p0

    :pswitch_4
    const-string p0, "getKnoxForesightService"

    return-object p0

    :pswitch_5
    const-string p0, "hasLicensePermission"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "sendKnoxForesightBroadcast"

    return-object p0

    :pswitch_7
    const-string p0, "isContainerService"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "postPwdChangeNotificationForDeviceOwner"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "startTermsActivity"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "startCountrySelectionActivity"

    return-object p0

    :pswitch_b
    const-string p0, "isContainerCorePackageUID"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "updateProfileActivityTimeFromKnox"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "setAppSeparationDefaultPolicy"

    return-object p0

    :pswitch_e
    const-string p0, "getSeparationConfigfromCache"

    return-object p0

    :pswitch_f
    const-string p0, "CMFAUnLock"

    return-object p0

    :pswitch_10
    const-string p0, "CMFALock"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "setSecureFolderPolicy"

    return-object p0

    :pswitch_12
    const-string p0, "getSecureFolderPolicy"

    return-object p0

    :pswitch_13
    const-string p0, "isShareClipboardDataToContainerAllowed"

    return-object p0

    :pswitch_14
    const-string p0, "logDpmsKA"

    return-object p0

    :pswitch_15
    const-string p0, "isMoveFilesToOwnerAllowed"

    return-object p0

    :pswitch_16
    const-string p0, "isMoveFilesToContainerAllowed"

    return-object p0

    :pswitch_17
    const-string p0, "isShareClipboardDataToOwnerAllowed"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "setRCPDataPolicy"

    return-object p0

    :pswitch_19
    const-string p0, "getRCPDataPolicyForUser"

    return-object p0

    :pswitch_1a
    const-string p0, "getRCPDataPolicy"

    return-object p0

    :pswitch_1b
    const-string p0, "appliedPasswordPolicy"

    return-object p0

    :pswitch_1c
    const-string p0, "getPersonaUserHasBeenShutdownBefore"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "resetUCMProfile"

    return-object p0

    :pswitch_1e
    const-string p0, "getUCMProfile"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "setUCMProfile"

    return-object p0

    :pswitch_20
    const-string p0, "getDualDARProfile"

    return-object p0

    :pswitch_21
    const-string/jumbo p0, "setDualDARProfile"

    return-object p0

    :pswitch_22
    const-string p0, "isPasswordSufficientAfterKnoxProfileUnification"

    return-object p0

    :pswitch_23
    const-string p0, "isKnoxProfileActivePasswordSufficientForParent"

    return-object p0

    :pswitch_24
    const-string p0, "getFocusedUser"

    return-object p0

    :pswitch_25
    const-string p0, "getMoveToKnoxMenuList"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "sendRequestKeyStatus"

    return-object p0

    :pswitch_27
    const-string p0, "bindCoreServiceAsUser"

    return-object p0

    :pswitch_28
    const-string p0, "hideMultiWindows"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "sendProxyMessage"

    return-object p0

    :pswitch_2a
    const-string/jumbo p0, "refreshLockTimer"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "setPackageSettingInstalled"

    return-object p0

    :pswitch_2c
    const-string p0, "getKnoxIcon"

    return-object p0

    :pswitch_2d
    const-string p0, "getCustomResource"

    return-object p0

    :pswitch_2e
    const-string p0, "clearAttributes"

    return-object p0

    :pswitch_2f
    const-string p0, "getAttributes"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "setAttributes"

    return-object p0

    :pswitch_31
    const-string p0, "getFocusedLauncherId"

    return-object p0

    :pswitch_32
    const-string p0, "addAppPackageNameToAllowList"

    return-object p0

    :pswitch_33
    const-string p0, "getAdminComponentName"

    return-object p0

    :pswitch_34
    const-string/jumbo p0, "updatePersonaCache"

    return-object p0

    :pswitch_35
    const-string p0, "getPersonaCacheValue"

    return-object p0

    :pswitch_36
    const-string p0, "getFotaVersion"

    return-object p0

    :pswitch_37
    const-string p0, "broadcastIntentThroughPersona"

    return-object p0

    :pswitch_38
    const-string/jumbo p0, "startActivityThroughPersona"

    return-object p0

    :pswitch_39
    const-string p0, "isExternalStorageEnabled"

    return-object p0

    :pswitch_3a
    const-string p0, "getContainerOrder"

    return-object p0

    :pswitch_3b
    const-string p0, "isKnoxWindowExist"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "notifyApplicationChanged"

    return-object p0

    :pswitch_3d
    const-string p0, "getUpdatedListWithAppSeparation"

    return-object p0

    :pswitch_3e
    const-string p0, "isAppSeparationPresent"

    return-object p0

    :pswitch_3f
    const-string p0, "getSeparatedAppsList"

    return-object p0

    :pswitch_40
    const-string p0, "isInSeparatedAppsOnly"

    return-object p0

    :pswitch_41
    const-string p0, "isPossibleAddAppsToContainer"

    return-object p0

    :pswitch_42
    const-string/jumbo p0, "setPersonalModeName"

    return-object p0

    :pswitch_43
    const-string p0, "getPersonalModeName"

    return-object p0

    :pswitch_44
    const-string/jumbo p0, "setProfileName"

    return-object p0

    :pswitch_45
    const-string p0, "getProfileName"

    return-object p0

    :pswitch_46
    const-string p0, "getECName"

    return-object p0

    :pswitch_47
    const-string p0, "getWorkspaceName"

    return-object p0

    :pswitch_48
    const-string p0, "getContainerName"

    return-object p0

    :pswitch_49
    const-string p0, "getSecureFolderName"

    return-object p0

    :pswitch_4a
    const-string p0, "getSecureFolderId"

    return-object p0

    :pswitch_4b
    const-string p0, "isFotaUpgradeVersionChanged"

    return-object p0

    :pswitch_4c
    const-string/jumbo p0, "setFocusedLauncherId"

    return-object p0

    :pswitch_4d
    const-string/jumbo p0, "registerSystemPersonaObserver"

    return-object p0

    :pswitch_4e
    const-string p0, "getProfiles"

    return-object p0

    :pswitch_4f
    const-string p0, "isFOTAUpgrade"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x4f

    return p0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object v2, p0

    invoke-super {v2, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isUsbDebuggingAllowed()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->shouldBlockCommand(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentFilter;

    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerDdmBroadcastReceiver(Landroid/content/IntentFilter;Landroid/net/Uri;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setDdmPolicy(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hasLicensePermission(ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendKnoxForesightBroadcast(Landroid/content/Intent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerService(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->postPwdChangeNotificationForDeviceOwner(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startTermsActivity()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startCountrySelectionActivity(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerCorePackageUID(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updateProfileActivityTimeFromKnox(IJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAppSeparationDefaultPolicy(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFAUnLock(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFALock(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToContainerAllowed(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->logDpmsKA(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToOwnerAllowed(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToContainerAllowed(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->appliedPasswordPolicy(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->resetUCMProfile()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getUCMProfile()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1f
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setUCMProfile(Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_21
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setDualDARProfile(Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedUser()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendRequestKeyStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_28
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hideMultiWindows(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_2a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->refreshLockTimer(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_2d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->clearAttributes(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAttributes(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_30
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAttributes(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_31
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedLauncherId()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_32
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addAppPackageNameToAllowList(ILjava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_33
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_34
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_35
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_36
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFotaVersion()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_37
    move-object v2, p0

    sget-object p0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_38
    move-object v2, p0

    sget-object p0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_39
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isExternalStorageEnabled(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerOrder(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1, p4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxWindowExist(III)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->notifyApplicationChanged(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3d
    move-object v2, p0

    sget-object p0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3e
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isAppSeparationPresent()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3f
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSeparatedAppsList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_40
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isInSeparatedAppsOnly(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_41
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_42
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonalModeName(ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_43
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_44
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setProfileName(ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_45
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfileName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_46
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getECName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_47
    move-object v2, p0

    sget-object p0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_48
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_49
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4a
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderId()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_4b
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFotaUpgradeVersionChanged()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_4c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFocusedLauncherId(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_4d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_4e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_4f
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFOTAUpgrade()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

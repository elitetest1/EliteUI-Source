.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final blacklist TRANSACTION_addOnLocalColorsChangedListener:I = 0x21

.field static final greylist-max-o TRANSACTION_clearWallpaper:I = 0x10

.field static final blacklist TRANSACTION_copyFileToWallpaperFile:I = 0x4d

.field static final blacklist TRANSACTION_copyPreloadedFileToWallpaperFile:I = 0x4e

.field static final blacklist TRANSACTION_forceRebindWallpaper:I = 0x66

.field static final blacklist TRANSACTION_getAnimatedPkgName:I = 0x48

.field static final blacklist TRANSACTION_getBitmapCrop:I = 0xa

.field static final blacklist TRANSACTION_getBitmapCrops:I = 0x7

.field static final blacklist TRANSACTION_getCurrentBitmapCrops:I = 0x8

.field static final blacklist TRANSACTION_getDeviceColor:I = 0x49

.field static final blacklist TRANSACTION_getDisplayId:I = 0x61

.field static final blacklist TRANSACTION_getFutureBitmapCrops:I = 0x9

.field static final greylist-max-o TRANSACTION_getHeightHint:I = 0x14

.field static final blacklist TRANSACTION_getHighlightFilterState:I = 0x50

.field static final blacklist TRANSACTION_getLastCallingPackage:I = 0x4b

.field static final blacklist TRANSACTION_getLastCallingPackageWithPrefix:I = 0x4c

.field static final blacklist TRANSACTION_getLegacyDeviceColor:I = 0x4a

.field static final blacklist TRANSACTION_getLidState:I = 0x60

.field static final blacklist TRANSACTION_getLockWallpaper:I = 0x6

.field static final blacklist TRANSACTION_getLockWallpaperType:I = 0x2d

.field static final blacklist TRANSACTION_getMotionWallpaperPkgName:I = 0x3b

.field static final greylist-max-o TRANSACTION_getName:I = 0x16

.field static final blacklist TRANSACTION_getScreenshotFileDescriptor:I = 0x55

.field static final blacklist TRANSACTION_getSnapshotCount:I = 0x44

.field static final blacklist TRANSACTION_getSnapshotKeys:I = 0x47

.field static final blacklist TRANSACTION_getVideoFileName:I = 0x39

.field static final blacklist TRANSACTION_getVideoFilePath:I = 0x37

.field static final blacklist TRANSACTION_getVideoPackage:I = 0x38

.field static final greylist-max-o TRANSACTION_getWallpaper:I = 0x4

.field static final blacklist TRANSACTION_getWallpaperAssetFile:I = 0x54

.field static final blacklist TRANSACTION_getWallpaperAssets:I = 0x53

.field static final blacklist TRANSACTION_getWallpaperBackgroundRegion:I = 0x56

.field static final greylist-max-o TRANSACTION_getWallpaperColors:I = 0x1f

.field static final blacklist TRANSACTION_getWallpaperComponentExtras:I = 0x51

.field static final blacklist TRANSACTION_getWallpaperDimAmount:I = 0x28

.field static final blacklist TRANSACTION_getWallpaperExtras:I = 0x52

.field static final greylist-max-o TRANSACTION_getWallpaperIdForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_getWallpaperInfo:I = 0xc

.field static final blacklist TRANSACTION_getWallpaperInfoFile:I = 0xf

.field static final blacklist TRANSACTION_getWallpaperInfoWithFlags:I = 0xd

.field static final blacklist TRANSACTION_getWallpaperInstance:I = 0xe

.field static final blacklist TRANSACTION_getWallpaperOrientation:I = 0x57

.field static final blacklist TRANSACTION_getWallpaperWithFeature:I = 0x5

.field static final greylist-max-o TRANSACTION_getWidthHint:I = 0x13

.field static final greylist-max-o TRANSACTION_hasNamedWallpaper:I = 0x11

.field static final blacklist TRANSACTION_hasVideoWallpaper:I = 0x35

.field static final blacklist TRANSACTION_isDefaultWallpaperState:I = 0x32

.field static final blacklist TRANSACTION_isDesktopMode:I = 0x2b

.field static final blacklist TRANSACTION_isDesktopModeEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_isSetWallpaperAllowed:I = 0x19

.field static final blacklist TRANSACTION_isSnapshotTestMode:I = 0x42

.field static final blacklist TRANSACTION_isStaticWallpaper:I = 0x2a

.field static final blacklist TRANSACTION_isStockLiveWallpaper:I = 0x6a

.field static final blacklist TRANSACTION_isSystemAndLockPaired:I = 0x4f

.field static final blacklist TRANSACTION_isValidSnapshot:I = 0x46

.field static final blacklist TRANSACTION_isVideoWallpaper:I = 0x34

.field static final blacklist TRANSACTION_isVirtualWallpaperDisplay:I = 0x62

.field static final blacklist TRANSACTION_isWaitingForUnlockUser:I = 0x63

.field static final blacklist TRANSACTION_isWallpaperBackupAllowed:I = 0x1c

.field static final greylist-max-o TRANSACTION_isWallpaperBackupEligible:I = 0x1a

.field static final blacklist TRANSACTION_isWallpaperDataExists:I = 0x68

.field static final greylist-max-o TRANSACTION_isWallpaperSupported:I = 0x18

.field static final blacklist TRANSACTION_lockScreenWallpaperExists:I = 0x29

.field static final blacklist TRANSACTION_makeSnapshot:I = 0x40

.field static final blacklist TRANSACTION_notifyAodVisibilityState:I = 0x69

.field static final blacklist TRANSACTION_notifyGoingToSleep:I = 0x26

.field static final blacklist TRANSACTION_notifyPid:I = 0x67

.field static final blacklist TRANSACTION_notifyWakingUp:I = 0x25

.field static final greylist-max-o TRANSACTION_registerWallpaperColorsCallback:I = 0x22

.field static final blacklist TRANSACTION_removeOnLocalColorsChangedListener:I = 0x20

.field static final blacklist TRANSACTION_removeSnapshotByKey:I = 0x3e

.field static final blacklist TRANSACTION_removeSnapshotBySource:I = 0x3f

.field static final blacklist TRANSACTION_removeSnapshotByWhich:I = 0x3d

.field static final blacklist TRANSACTION_restoreSnapshot:I = 0x41

.field static final blacklist TRANSACTION_semClearWallpaperThumbnailCache:I = 0x5b

.field static final blacklist TRANSACTION_semGetPrimaryWallpaperColors:I = 0x5a

.field static final blacklist TRANSACTION_semGetSmartCropRect:I = 0x5f

.field static final blacklist TRANSACTION_semGetThumbnailFileDescriptor:I = 0x36

.field static final blacklist TRANSACTION_semGetUri:I = 0x65

.field static final blacklist TRANSACTION_semGetWallpaperColors:I = 0x59

.field static final blacklist TRANSACTION_semGetWallpaperComponent:I = 0x2f

.field static final blacklist TRANSACTION_semGetWallpaperCropHint:I = 0x31

.field static final blacklist TRANSACTION_semGetWallpaperType:I = 0x2e

.field static final blacklist TRANSACTION_semIsPreloadedWallpaper:I = 0x30

.field static final blacklist TRANSACTION_semRequestWallpaperColorsAnalysis:I = 0x5c

.field static final blacklist TRANSACTION_semSendWallpaperCommand:I = 0x58

.field static final blacklist TRANSACTION_semSetDLSWallpaperColors:I = 0x5d

.field static final blacklist TRANSACTION_semSetSmartCropRect:I = 0x5e

.field static final blacklist TRANSACTION_semSetUri:I = 0x64

.field static final blacklist TRANSACTION_semSetWallpaper:I = 0x1b

.field static final blacklist TRANSACTION_setAnimatedWallpaper:I = 0x3c

.field static final blacklist TRANSACTION_setCoverWallpaperCallback:I = 0x1e

.field static final greylist-max-o TRANSACTION_setDimensionHints:I = 0x12

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0x15

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x24

.field static final greylist-max-o TRANSACTION_setLockWallpaperCallback:I = 0x1d

.field static final blacklist TRANSACTION_setMotionWallpaper:I = 0x3a

.field static final blacklist TRANSACTION_setSnapshotSource:I = 0x45

.field static final blacklist TRANSACTION_setSnapshotTestMode:I = 0x43

.field static final blacklist TRANSACTION_setVideoWallpaper:I = 0x33

.field static final greylist-max-o TRANSACTION_setWallpaper:I = 0x1

.field static final greylist-max-o TRANSACTION_setWallpaperComponent:I = 0x3

.field static final greylist-max-o TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final blacklist TRANSACTION_setWallpaperDimAmount:I = 0x27

.field static final greylist-max-o TRANSACTION_settingsRestored:I = 0x17

.field static final greylist-max-o TRANSACTION_unregisterWallpaperColorsCallback:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IWallpaperManager;

    return-object v0

    :cond_1
    new-instance v0, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "isStockLiveWallpaper"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "notifyAodVisibilityState"

    return-object p0

    :pswitch_2
    const-string p0, "isWallpaperDataExists"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "notifyPid"

    return-object p0

    :pswitch_4
    const-string p0, "forceRebindWallpaper"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "semGetUri"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "semSetUri"

    return-object p0

    :pswitch_7
    const-string p0, "isWaitingForUnlockUser"

    return-object p0

    :pswitch_8
    const-string p0, "isVirtualWallpaperDisplay"

    return-object p0

    :pswitch_9
    const-string p0, "getDisplayId"

    return-object p0

    :pswitch_a
    const-string p0, "getLidState"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "semGetSmartCropRect"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "semSetSmartCropRect"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "semSetDLSWallpaperColors"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "semRequestWallpaperColorsAnalysis"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "semClearWallpaperThumbnailCache"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "semGetPrimaryWallpaperColors"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "semGetWallpaperColors"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "semSendWallpaperCommand"

    return-object p0

    :pswitch_13
    const-string p0, "getWallpaperOrientation"

    return-object p0

    :pswitch_14
    const-string p0, "getWallpaperBackgroundRegion"

    return-object p0

    :pswitch_15
    const-string p0, "getScreenshotFileDescriptor"

    return-object p0

    :pswitch_16
    const-string p0, "getWallpaperAssetFile"

    return-object p0

    :pswitch_17
    const-string p0, "getWallpaperAssets"

    return-object p0

    :pswitch_18
    const-string p0, "getWallpaperExtras"

    return-object p0

    :pswitch_19
    const-string p0, "getWallpaperComponentExtras"

    return-object p0

    :pswitch_1a
    const-string p0, "getHighlightFilterState"

    return-object p0

    :pswitch_1b
    const-string p0, "isSystemAndLockPaired"

    return-object p0

    :pswitch_1c
    const-string p0, "copyPreloadedFileToWallpaperFile"

    return-object p0

    :pswitch_1d
    const-string p0, "copyFileToWallpaperFile"

    return-object p0

    :pswitch_1e
    const-string p0, "getLastCallingPackageWithPrefix"

    return-object p0

    :pswitch_1f
    const-string p0, "getLastCallingPackage"

    return-object p0

    :pswitch_20
    const-string p0, "getLegacyDeviceColor"

    return-object p0

    :pswitch_21
    const-string p0, "getDeviceColor"

    return-object p0

    :pswitch_22
    const-string p0, "getAnimatedPkgName"

    return-object p0

    :pswitch_23
    const-string p0, "getSnapshotKeys"

    return-object p0

    :pswitch_24
    const-string p0, "isValidSnapshot"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "setSnapshotSource"

    return-object p0

    :pswitch_26
    const-string p0, "getSnapshotCount"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "setSnapshotTestMode"

    return-object p0

    :pswitch_28
    const-string p0, "isSnapshotTestMode"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "restoreSnapshot"

    return-object p0

    :pswitch_2a
    const-string/jumbo p0, "makeSnapshot"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "removeSnapshotBySource"

    return-object p0

    :pswitch_2c
    const-string/jumbo p0, "removeSnapshotByKey"

    return-object p0

    :pswitch_2d
    const-string/jumbo p0, "removeSnapshotByWhich"

    return-object p0

    :pswitch_2e
    const-string/jumbo p0, "setAnimatedWallpaper"

    return-object p0

    :pswitch_2f
    const-string p0, "getMotionWallpaperPkgName"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "setMotionWallpaper"

    return-object p0

    :pswitch_31
    const-string p0, "getVideoFileName"

    return-object p0

    :pswitch_32
    const-string p0, "getVideoPackage"

    return-object p0

    :pswitch_33
    const-string p0, "getVideoFilePath"

    return-object p0

    :pswitch_34
    const-string/jumbo p0, "semGetThumbnailFileDescriptor"

    return-object p0

    :pswitch_35
    const-string p0, "hasVideoWallpaper"

    return-object p0

    :pswitch_36
    const-string p0, "isVideoWallpaper"

    return-object p0

    :pswitch_37
    const-string/jumbo p0, "setVideoWallpaper"

    return-object p0

    :pswitch_38
    const-string p0, "isDefaultWallpaperState"

    return-object p0

    :pswitch_39
    const-string/jumbo p0, "semGetWallpaperCropHint"

    return-object p0

    :pswitch_3a
    const-string/jumbo p0, "semIsPreloadedWallpaper"

    return-object p0

    :pswitch_3b
    const-string/jumbo p0, "semGetWallpaperComponent"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "semGetWallpaperType"

    return-object p0

    :pswitch_3d
    const-string p0, "getLockWallpaperType"

    return-object p0

    :pswitch_3e
    const-string p0, "isDesktopModeEnabled"

    return-object p0

    :pswitch_3f
    const-string p0, "isDesktopMode"

    return-object p0

    :pswitch_40
    const-string p0, "isStaticWallpaper"

    return-object p0

    :pswitch_41
    const-string p0, "lockScreenWallpaperExists"

    return-object p0

    :pswitch_42
    const-string p0, "getWallpaperDimAmount"

    return-object p0

    :pswitch_43
    const-string/jumbo p0, "setWallpaperDimAmount"

    return-object p0

    :pswitch_44
    const-string/jumbo p0, "notifyGoingToSleep"

    return-object p0

    :pswitch_45
    const-string/jumbo p0, "notifyWakingUp"

    return-object p0

    :pswitch_46
    const-string/jumbo p0, "setInAmbientMode"

    return-object p0

    :pswitch_47
    const-string/jumbo p0, "unregisterWallpaperColorsCallback"

    return-object p0

    :pswitch_48
    const-string/jumbo p0, "registerWallpaperColorsCallback"

    return-object p0

    :pswitch_49
    const-string p0, "addOnLocalColorsChangedListener"

    return-object p0

    :pswitch_4a
    const-string/jumbo p0, "removeOnLocalColorsChangedListener"

    return-object p0

    :pswitch_4b
    const-string p0, "getWallpaperColors"

    return-object p0

    :pswitch_4c
    const-string/jumbo p0, "setCoverWallpaperCallback"

    return-object p0

    :pswitch_4d
    const-string/jumbo p0, "setLockWallpaperCallback"

    return-object p0

    :pswitch_4e
    const-string p0, "isWallpaperBackupAllowed"

    return-object p0

    :pswitch_4f
    const-string/jumbo p0, "semSetWallpaper"

    return-object p0

    :pswitch_50
    const-string p0, "isWallpaperBackupEligible"

    return-object p0

    :pswitch_51
    const-string p0, "isSetWallpaperAllowed"

    return-object p0

    :pswitch_52
    const-string p0, "isWallpaperSupported"

    return-object p0

    :pswitch_53
    const-string/jumbo p0, "settingsRestored"

    return-object p0

    :pswitch_54
    const-string p0, "getName"

    return-object p0

    :pswitch_55
    const-string/jumbo p0, "setDisplayPadding"

    return-object p0

    :pswitch_56
    const-string p0, "getHeightHint"

    return-object p0

    :pswitch_57
    const-string p0, "getWidthHint"

    return-object p0

    :pswitch_58
    const-string/jumbo p0, "setDimensionHints"

    return-object p0

    :pswitch_59
    const-string p0, "hasNamedWallpaper"

    return-object p0

    :pswitch_5a
    const-string p0, "clearWallpaper"

    return-object p0

    :pswitch_5b
    const-string p0, "getWallpaperInfoFile"

    return-object p0

    :pswitch_5c
    const-string p0, "getWallpaperInstance"

    return-object p0

    :pswitch_5d
    const-string p0, "getWallpaperInfoWithFlags"

    return-object p0

    :pswitch_5e
    const-string p0, "getWallpaperInfo"

    return-object p0

    :pswitch_5f
    const-string p0, "getWallpaperIdForUser"

    return-object p0

    :pswitch_60
    const-string p0, "getBitmapCrop"

    return-object p0

    :pswitch_61
    const-string p0, "getFutureBitmapCrops"

    return-object p0

    :pswitch_62
    const-string p0, "getCurrentBitmapCrops"

    return-object p0

    :pswitch_63
    const-string p0, "getBitmapCrops"

    return-object p0

    :pswitch_64
    const-string p0, "getLockWallpaper"

    return-object p0

    :pswitch_65
    const-string p0, "getWallpaperWithFeature"

    return-object p0

    :pswitch_66
    const-string p0, "getWallpaper"

    return-object p0

    :pswitch_67
    const-string/jumbo p0, "setWallpaperComponent"

    return-object p0

    :pswitch_68
    const-string/jumbo p0, "setWallpaperComponentChecked"

    return-object p0

    :pswitch_69
    const-string/jumbo p0, "setWallpaper"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
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

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x69

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    const-string v3, "android.app.IWallpaperManager"

    const/4 v14, 0x1

    if-lt v1, v14, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :cond_1
    packed-switch v1, :pswitch_data_0

    move-object v10, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->isStockLiveWallpaper(II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->notifyAodVisibilityState(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->isWallpaperDataExists(II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/IWallpaperManager$Stub;->notifyPid(IILjava/lang/String;Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->forceRebindWallpaper(II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->semGetUri(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    move v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v5, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v6, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move v7, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v2, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/app/IWallpaperManager$Stub;->semSetUri(Ljava/lang/String;ZIILjava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->isWaitingForUnlockUser(II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isVirtualWallpaperDisplay(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getDisplayId(I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getLidState()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    sget-object v1, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->semRequestWallpaperColorsAnalysis(ILjava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->semClearWallpaperThumbnailCache(IILjava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperOrientation(II)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getWallpaperBackgroundRegion(III)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getScreenshotFileDescriptor(IILandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaperAssetFile(Ljava/lang/String;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperAssets(II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperComponentExtras(II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getHighlightFilterState(I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isSystemAndLockPaired(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->copyFileToWallpaperFile(ILjava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->getLastCallingPackageWithPrefix(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getLastCallingPackage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getLegacyDeviceColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->getSnapshotKeys(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isValidSnapshot(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->setSnapshotSource(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getSnapshotCount(I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->setSnapshotTestMode(Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->isSnapshotTestMode()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->restoreSnapshot(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->makeSnapshot(IILandroid/os/Bundle;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotBySource(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByKey(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByWhich(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/IWallpaperManager$Stub;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/IWallpaperManager$Stub;->setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->semGetThumbnailFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->hasVideoWallpaper()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->isVideoWallpaper()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v7, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v8, v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isDefaultWallpaperState(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->semIsPreloadedWallpaper(II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperType(I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaperType()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isDesktopModeEnabled(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->isDesktopMode()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isStaticWallpaper(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->lockScreenWallpaperExists()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperDimAmount()F

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDimAmount(F)V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->notifyGoingToSleep(IILandroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->notifyWakingUp(IILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZJ)V

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v1

    sget-object v3, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v1

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4b
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_4c
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupAllowed(II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4f
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v8, v7

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v9

    move-object v10, v8

    move-object v8, v9

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v11, v10

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v12, v11

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v6, v12

    move-object v12, v15

    invoke-virtual/range {v0 .. v12}, Landroid/app/IWallpaperManager$Stub;->semSetWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v11, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v13, v11, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_50
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_51
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_52
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_53
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_54
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_55
    move-object v6, v2

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_56
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getHeightHint(I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_57
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWidthHint(I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_58
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_59
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5b
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_5c
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_5d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_5e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_5f
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_60
    move-object v6, v2

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v6}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_61
    move-object v6, v2

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    sget-object v2, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_62
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getCurrentBitmapCrops(II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_63
    move-object v6, v2

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_64
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v13, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_65
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    move-object/from16 v10, p2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v9}, Landroid/app/IWallpaperManager$Stub;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZZI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v13, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_66
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v13, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_67
    move-object v10, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_68
    move-object v10, v2

    sget-object v1, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_69
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v8

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v10, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v13, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
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

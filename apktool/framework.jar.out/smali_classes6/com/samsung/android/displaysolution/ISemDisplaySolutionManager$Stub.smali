.class public abstract Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.super Landroid/os/Binder;
.source "ISemDisplaySolutionManager.java"

# interfaces
.implements Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAlphaMaskLevel:I = 0x9

.field static final blacklist TRANSACTION_getAutoCurrentLimitOffModeEnabled:I = 0x5

.field static final blacklist TRANSACTION_getBlfAdaptiveCurrentIndex:I = 0x27

.field static final blacklist TRANSACTION_getCameraModeEnable:I = 0x3

.field static final blacklist TRANSACTION_getDouAppModeEnable:I = 0x4

.field static final blacklist TRANSACTION_getFingerPrintBacklightValue:I = 0x8

.field static final blacklist TRANSACTION_getGalleryModeEnable:I = 0x2

.field static final blacklist TRANSACTION_getOnPixelRatioValueForPMS:I = 0x6

.field static final blacklist TRANSACTION_getVideoEnhancerSettingState:I = 0x7

.field static final blacklist TRANSACTION_getVideoModeEnable:I = 0x1

.field static final blacklist TRANSACTION_isBlueLightFilterScheduledTime:I = 0x24

.field static final blacklist TRANSACTION_isMdnieScenarioControlServiceEnabled:I = 0xa

.field static final blacklist TRANSACTION_onAutoCurrentLimitOffMode:I = 0x12

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChanged:I = 0xf

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedInt:I = 0x11

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedWithBrightness:I = 0x10

.field static final blacklist TRANSACTION_onBurnInPreventionDisabled:I = 0x13

.field static final blacklist TRANSACTION_onDetailVeiwStateChanged:I = 0xe

.field static final blacklist TRANSACTION_setAutoCurrentLimitOffModeEnabled:I = 0x18

.field static final blacklist TRANSACTION_setBlfEnableTimeBySchedule:I = 0x21

.field static final blacklist TRANSACTION_setCameraModeEnable:I = 0x16

.field static final blacklist TRANSACTION_setDouAppModeEnable:I = 0x17

.field static final blacklist TRANSACTION_setEadIndexOffset:I = 0x25

.field static final blacklist TRANSACTION_setEyeComfortWeightingFactor:I = 0x1e

.field static final blacklist TRANSACTION_setGalleryModeEnable:I = 0x15

.field static final blacklist TRANSACTION_setHighDynamicRangeMode:I = 0xb

.field static final blacklist TRANSACTION_setIRCompensationMode:I = 0xd

.field static final blacklist TRANSACTION_setMdnieScenarioControlServiceEnable:I = 0x19

.field static final blacklist TRANSACTION_setMultipleScreenBrightness:I = 0x1b

.field static final blacklist TRANSACTION_setMultipleScreenBrightnessValueForHDR:I = 0x1d

.field static final blacklist TRANSACTION_setOnPixelRatioValueForPMS:I = 0x1c

.field static final blacklist TRANSACTION_setRenderIntentValue:I = 0x26

.field static final blacklist TRANSACTION_setScreenBrightnessForPreview:I = 0x1a

.field static final blacklist TRANSACTION_setSleepPatternBLF:I = 0x20

.field static final blacklist TRANSACTION_setVideoEnhancerSettingState:I = 0x1f

.field static final blacklist TRANSACTION_setVideoModeEnable:I = 0x14

.field static final blacklist TRANSACTION_updateAutoBrightnessLux:I = 0xc

.field static final blacklist TRANSACTION_updateGlutMode:I = 0x22

.field static final blacklist TRANSACTION_updateQdcmMode:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "getBlfAdaptiveCurrentIndex"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "setRenderIntentValue"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "setEadIndexOffset"

    return-object p0

    :pswitch_3
    const-string p0, "isBlueLightFilterScheduledTime"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "updateQdcmMode"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "updateGlutMode"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "setBlfEnableTimeBySchedule"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setSleepPatternBLF"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "setVideoEnhancerSettingState"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "setEyeComfortWeightingFactor"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "setMultipleScreenBrightnessValueForHDR"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "setOnPixelRatioValueForPMS"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "setMultipleScreenBrightness"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "setScreenBrightnessForPreview"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "setMdnieScenarioControlServiceEnable"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "setAutoCurrentLimitOffModeEnabled"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "setDouAppModeEnable"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "setCameraModeEnable"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "setGalleryModeEnable"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "setVideoModeEnable"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "onBurnInPreventionDisabled"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "onAutoCurrentLimitOffMode"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "onAutoCurrentLimitStateChangedInt"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "onAutoCurrentLimitStateChangedWithBrightness"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "onAutoCurrentLimitStateChanged"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "onDetailVeiwStateChanged"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "setIRCompensationMode"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "updateAutoBrightnessLux"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "setHighDynamicRangeMode"

    return-object p0

    :pswitch_1d
    const-string p0, "isMdnieScenarioControlServiceEnabled"

    return-object p0

    :pswitch_1e
    const-string p0, "getAlphaMaskLevel"

    return-object p0

    :pswitch_1f
    const-string p0, "getFingerPrintBacklightValue"

    return-object p0

    :pswitch_20
    const-string p0, "getVideoEnhancerSettingState"

    return-object p0

    :pswitch_21
    const-string p0, "getOnPixelRatioValueForPMS"

    return-object p0

    :pswitch_22
    const-string p0, "getAutoCurrentLimitOffModeEnabled"

    return-object p0

    :pswitch_23
    const-string p0, "getDouAppModeEnable"

    return-object p0

    :pswitch_24
    const-string p0, "getCameraModeEnable"

    return-object p0

    :pswitch_25
    const-string p0, "getGalleryModeEnable"

    return-object p0

    :pswitch_26
    const-string p0, "getVideoModeEnable"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x26

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

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
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getBlfAdaptiveCurrentIndex()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setRenderIntentValue(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEadIndexOffset(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isBlueLightFilterScheduledTime()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->updateQdcmMode(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->updateGlutMode(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setBlfEnableTimeBySchedule(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setSleepPatternBLF(Ljava/lang/String;JJF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEyeComfortWeightingFactor(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightnessValueForHDR(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightness(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setScreenBrightnessForPreview(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMdnieScenarioControlServiceEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setAutoCurrentLimitOffModeEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setDouAppModeEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setCameraModeEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setGalleryModeEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoModeEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onBurnInPreventionDisabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitOffMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedInt(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedWithBrightness(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onDetailVeiwStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setIRCompensationMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->updateAutoBrightnessLux(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setHighDynamicRangeMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isMdnieScenarioControlServiceEnabled()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1, p4}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAlphaMaskLevel(FFF)F

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :pswitch_1f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getFingerPrintBacklightValue(I)F

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    :pswitch_20
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_21
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_22
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAutoCurrentLimitOffModeEnabled()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_23
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDouAppModeEnable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_24
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getCameraModeEnable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_25
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getGalleryModeEnable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_26
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoModeEnable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

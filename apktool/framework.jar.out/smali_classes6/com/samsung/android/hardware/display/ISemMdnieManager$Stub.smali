.class public abstract Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.super Landroid/os/Binder;
.source "ISemMdnieManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/display/ISemMdnieManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/ISemMdnieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_afpcDataApply:I = 0x24

.field static final blacklist TRANSACTION_afpcDataOff:I = 0x25

.field static final blacklist TRANSACTION_afpcDataVerify:I = 0x22

.field static final blacklist TRANSACTION_afpcDataWrite:I = 0x23

.field static final blacklist TRANSACTION_afpcWorkOff:I = 0x26

.field static final blacklist TRANSACTION_disableNightMode:I = 0xe

.field static final blacklist TRANSACTION_enableNightMode:I = 0xd

.field static final blacklist TRANSACTION_getContentMode:I = 0x2

.field static final blacklist TRANSACTION_getNightModeBlock:I = 0x10

.field static final blacklist TRANSACTION_getNightModeCct:I = 0x14

.field static final blacklist TRANSACTION_getNightModeStep:I = 0x13

.field static final blacklist TRANSACTION_getScreenMode:I = 0x1

.field static final blacklist TRANSACTION_getSupportedContentMode:I = 0x6

.field static final blacklist TRANSACTION_getSupportedScreenMode:I = 0x4

.field static final blacklist TRANSACTION_isContentModeSupported:I = 0x5

.field static final blacklist TRANSACTION_isNightModeSupported:I = 0xc

.field static final blacklist TRANSACTION_isScreenModeSupported:I = 0x3

.field static final blacklist TRANSACTION_setColorFadeNightDim:I = 0x19

.field static final blacklist TRANSACTION_setColorVision:I = 0x1a

.field static final blacklist TRANSACTION_setContentMode:I = 0x8

.field static final blacklist TRANSACTION_setEadMode:I = 0xa

.field static final blacklist TRANSACTION_setEadModeSub:I = 0xb

.field static final blacklist TRANSACTION_setExtraDimMode:I = 0x16

.field static final blacklist TRANSACTION_setHighBrightnessMode:I = 0x17

.field static final blacklist TRANSACTION_setHighDynamicRangeMode:I = 0x18

.field static final blacklist TRANSACTION_setLightNotificationMode:I = 0x20

.field static final blacklist TRANSACTION_setNightMode:I = 0x15

.field static final blacklist TRANSACTION_setNightModeBlock:I = 0xf

.field static final blacklist TRANSACTION_setNightModeCct:I = 0x12

.field static final blacklist TRANSACTION_setNightModeStep:I = 0x11

.field static final blacklist TRANSACTION_setScreenMode:I = 0x7

.field static final blacklist TRANSACTION_setWhiteRGB:I = 0x9

.field static final blacklist TRANSACTION_setmDNIeAccessibilityMode:I = 0x1f

.field static final blacklist TRANSACTION_setmDNIeColorBlind:I = 0x1b

.field static final blacklist TRANSACTION_setmDNIeEmergencyMode:I = 0x1e

.field static final blacklist TRANSACTION_setmDNIeNegative:I = 0x1c

.field static final blacklist TRANSACTION_setmDNIeScreenCurtain:I = 0x1d

.field static final blacklist TRANSACTION_updateAlwaysOnDisplay:I = 0x21


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/display/ISemMdnieManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "afpcWorkOff"

    return-object p0

    :pswitch_1
    const-string p0, "afpcDataOff"

    return-object p0

    :pswitch_2
    const-string p0, "afpcDataApply"

    return-object p0

    :pswitch_3
    const-string p0, "afpcDataWrite"

    return-object p0

    :pswitch_4
    const-string p0, "afpcDataVerify"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "updateAlwaysOnDisplay"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "setLightNotificationMode"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setmDNIeAccessibilityMode"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "setmDNIeEmergencyMode"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "setmDNIeScreenCurtain"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "setmDNIeNegative"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "setmDNIeColorBlind"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "setColorVision"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "setColorFadeNightDim"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "setHighDynamicRangeMode"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "setHighBrightnessMode"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "setExtraDimMode"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "setNightMode"

    return-object p0

    :pswitch_12
    const-string p0, "getNightModeCct"

    return-object p0

    :pswitch_13
    const-string p0, "getNightModeStep"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "setNightModeCct"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "setNightModeStep"

    return-object p0

    :pswitch_16
    const-string p0, "getNightModeBlock"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "setNightModeBlock"

    return-object p0

    :pswitch_18
    const-string p0, "disableNightMode"

    return-object p0

    :pswitch_19
    const-string p0, "enableNightMode"

    return-object p0

    :pswitch_1a
    const-string p0, "isNightModeSupported"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "setEadModeSub"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "setEadMode"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "setWhiteRGB"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "setContentMode"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "setScreenMode"

    return-object p0

    :pswitch_20
    const-string p0, "getSupportedContentMode"

    return-object p0

    :pswitch_21
    const-string p0, "isContentModeSupported"

    return-object p0

    :pswitch_22
    const-string p0, "getSupportedScreenMode"

    return-object p0

    :pswitch_23
    const-string p0, "isScreenModeSupported"

    return-object p0

    :pswitch_24
    const-string p0, "getContentMode"

    return-object p0

    :pswitch_25
    const-string p0, "getScreenMode"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x25

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

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
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcWorkOff()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataOff()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataApply()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataWrite()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataVerify()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->updateAlwaysOnDisplay(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setLightNotificationMode(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeAccessibilityMode(IZ)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeEmergencyMode(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeScreenCurtain(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeNegative(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeColorBlind(Z[I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setColorVision(ZII)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setColorFadeNightDim(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setHighDynamicRangeMode(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setHighBrightnessMode(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setExtraDimMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightMode(ZI)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getNightModeCct()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getNightModeStep()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightModeCct(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightModeStep(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getNightModeBlock()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightModeBlock(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->disableNightMode()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->enableNightMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isNightModeSupported()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setEadModeSub(II[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setEadMode(II[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setWhiteRGB(IIIIII)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setContentMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_1f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setScreenMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_20
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedContentMode()[I

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_21
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isContentModeSupported()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_22
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedScreenMode()[I

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_23
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isScreenModeSupported()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_24
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getContentMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_25
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getScreenMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

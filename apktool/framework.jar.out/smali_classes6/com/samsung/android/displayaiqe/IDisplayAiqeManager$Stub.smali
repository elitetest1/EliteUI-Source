.class public abstract Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayAiqeManager.java"

# interfaces
.implements Lcom/samsung/android/displayaiqe/IDisplayAiqeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displayaiqe/IDisplayAiqeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getContentMode:I = 0x8

.field static final blacklist TRANSACTION_getCoprValue:I = 0x12

.field static final blacklist TRANSACTION_getDisplayService:I = 0x11

.field static final blacklist TRANSACTION_getPanelName:I = 0x16

.field static final blacklist TRANSACTION_setABCMode:I = 0x13

.field static final blacklist TRANSACTION_setABCReconfig:I = 0x15

.field static final blacklist TRANSACTION_setABCState:I = 0x14

.field static final blacklist TRANSACTION_setBlueLightFilterMode:I = 0x6

.field static final blacklist TRANSACTION_setByPassMode:I = 0x1

.field static final blacklist TRANSACTION_setContentMode:I = 0x7

.field static final blacklist TRANSACTION_setEnvironmentAdaptiveDisplayLevel:I = 0xc

.field static final blacklist TRANSACTION_setEnvironmentAdaptiveDisplayMode:I = 0xb

.field static final blacklist TRANSACTION_setExtraDimMode:I = 0x3

.field static final blacklist TRANSACTION_setHighBrightnessMode:I = 0xd

.field static final blacklist TRANSACTION_setHighDynamicRangeMode:I = 0x4

.field static final blacklist TRANSACTION_setInternalDimmingFrame:I = 0x10

.field static final blacklist TRANSACTION_setLinearSkinMode:I = 0xf

.field static final blacklist TRANSACTION_setMdnieMode:I = 0x2

.field static final blacklist TRANSACTION_setNaturalMode:I = 0xe

.field static final blacklist TRANSACTION_setScreenMode:I = 0x5

.field static final blacklist TRANSACTION_setVividnessMode:I = 0x9

.field static final blacklist TRANSACTION_setWhiteBalanceMode:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.displayaiqe.IDisplayAiqeManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displayaiqe/IDisplayAiqeManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.displayaiqe.IDisplayAiqeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "getPanelName"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "setABCReconfig"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "setABCState"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "setABCMode"

    return-object p0

    :pswitch_4
    const-string p0, "getCoprValue"

    return-object p0

    :pswitch_5
    const-string p0, "getDisplayService"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "setInternalDimmingFrame"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setLinearSkinMode"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "setNaturalMode"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "setHighBrightnessMode"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "setEnvironmentAdaptiveDisplayLevel"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "setEnvironmentAdaptiveDisplayMode"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "setWhiteBalanceMode"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "setVividnessMode"

    return-object p0

    :pswitch_e
    const-string p0, "getContentMode"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "setContentMode"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "setBlueLightFilterMode"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "setScreenMode"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "setHighDynamicRangeMode"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "setExtraDimMode"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "setMdnieMode"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "setByPassMode"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x15

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.samsung.android.displayaiqe.IDisplayAiqeManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->getPanelName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setABCReconfig(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setABCState(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setABCMode(ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->getCoprValue()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->getDisplayService()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setInternalDimmingFrame(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setLinearSkinMode(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setNaturalMode(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setHighBrightnessMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setEnvironmentAdaptiveDisplayLevel(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setEnvironmentAdaptiveDisplayMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
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

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setWhiteBalanceMode(IIIIII)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setVividnessMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    move-object v2, p0

    invoke-virtual {v2}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->getContentMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setContentMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setBlueLightFilterMode(ZI)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_11
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setScreenMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_12
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setHighDynamicRangeMode(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_13
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setExtraDimMode(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_14
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setMdnieMode(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_15
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/displayaiqe/IDisplayAiqeManager$Stub;->setByPassMode(Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

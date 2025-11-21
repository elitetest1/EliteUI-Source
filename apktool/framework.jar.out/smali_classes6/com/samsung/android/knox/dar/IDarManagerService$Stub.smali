.class public abstract Lcom/samsung/android/knox/dar/IDarManagerService$Stub;
.super Landroid/os/Binder;
.source "IDarManagerService.java"

# interfaces
.implements Lcom/samsung/android/knox/dar/IDarManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/IDarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addBlockedClearablePackages:I = 0x2f

.field static final blacklist TRANSACTION_addEngine:I = 0x1b

.field static final blacklist TRANSACTION_allow:I = 0x18

.field static final blacklist TRANSACTION_clearResetPasswordToken:I = 0x9

.field static final blacklist TRANSACTION_createEncPkgDir:I = 0x20

.field static final blacklist TRANSACTION_deleteToeknFromTrusted:I = 0x22

.field static final blacklist TRANSACTION_disallow:I = 0x19

.field static final blacklist TRANSACTION_exists:I = 0x17

.field static final blacklist TRANSACTION_getAvailableUserId:I = 0x7

.field static final blacklist TRANSACTION_getBlockedClearablePackages:I = 0x30

.field static final blacklist TRANSACTION_getEngineInfo:I = 0x1d

.field static final blacklist TRANSACTION_getInnerAuthUserId:I = 0x2c

.field static final blacklist TRANSACTION_getMainUserId:I = 0x2e

.field static final blacklist TRANSACTION_getPackageListForDualDarPolicy:I = 0x31

.field static final blacklist TRANSACTION_getPasswordMinimumLengthForInner:I = 0x32

.field static final blacklist TRANSACTION_getReservedUserIdForSystem:I = 0x6

.field static final blacklist TRANSACTION_getSupportedSDKVersion:I = 0x1a

.field static final blacklist TRANSACTION_isDarSupported:I = 0x1

.field static final blacklist TRANSACTION_isDefaultPathUser:I = 0x28

.field static final blacklist TRANSACTION_isDeviceRootKeyInstalled:I = 0x3

.field static final blacklist TRANSACTION_isInnerAuthRequired:I = 0x2a

.field static final blacklist TRANSACTION_isKnoxKeyInstallable:I = 0x4

.field static final blacklist TRANSACTION_isLicensed:I = 0x16

.field static final blacklist TRANSACTION_isResetPasswordTokenActive:I = 0xa

.field static final blacklist TRANSACTION_isSDPEnabled:I = 0xc

.field static final blacklist TRANSACTION_isSdpSupported:I = 0xd

.field static final blacklist TRANSACTION_isSdpSupportedSecureFolder:I = 0xe

.field static final blacklist TRANSACTION_isSensitive:I = 0x1f

.field static final blacklist TRANSACTION_lock:I = 0x10

.field static final blacklist TRANSACTION_migrate:I = 0x13

.field static final blacklist TRANSACTION_onBiometricsAuthenticated:I = 0x24

.field static final blacklist TRANSACTION_onDeviceOwnerLocked:I = 0x25

.field static final blacklist TRANSACTION_registerClient:I = 0x26

.field static final blacklist TRANSACTION_registerListener:I = 0x14

.field static final blacklist TRANSACTION_removeEngine:I = 0x1c

.field static final blacklist TRANSACTION_reportApplicationBinding:I = 0x37

.field static final blacklist TRANSACTION_reserveUserIdForSystem:I = 0x5

.field static final blacklist TRANSACTION_resetPassword:I = 0x12

.field static final blacklist TRANSACTION_resetPasswordWithToken:I = 0xb

.field static final blacklist TRANSACTION_saveTokenIntoTrusted:I = 0x21

.field static final blacklist TRANSACTION_setDualDarInfo:I = 0x29

.field static final blacklist TRANSACTION_setInnerAuthUserId:I = 0x2b

.field static final blacklist TRANSACTION_setMainUserId:I = 0x2d

.field static final blacklist TRANSACTION_setPassword:I = 0x11

.field static final blacklist TRANSACTION_setResetPasswordToken:I = 0x8

.field static final blacklist TRANSACTION_setSensitive:I = 0x1e

.field static final blacklist TRANSACTION_startMonitoring:I = 0x35

.field static final blacklist TRANSACTION_startTracing:I = 0x33

.field static final blacklist TRANSACTION_stopMonitoring:I = 0x36

.field static final blacklist TRANSACTION_stopTracing:I = 0x34

.field static final blacklist TRANSACTION_systemReady:I = 0x2

.field static final blacklist TRANSACTION_unlock:I = 0xf

.field static final blacklist TRANSACTION_unlockViaTrusted:I = 0x23

.field static final blacklist TRANSACTION_unregisterClient:I = 0x27

.field static final blacklist TRANSACTION_unregisterListener:I = 0x15


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/dar/IDarManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/dar/IDarManagerService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "reportApplicationBinding"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "stopMonitoring"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "startMonitoring"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "stopTracing"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "startTracing"

    return-object p0

    :pswitch_5
    const-string p0, "getPasswordMinimumLengthForInner"

    return-object p0

    :pswitch_6
    const-string p0, "getPackageListForDualDarPolicy"

    return-object p0

    :pswitch_7
    const-string p0, "getBlockedClearablePackages"

    return-object p0

    :pswitch_8
    const-string p0, "addBlockedClearablePackages"

    return-object p0

    :pswitch_9
    const-string p0, "getMainUserId"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "setMainUserId"

    return-object p0

    :pswitch_b
    const-string p0, "getInnerAuthUserId"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "setInnerAuthUserId"

    return-object p0

    :pswitch_d
    const-string p0, "isInnerAuthRequired"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "setDualDarInfo"

    return-object p0

    :pswitch_f
    const-string p0, "isDefaultPathUser"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "unregisterClient"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "registerClient"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "onDeviceOwnerLocked"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "onBiometricsAuthenticated"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "unlockViaTrusted"

    return-object p0

    :pswitch_15
    const-string p0, "deleteToeknFromTrusted"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "saveTokenIntoTrusted"

    return-object p0

    :pswitch_17
    const-string p0, "createEncPkgDir"

    return-object p0

    :pswitch_18
    const-string p0, "isSensitive"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "setSensitive"

    return-object p0

    :pswitch_1a
    const-string p0, "getEngineInfo"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "removeEngine"

    return-object p0

    :pswitch_1c
    const-string p0, "addEngine"

    return-object p0

    :pswitch_1d
    const-string p0, "getSupportedSDKVersion"

    return-object p0

    :pswitch_1e
    const-string p0, "disallow"

    return-object p0

    :pswitch_1f
    const-string p0, "allow"

    return-object p0

    :pswitch_20
    const-string p0, "exists"

    return-object p0

    :pswitch_21
    const-string p0, "isLicensed"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    :pswitch_23
    const-string/jumbo p0, "registerListener"

    return-object p0

    :pswitch_24
    const-string/jumbo p0, "migrate"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "resetPassword"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "setPassword"

    return-object p0

    :pswitch_27
    const-string p0, "lock"

    return-object p0

    :pswitch_28
    const-string/jumbo p0, "unlock"

    return-object p0

    :pswitch_29
    const-string p0, "isSdpSupportedSecureFolder"

    return-object p0

    :pswitch_2a
    const-string p0, "isSdpSupported"

    return-object p0

    :pswitch_2b
    const-string p0, "isSDPEnabled"

    return-object p0

    :pswitch_2c
    const-string/jumbo p0, "resetPasswordWithToken"

    return-object p0

    :pswitch_2d
    const-string p0, "isResetPasswordTokenActive"

    return-object p0

    :pswitch_2e
    const-string p0, "clearResetPasswordToken"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "setResetPasswordToken"

    return-object p0

    :pswitch_30
    const-string p0, "getAvailableUserId"

    return-object p0

    :pswitch_31
    const-string p0, "getReservedUserIdForSystem"

    return-object p0

    :pswitch_32
    const-string/jumbo p0, "reserveUserIdForSystem"

    return-object p0

    :pswitch_33
    const-string p0, "isKnoxKeyInstallable"

    return-object p0

    :pswitch_34
    const-string p0, "isDeviceRootKeyInstalled"

    return-object p0

    :pswitch_35
    const-string/jumbo p0, "systemReady"

    return-object p0

    :pswitch_36
    const-string p0, "isDarSupported"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x36

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

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

    move-object v3, p0

    invoke-super {v3, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->stopMonitoring(II)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p4, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->stopTracing(II)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p4, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getPasswordMinimumLengthForInner()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getBlockedClearablePackages(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->addBlockedClearablePackages(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getMainUserId(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setMainUserId(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getInnerAuthUserId(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setInnerAuthUserId(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isInnerAuthRequired(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setDualDarInfo(II)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDefaultPathUser(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    goto/16 :goto_0

    :pswitch_11
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    goto/16 :goto_0

    :pswitch_12
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->onDeviceOwnerLocked(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->onBiometricsAuthenticated(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_15
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->deleteToeknFromTrusted(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_16
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_17
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->createEncPkgDir(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_18
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSensitive(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setSensitive(ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->removeEngine(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1c
    move-object v3, p0

    sget-object p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p4}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1d
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getSupportedSDKVersion()D

    move-result-wide p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    :pswitch_1e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->disallow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->allow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_20
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->exists(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_21
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isLicensed()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_22
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_23
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_24
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->migrate(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_25
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p4}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_26
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_27
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->lock(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_28
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_29
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSdpSupportedSecureFolder(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2a
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSdpSupported()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSDPEnabled(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p4}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isResetPasswordTokenActive(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->clearResetPasswordToken(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setResetPasswordToken([BI)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_30
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getAvailableUserId()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_31
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getReservedUserIdForSystem()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_32
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->reserveUserIdForSystem()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_33
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isKnoxKeyInstallable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_34
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDeviceRootKeyInstalled()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_35
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->systemReady()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_36
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDarSupported()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

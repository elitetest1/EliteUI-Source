.class public abstract Lcom/samsung/android/camera/iris/IIrisService$Stub;
.super Landroid/os/Binder;
.source "IIrisService.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x11

.field static final blacklist TRANSACTION_authenticate:I = 0x1

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x3

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0x17

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0x5

.field static final blacklist TRANSACTION_enableIRImageCallback:I = 0x13

.field static final blacklist TRANSACTION_enroll:I = 0x4

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0xe

.field static final blacklist TRANSACTION_getEnrolledIrises:I = 0x8

.field static final blacklist TRANSACTION_hasDisabledIris:I = 0xd

.field static final blacklist TRANSACTION_hasEnrolledIrises:I = 0xc

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x9

.field static final blacklist TRANSACTION_postEnroll:I = 0xb

.field static final blacklist TRANSACTION_preEnroll:I = 0xa

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x15

.field static final blacklist TRANSACTION_prompt_authenticate:I = 0x2

.field static final blacklist TRANSACTION_remove:I = 0x6

.field static final blacklist TRANSACTION_rename:I = 0x7

.field static final blacklist TRANSACTION_request:I = 0xf

.field static final blacklist TRANSACTION_resetTimeout:I = 0x10

.field static final blacklist TRANSACTION_setActiveUser:I = 0x14

.field static final blacklist TRANSACTION_setIrisViewType:I = 0x12

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.camera.iris.IIrisService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.camera.iris.IIrisService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/camera/iris/IIrisService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "cancelAuthenticationFromService"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "startPreparedClient"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "prepareForAuthentication"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "setActiveUser"

    return-object p0

    :pswitch_4
    const-string p0, "enableIRImageCallback"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "setIrisViewType"

    return-object p0

    :pswitch_6
    const-string p0, "addLockoutResetCallback"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "resetTimeout"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "request"

    return-object p0

    :pswitch_9
    const-string p0, "getAuthenticatorId"

    return-object p0

    :pswitch_a
    const-string p0, "hasDisabledIris"

    return-object p0

    :pswitch_b
    const-string p0, "hasEnrolledIrises"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "postEnroll"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "preEnroll"

    return-object p0

    :pswitch_e
    const-string p0, "isHardwareDetected"

    return-object p0

    :pswitch_f
    const-string p0, "getEnrolledIrises"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "rename"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "remove"

    return-object p0

    :pswitch_12
    const-string p0, "cancelEnrollment"

    return-object p0

    :pswitch_13
    const-string p0, "enroll"

    return-object p0

    :pswitch_14
    const-string p0, "cancelAuthentication"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "prompt_authenticate"

    return-object p0

    :pswitch_16
    const-string p0, "authenticate"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x16

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v15, p3

    const-string v2, "com.samsung.android.camera.iris.IIrisService"

    const/4 v13, 0x1

    if-lt v0, v13, :cond_0

    const v3, 0xffffff

    if-gt v0, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne v0, v3, :cond_1

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_1
    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v7, p2

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->startPreparedClient(I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v6

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v10, v9

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v11, v10

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v12, v11

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v11

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v7, v12

    move-object v12, v14

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IIIILandroid/os/Bundle;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->setActiveUser(I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->enableIRImageCallback(ILjava/lang/String;I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->setIrisViewType(ILjava/lang/String;I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->resetTimeout([B)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xf4240

    if-gt v4, v5, :cond_3

    if-gez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v8

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :cond_3
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->hasDisabledIris(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->postEnroll(Landroid/os/IBinder;)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->rename(IILjava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v5

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_13
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    move-object v9, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v10

    move-object v11, v9

    move-object v9, v10

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v12, v11

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v7, v12

    move-object v12, v14

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_14
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    move/from16 v16, v13

    goto/16 :goto_2

    :pswitch_15
    move-object/from16 v0, p0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-wide v10, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v8

    move-wide/from16 v16, v10

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v18, v10

    move-object v10, v8

    move-wide/from16 v7, v16

    move/from16 v16, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->prompt_authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_16
    move-object v7, v1

    move/from16 v16, v13

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-wide v10, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v0

    move-wide v12, v10

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-wide v13, v12

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    move-wide/from16 v18, v13

    move-object v13, v8

    move-wide/from16 v7, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v10, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

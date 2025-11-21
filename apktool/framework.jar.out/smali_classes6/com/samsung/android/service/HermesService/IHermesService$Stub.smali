.class public abstract Lcom/samsung/android/service/HermesService/IHermesService$Stub;
.super Landroid/os/Binder;
.source "IHermesService.java"

# interfaces
.implements Lcom/samsung/android/service/HermesService/IHermesService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/HermesService/IHermesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/HermesService/IHermesService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFailureCount:I = 0xf

.field static final blacklist TRANSACTION_hermesCosPatchTest:I = 0xc

.field static final blacklist TRANSACTION_hermesCosUnitTest:I = 0xe

.field static final blacklist TRANSACTION_hermesGetAppletVersion:I = 0x10

.field static final blacklist TRANSACTION_hermesGetSeId:I = 0xd

.field static final blacklist TRANSACTION_hermesGetSecureHWInfo:I = 0x5

.field static final blacklist TRANSACTION_hermesProvisioning:I = 0x3

.field static final blacklist TRANSACTION_hermesSecureHwPowerOff:I = 0xa

.field static final blacklist TRANSACTION_hermesSecureHwPowerOn:I = 0x9

.field static final blacklist TRANSACTION_hermesSelftest:I = 0x1

.field static final blacklist TRANSACTION_hermesSelftest2:I = 0x2

.field static final blacklist TRANSACTION_hermesSendApdu:I = 0xb

.field static final blacklist TRANSACTION_hermesTerminateService:I = 0x6

.field static final blacklist TRANSACTION_hermesUpdateApplet:I = 0x8

.field static final blacklist TRANSACTION_hermesUpdateCryptoFW:I = 0x7

.field static final blacklist TRANSACTION_hermesVerifyProvisioning:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.service.HermesService.IHermesService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.service.HermesService.IHermesService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/HermesService/IHermesService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/service/HermesService/IHermesService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/service/HermesService/IHermesService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "hermesGetAppletVersion"

    return-object p0

    :pswitch_1
    const-string p0, "getFailureCount"

    return-object p0

    :pswitch_2
    const-string p0, "hermesCosUnitTest"

    return-object p0

    :pswitch_3
    const-string p0, "hermesGetSeId"

    return-object p0

    :pswitch_4
    const-string p0, "hermesCosPatchTest"

    return-object p0

    :pswitch_5
    const-string p0, "hermesSendApdu"

    return-object p0

    :pswitch_6
    const-string p0, "hermesSecureHwPowerOff"

    return-object p0

    :pswitch_7
    const-string p0, "hermesSecureHwPowerOn"

    return-object p0

    :pswitch_8
    const-string p0, "hermesUpdateApplet"

    return-object p0

    :pswitch_9
    const-string p0, "hermesUpdateCryptoFW"

    return-object p0

    :pswitch_a
    const-string p0, "hermesTerminateService"

    return-object p0

    :pswitch_b
    const-string p0, "hermesGetSecureHWInfo"

    return-object p0

    :pswitch_c
    const-string p0, "hermesVerifyProvisioning"

    return-object p0

    :pswitch_d
    const-string p0, "hermesProvisioning"

    return-object p0

    :pswitch_e
    const-string p0, "hermesSelftest2"

    return-object p0

    :pswitch_f
    const-string p0, "hermesSelftest"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0xf

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.service.HermesService.IHermesService"

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

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesGetAppletVersion()[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->getFailureCount(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesCosUnitTest(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesGetSeId()[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesCosPatchTest([B)[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesSendApdu([B)[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesSecureHwPowerOff()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesSecureHwPowerOn()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesUpdateApplet()[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesUpdateCryptoFW()[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesTerminateService()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesGetSecureHWInfo()[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesVerifyProvisioning()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesProvisioning()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesSelftest2(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesSelftest()[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

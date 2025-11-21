.class public abstract Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;
.super Landroid/os/Binder;
.source "INetworkFilterProxy.java"

# interfaces
.implements Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getBrowserAppList:I = 0x19

.field static final blacklist TRANSACTION_getHttpLocalProxyAddress:I = 0x17

.field static final blacklist TRANSACTION_getHttpLocalProxyPort:I = 0x18

.field static final blacklist TRANSACTION_getHttpProxythreadStatus:I = 0x15

.field static final blacklist TRANSACTION_getListener:I = 0x3

.field static final blacklist TRANSACTION_getLocalProxyAddress:I = 0x9

.field static final blacklist TRANSACTION_getLocalProxyPort:I = 0xa

.field static final blacklist TRANSACTION_getProxythreadStatus:I = 0x7

.field static final blacklist TRANSACTION_getV6LocalProxyAddress:I = 0x10

.field static final blacklist TRANSACTION_getV6LocalProxyPort:I = 0x11

.field static final blacklist TRANSACTION_getV6ProxythreadStatus:I = 0xe

.field static final blacklist TRANSACTION_isHttpProxyThreadAlive:I = 0x16

.field static final blacklist TRANSACTION_isHttpProxyThreadRunning:I = 0x14

.field static final blacklist TRANSACTION_isProxyThreadAlive:I = 0x8

.field static final blacklist TRANSACTION_isProxyThreadRunning:I = 0x6

.field static final blacklist TRANSACTION_isV6ProxyThreadAlive:I = 0xf

.field static final blacklist TRANSACTION_isV6ProxyThreadRunning:I = 0xd

.field static final blacklist TRANSACTION_registerRemoteProxyAddr:I = 0x2

.field static final blacklist TRANSACTION_setConfig:I = 0x1

.field static final blacklist TRANSACTION_startHttpProxyServer:I = 0x12

.field static final blacklist TRANSACTION_startProxyServer:I = 0x4

.field static final blacklist TRANSACTION_startV6ProxyServer:I = 0xb

.field static final blacklist TRANSACTION_stopHttpProxyServer:I = 0x13

.field static final blacklist TRANSACTION_stopProxyServer:I = 0x5

.field static final blacklist TRANSACTION_stopV6ProxyServer:I = 0xc

.field static final blacklist TRANSACTION_updateApplicationInfo:I = 0x1a


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "updateApplicationInfo"

    return-object p0

    :pswitch_1
    const-string p0, "getBrowserAppList"

    return-object p0

    :pswitch_2
    const-string p0, "getHttpLocalProxyPort"

    return-object p0

    :pswitch_3
    const-string p0, "getHttpLocalProxyAddress"

    return-object p0

    :pswitch_4
    const-string p0, "isHttpProxyThreadAlive"

    return-object p0

    :pswitch_5
    const-string p0, "getHttpProxythreadStatus"

    return-object p0

    :pswitch_6
    const-string p0, "isHttpProxyThreadRunning"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "stopHttpProxyServer"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "startHttpProxyServer"

    return-object p0

    :pswitch_9
    const-string p0, "getV6LocalProxyPort"

    return-object p0

    :pswitch_a
    const-string p0, "getV6LocalProxyAddress"

    return-object p0

    :pswitch_b
    const-string p0, "isV6ProxyThreadAlive"

    return-object p0

    :pswitch_c
    const-string p0, "getV6ProxythreadStatus"

    return-object p0

    :pswitch_d
    const-string p0, "isV6ProxyThreadRunning"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "stopV6ProxyServer"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "startV6ProxyServer"

    return-object p0

    :pswitch_10
    const-string p0, "getLocalProxyPort"

    return-object p0

    :pswitch_11
    const-string p0, "getLocalProxyAddress"

    return-object p0

    :pswitch_12
    const-string p0, "isProxyThreadAlive"

    return-object p0

    :pswitch_13
    const-string p0, "getProxythreadStatus"

    return-object p0

    :pswitch_14
    const-string p0, "isProxyThreadRunning"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "stopProxyServer"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "startProxyServer"

    return-object p0

    :pswitch_17
    const-string p0, "getListener"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "registerRemoteProxyAddr"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "setConfig"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x19

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getBrowserAppList()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getHttpLocalProxyPort()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getHttpLocalProxyAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isHttpProxyThreadAlive()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getHttpProxythreadStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isHttpProxyThreadRunning()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopHttpProxyServer()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startHttpProxyServer()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6LocalProxyPort()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6LocalProxyAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isV6ProxyThreadAlive()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6ProxythreadStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isV6ProxyThreadRunning()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopV6ProxyServer()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startV6ProxyServer()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getLocalProxyPort()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getLocalProxyAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isProxyThreadAlive()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getProxythreadStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_14
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isProxyThreadRunning()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_15
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopProxyServer()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_16
    move-object v3, p0

    invoke-virtual {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startProxyServer()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_17
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_18
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_19
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

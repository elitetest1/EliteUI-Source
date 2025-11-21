.class public abstract Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;
.super Landroid/os/Binder;
.source "IOadUpdateInterface.java"

# interfaces
.implements Landroid/media/tv/extension/oad/IOadUpdateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/oad/IOadUpdateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getOadStatus:I = 0x2

.field static final blacklist TRANSACTION_getSoftwareVersion:I = 0x9

.field static final blacklist TRANSACTION_setOadStatus:I = 0x1

.field static final blacklist TRANSACTION_startDetect:I = 0x5

.field static final blacklist TRANSACTION_startDownload:I = 0x7

.field static final blacklist TRANSACTION_startScan:I = 0x3

.field static final blacklist TRANSACTION_stopDetect:I = 0x6

.field static final blacklist TRANSACTION_stopDownload:I = 0x8

.field static final blacklist TRANSACTION_stopScan:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/oad/IOadUpdateInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/extension/oad/IOadUpdateInterface;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/tv/extension/oad/IOadUpdateInterface;

    return-object v0

    :cond_1
    new-instance v0, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "getSoftwareVersion"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "stopDownload"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "startDownload"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "stopDetect"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "startDetect"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "stopScan"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "startScan"

    return-object p0

    :pswitch_7
    const-string p0, "getOadStatus"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "setOadStatus"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x8

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

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
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getSoftwareVersion()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopDownload()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startDownload()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopDetect()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startDetect()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getOadStatus()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->setOadStatus(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

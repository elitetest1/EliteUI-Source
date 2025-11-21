.class public abstract Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;
.super Landroid/os/Binder;
.source "IPnoScanEvent.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IPnoScanEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IPnoScanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IPnoScanEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_OnPnoNetworkFound:I = 0x1

.field static final blacklist TRANSACTION_OnPnoScanFailed:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.nl80211.IPnoScanEvent"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IPnoScanEvent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.net.wifi.nl80211.IPnoScanEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nl80211/IPnoScanEvent;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/nl80211/IPnoScanEvent;

    return-object v0

    :cond_1
    new-instance v0, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "OnPnoScanFailed"

    return-object p0

    :cond_1
    const-string p0, "OnPnoNetworkFound"

    return-object p0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.net.wifi.nl80211.IPnoScanEvent"

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
    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->OnPnoScanFailed()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->OnPnoNetworkFound()V

    :goto_0
    return v1
.end method

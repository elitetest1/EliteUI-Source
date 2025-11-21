.class public final Landroid/net/wifi/nl80211/NativeWifiClient;
.super Ljava/lang/Object;
.source "NativeWifiClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/NativeWifiClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMacAddress:Landroid/net/MacAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/nl80211/NativeWifiClient$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/NativeWifiClient$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/NativeWifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/MacAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/net/wifi/nl80211/NativeWifiClient;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroid/net/wifi/nl80211/NativeWifiClient;

    iget-object p0, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    iget-object p1, p1, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p0}, Landroid/net/MacAddress;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

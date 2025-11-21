.class public final Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
.super Ljava/lang/Object;
.source "HotspotNetworkConnectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_STATUS_CONNECT_TO_HOTSPOT_FAILED:I = 0x9

.field public static final whitelist CONNECTION_STATUS_ENABLING_HOTSPOT:I = 0x1

.field public static final whitelist CONNECTION_STATUS_ENABLING_HOTSPOT_FAILED:I = 0x7

.field public static final whitelist CONNECTION_STATUS_ENABLING_HOTSPOT_TIMEOUT:I = 0x8

.field public static final whitelist CONNECTION_STATUS_NO_CELL_DATA:I = 0x6

.field public static final whitelist CONNECTION_STATUS_PROVISIONING_FAILED:I = 0x3

.field public static final whitelist CONNECTION_STATUS_TETHERING_TIMEOUT:I = 0x4

.field public static final whitelist CONNECTION_STATUS_TETHERING_UNSUPPORTED:I = 0x5

.field public static final whitelist CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist CONNECTION_STATUS_UNKNOWN_ERROR:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->validate(I)V

    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .locals 3

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static blacklist validate(I)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal connection status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getStatus()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getHotspotNetwork()Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getHotspotNetwork()Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    return-object p0
.end method

.method public whitelist getStatus()I
    .locals 0

    iget p0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotspotNetworkConnectionStatus[status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "hotspot network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

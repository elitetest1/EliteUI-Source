.class public final Landroid/net/wifi/nl80211/RadioChainInfo;
.super Ljava/lang/Object;
.source "RadioChainInfo.java"

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
            "Landroid/net/wifi/nl80211/RadioChainInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RadioChainInfo"


# instance fields
.field public blacklist chainId:I

.field public blacklist level:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/nl80211/RadioChainInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/RadioChainInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/RadioChainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    iput p2, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/nl80211/RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/net/wifi/nl80211/RadioChainInfo;

    if-nez p1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    iget v3, p1, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    if-ne v1, v3, :cond_3

    iget p0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    iget p1, p1, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public whitelist getChainId()I
    .locals 0

    iget p0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    return p0
.end method

.method public whitelist getLevelDbm()I
    .locals 0

    iget p0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

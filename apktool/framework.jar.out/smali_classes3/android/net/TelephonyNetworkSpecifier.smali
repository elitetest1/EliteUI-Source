.class public final Landroid/net/TelephonyNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "TelephonyNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/TelephonyNetworkSpecifier$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TelephonyNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/TelephonyNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/TelephonyNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/TelephonyNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    iput p1, p0, Landroid/net/TelephonyNetworkSpecifier;->mSubId:I

    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/TelephonyNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/net/MatchAllNetworkSpecifier;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/TelephonyNetworkSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/net/TelephonyNetworkSpecifier;

    iget p0, p0, Landroid/net/TelephonyNetworkSpecifier;->mSubId:I

    iget p1, p1, Landroid/net/TelephonyNetworkSpecifier;->mSubId:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getSubscriptionId()I
    .locals 0

    iget p0, p0, Landroid/net/TelephonyNetworkSpecifier;->mSubId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/net/TelephonyNetworkSpecifier;->mSubId:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TelephonyNetworkSpecifier [mSubId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/net/TelephonyNetworkSpecifier;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p0, p0, Landroid/net/TelephonyNetworkSpecifier;->mSubId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

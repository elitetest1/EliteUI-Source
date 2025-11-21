.class public final Landroid/telephony/LinkCapacityEstimate;
.super Ljava/lang/Object;
.source "LinkCapacityEstimate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LinkCapacityEstimate$LceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID:I = -0x1

.field public static final whitelist LCE_TYPE_COMBINED:I = 0x2

.field public static final whitelist LCE_TYPE_PRIMARY:I = 0x0

.field public static final whitelist LCE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private final blacklist mDownlinkCapacityKbps:I

.field private final blacklist mType:I

.field private final blacklist mUplinkCapacityKbps:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/LinkCapacityEstimate$1;

    invoke-direct {v0}, Landroid/telephony/LinkCapacityEstimate$1;-><init>()V

    sput-object v0, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    iput p3, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    iput p1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

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

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/telephony/LinkCapacityEstimate;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/LinkCapacityEstimate;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/telephony/LinkCapacityEstimate;

    iget v2, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    iget v3, p1, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    iget v3, p1, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    iget p1, p1, Landroid/telephony/LinkCapacityEstimate;->mType:I

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist getDownlinkCapacityKbps()I
    .locals 0

    iget p0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    return p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    return p0
.end method

.method public whitelist getUplinkCapacityKbps()I
    .locals 0

    iget p0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDownlinkCapacityKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUplinkCapacityKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

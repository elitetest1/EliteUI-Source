.class public final Landroid/telephony/data/NetworkSliceInfo;
.super Ljava/lang/Object;
.source "NetworkSliceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/NetworkSliceInfo$Builder;,
        Landroid/telephony/data/NetworkSliceInfo$SliceStatus;,
        Landroid/telephony/data/NetworkSliceInfo$SliceServiceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_SLICE_DIFFERENTIATOR:I = 0xfffffe

.field public static final blacklist MAX_SLICE_STATUS:I = 0x5

.field public static final blacklist MIN_SLICE_DIFFERENTIATOR:I = -0x1

.field public static final blacklist MIN_SLICE_STATUS:I = 0x0

.field public static final whitelist SLICE_DIFFERENTIATOR_NO_SLICE:I = -0x1

.field public static final whitelist SLICE_SERVICE_TYPE_EMBB:I = 0x1

.field public static final whitelist SLICE_SERVICE_TYPE_MIOT:I = 0x3

.field public static final whitelist SLICE_SERVICE_TYPE_NONE:I = 0x0

.field public static final whitelist SLICE_SERVICE_TYPE_URLLC:I = 0x2

.field public static final whitelist SLICE_STATUS_ALLOWED:I = 0x2

.field public static final whitelist SLICE_STATUS_CONFIGURED:I = 0x1

.field public static final whitelist SLICE_STATUS_DEFAULT_CONFIGURED:I = 0x5

.field public static final whitelist SLICE_STATUS_REJECTED_NOT_AVAILABLE_IN_PLMN:I = 0x3

.field public static final whitelist SLICE_STATUS_REJECTED_NOT_AVAILABLE_IN_REGISTERED_AREA:I = 0x4

.field public static final whitelist SLICE_STATUS_UNKNOWN:I


# instance fields
.field private final blacklist mMappedHplmnSliceDifferentiator:I

.field private final blacklist mMappedHplmnSliceServiceType:I

.field private final blacklist mSliceDifferentiator:I

.field private final blacklist mSliceServiceType:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$1;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    iput p2, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    iput p4, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    iput p3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    iput p5, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/telephony/data/NetworkSliceInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telephony/data/NetworkSliceInfo;-><init>(IIIII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/NetworkSliceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/NetworkSliceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist sliceServiceTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MIOT"

    return-object p0

    :cond_1
    const-string p0, "URLLC"

    return-object p0

    :cond_2
    const-string p0, "EMBB"

    return-object p0

    :cond_3
    const-string p0, "NONE"

    return-object p0
.end method

.method private static blacklist sliceStatusToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DEFAULT_CONFIGURED"

    return-object p0

    :cond_1
    const-string p0, "REJECTED_NOT_AVAILABLE_IN_REGISTERED_AREA"

    return-object p0

    :cond_2
    const-string p0, "REJECTED_NOT_AVAILABLE_IN_PLMN"

    return-object p0

    :cond_3
    const-string p0, "ALLOWED"

    return-object p0

    :cond_4
    const-string p0, "CONFIGURED"

    return-object p0

    :cond_5
    const-string p0, "UNKNOWN"

    return-object p0
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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/data/NetworkSliceInfo;

    iget v2, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    iget v3, p1, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    iget v3, p1, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    iget v3, p1, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    iget v3, p1, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    iget p1, p1, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getMappedHplmnSliceDifferentiator()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    return p0
.end method

.method public whitelist getMappedHplmnSliceServiceType()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    return p0
.end method

.method public whitelist getSliceDifferentiator()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    return p0
.end method

.method public whitelist getSliceServiceType()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    return p0
.end method

.method public whitelist getStatus()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SliceInfo{mSliceServiceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceServiceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSliceDifferentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMappedHplmnSliceServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceServiceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMappedHplmnSliceDifferentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-static {p0}, Landroid/telephony/data/NetworkSliceInfo;->sliceStatusToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

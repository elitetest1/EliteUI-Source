.class public final Landroid/telephony/satellite/SatelliteInfo;
.super Ljava/lang/Object;
.source "SatelliteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEarfcnRangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mId:Ljava/util/UUID;

.field private blacklist mPosition:Landroid/telephony/satellite/SatellitePosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    :cond_0
    const-class v0, Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatellitePosition;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    sget-object v0, Landroid/telephony/satellite/EarfcnRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Landroid/telephony/satellite/SatellitePosition;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/telephony/satellite/SatellitePosition;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    iput-object p4, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

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
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/telephony/satellite/SatelliteInfo;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    iget-object v3, p1, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    iget-object v3, p1, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    iget-object p1, p1, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public blacklist getBands()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getEarfcnRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSatelliteId()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    return-object p0
.end method

.method public blacklist getSatellitePosition()Landroid/telephony/satellite/SatellitePosition;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SatelliteInfo{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBandList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEarfcnRangeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

.class public final Landroid/telephony/satellite/EarfcnRange;
.super Ljava/lang/Object;
.source "EarfcnRange.java"

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
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEndEarfcn:I

.field private blacklist mStartEarfcn:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/EarfcnRange$1;

    invoke-direct {v0}, Landroid/telephony/satellite/EarfcnRange$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/EarfcnRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    iput p2, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/EarfcnRange;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/EarfcnRange-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/EarfcnRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

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
    instance-of v1, p1, Landroid/telephony/satellite/EarfcnRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/telephony/satellite/EarfcnRange;

    iget v1, p1, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    iget v3, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    if-ne v1, v3, :cond_1

    iget p1, p1, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    iget p0, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public blacklist getEndEarfcn()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    return p0
.end method

.method public blacklist getStartEarfcn()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startEarfcn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endEarfcn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

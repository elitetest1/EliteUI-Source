.class public final Landroid/os/vibrator/VibratorEnvelopeEffectInfo;
.super Ljava/lang/Object;
.source "VibratorEnvelopeEffectInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/VibratorEnvelopeEffectInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMaxControlPointDurationMillis:J

.field private final blacklist mMaxSize:I

.field private final blacklist mMinControlPointDurationMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo$1;

    invoke-direct {v0}, Landroid/os/vibrator/VibratorEnvelopeEffectInfo$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    iput-wide p2, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    iput-wide p4, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    iget v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    iget v3, p1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    iget-wide v5, p1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    iget-wide p0, p1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getMaxControlPointDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMaxDurationMillis()J
    .locals 4

    iget v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    int-to-long v0, v0

    iget-wide v2, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getMaxSize()I
    .locals 0

    iget p0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    return p0
.end method

.method public whitelist getMinControlPointDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VibratorEnvelopeEffectInfo{, mMaxSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

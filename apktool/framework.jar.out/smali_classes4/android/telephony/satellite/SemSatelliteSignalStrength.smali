.class public final Landroid/telephony/satellite/SemSatelliteSignalStrength;
.super Ljava/lang/Object;
.source "SemSatelliteSignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SemSatelliteSignalStrength$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SemSatelliteSignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SatelliteSignalStrength"

.field private static final blacklist RSSI_MAX:I = -0x33

.field private static final blacklist RSSI_MIN:I = -0x7e

.field private static final blacklist SIGNAL_STRENGTH_GOOD:I = 0x3

.field private static final blacklist SIGNAL_STRENGTH_GREAT:I = 0x4

.field private static final blacklist SIGNAL_STRENGTH_MODERATE:I = 0x2

.field private static final blacklist SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field private static final blacklist SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final blacklist sRssiThresholds:[I

.field private static final blacklist sSnrThresholds:[I


# instance fields
.field private blacklist mLevel:I

.field private blacklist mRssi:I

.field private blacklist mSatId:I

.field private blacklist mSnr:I

.field private blacklist mSsRsrp:I

.field private blacklist mSsRsrq:I

.field private blacklist mSsSinr:I

.field private blacklist mTxPdet:I

.field private blacklist mTxTarget:I

.field private blacklist mVdet:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/16 v0, -0x7c

    const/16 v1, -0x7a

    const/16 v2, -0x7f

    const/16 v3, -0x7e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->sRssiThresholds:[I

    const/16 v0, 0x1e

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/16 v3, 0xa

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->sSnrThresholds:[I

    new-instance v0, Landroid/telephony/satellite/SemSatelliteSignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteSignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mLevel:I

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    iput p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    iput p3, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    iput p4, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    iput p5, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    iput p6, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    iput p7, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    iput p8, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    iput p9, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    invoke-virtual {p0}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->updateLevel()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    invoke-virtual {p0}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->updateLevel()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatelliteSignalStrength-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->copyFrom(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    invoke-virtual {p0}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->updateLevel()V

    return-void
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 1

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    iget p1, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/satellite/SemSatelliteSignalStrength;->hashCode()I

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
    check-cast p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    iget p1, p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist getLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mLevel:I

    return p0
.end method

.method public blacklist getRssi()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    return p0
.end method

.method public whitelist getSatelliteId()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    return p0
.end method

.method public blacklist getSnr()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    return p0
.end method

.method public blacklist getSsRsrp()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    return p0
.end method

.method public blacklist getSsRsrq()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    return p0
.end method

.method public blacklist getSsSinr()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    return p0
.end method

.method public blacklist getTxPdet()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    return p0
.end method

.method public blacklist getTxTarget()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    return p0
.end method

.method public blacklist getVdet()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 10

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Satellite Signal Strength -  level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " snr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tx_target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tx_pdet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vdet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " satId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ssRsrq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ssRsrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ssSinr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel()V
    .locals 9

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    const/16 v1, -0x33

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-gt v0, v1, :cond_4

    const/16 v1, -0x7e

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/telephony/satellite/SemSatelliteSignalStrength;->sRssiThresholds:[I

    aget v7, v1, v5

    if-lt v0, v7, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    aget v7, v1, v4

    if-lt v0, v7, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    aget v7, v1, v3

    if-lt v0, v7, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    aget v1, v1, v6

    if-lt v0, v1, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v6

    :goto_1
    iget v1, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    const v7, 0x7fffffff

    if-ne v1, v7, :cond_6

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    sget-object v7, Landroid/telephony/satellite/SemSatelliteSignalStrength;->sSnrThresholds:[I

    aget v8, v7, v5

    if-lt v1, v8, :cond_7

    goto :goto_2

    :cond_7
    aget v2, v7, v4

    if-lt v1, v2, :cond_8

    move v2, v5

    goto :goto_2

    :cond_8
    aget v2, v7, v3

    if-lt v1, v2, :cond_9

    move v2, v4

    goto :goto_2

    :cond_9
    aget v2, v7, v6

    if-lt v1, v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mLevel:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxTarget:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mTxPdet:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mVdet:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSatId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->mSsSinr:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

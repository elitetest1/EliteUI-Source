.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"

.field private static final blacklist MAX_LTE_RSRP:I = -0x2c

.field private static final blacklist MIN_LTE_RSRP:I = -0x8c

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_ASU_UNKNOWN:I = 0x63

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MAX_VALUE:I = 0x1f

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MIN_VALUE:I = 0x0

.field public static final blacklist USE_RSRP:I = 0x1

.field public static final blacklist USE_RSRQ:I = 0x2

.field public static final blacklist USE_RSSNR:I = 0x4

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthLte;

.field private static final blacklist sRsrpBoost:I

.field private static final blacklist sRsrpThresholds:[I

.field private static final blacklist sRsrqThresholds:[I

.field private static final blacklist sRssnrThresholds:[I


# instance fields
.field private greylist-max-p mCqi:I

.field private blacklist mCqiTableIndex:I

.field private blacklist mLevel:I

.field private blacklist mParametersUseForLevel:I

.field private greylist-max-p mRsrp:I

.field private greylist-max-p mRsrq:I

.field private blacklist mRssi:I

.field private greylist-max-p mRssnr:I

.field private greylist-max-p mSignalStrength:I

.field private greylist-max-p mTimingAdvance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/16 v0, -0x5f

    const/16 v1, -0x55

    const/16 v2, -0x73

    const/16 v3, -0x69

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    const/16 v0, -0xe

    const/16 v1, -0xc

    const/16 v2, -0x13

    const/16 v3, -0x11

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    const/4 v0, 0x5

    const/16 v1, 0xd

    const/4 v2, -0x3

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIII)V
    .locals 8

    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIII)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    const/16 p1, -0x8c

    const/16 v0, -0x2b

    invoke-static {p2, p1, v0}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 p1, -0x22

    const/4 p2, 0x3

    invoke-static {p3, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    const/16 p1, -0x14

    const/16 p2, 0x1e

    invoke-static {p4, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/4 p1, 0x1

    const/4 p2, 0x6

    invoke-static {p5, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-static {p6, p2, p1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    const/16 p1, 0x502

    invoke-static {p7, p2, p1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/telephony/CellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    return-void
.end method

.method public static blacklist convertRssiAsuToDBm(I)I
    .locals 3

    const/16 v0, 0x63

    const v1, 0x7fffffff

    if-eq p0, v0, :cond_3

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p0, :cond_2

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x71

    return p0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "convertRssiAsuToDBm: invalid RSSI in ASU="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v1
.end method

.method public static blacklist convertRssnrUnitFromTenDbToDB(I)I
    .locals 2

    int-to-float p0, p0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private blacklist isLevelForParameter(I)Z
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist updateLevelWithMeasure(I[I)I
    .locals 2

    const p0, 0x7fffffff

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x3

    aget v0, p2, p0

    if-lt p1, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 v0, 0x2

    aget v1, p2, v0

    if-lt p1, v1, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x1

    aget v1, p2, p0

    if-lt p1, v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    aget p2, p2, v0

    if-lt p1, p2, :cond_4

    return p0

    :cond_4
    return v0
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 1

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/CellSignalStrengthLte;

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 1

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/16 p0, 0x63

    return p0

    :cond_0
    const/16 v0, -0x8c

    if-gt p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 v0, -0x2b

    if-lt p0, v0, :cond_2

    const/16 p0, 0x61

    return p0

    :cond_2
    add-int/lit16 p0, p0, 0x8c

    return p0
.end method

.method public whitelist getCqi()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    return p0
.end method

.method public whitelist getCqiTableIndex()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    return p0
.end method

.method public whitelist getDbm()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return p0
.end method

.method public whitelist getLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    return p0
.end method

.method public whitelist getRsrp()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return p0
.end method

.method public whitelist getRsrq()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return p0
.end method

.method public whitelist getRssi()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    return p0
.end method

.method public whitelist getRssnr()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return p0
.end method

.method public whitelist getTimingAdvance()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isValid()Z
    .locals 1

    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist-max-o setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthLte: rssi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cqiTableIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parametersUseForLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    sget-object p1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    move-object v4, v3

    move-object v3, v2

    move-object v2, p1

    move p1, v1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "parameters_used_for_ntn_lte_signal_bar_int"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    const-string/jumbo v2, "ntn_lte_rsrp_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v3, "ntn_lte_rsrq_thresholds_int_array"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const-string/jumbo v4, "ntn_lte_rssnr_thresholds_int_array"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "parameters_used_for_lte_signal_bar_int"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    const-string v2, "lte_rsrp_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "lte_rsrq_thresholds_int_array"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const-string v4, "lte_rssnr_thresholds_int_array"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    :goto_0
    if-nez v2, :cond_2

    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    :cond_2
    if-nez v3, :cond_3

    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    :cond_3
    if-nez v4, :cond_4

    sget-object v4, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    :cond_4
    const-string/jumbo v5, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {p1, v5, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result p2

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_2
    iget v5, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    add-int/2addr v5, p2

    const/16 p2, -0x8c

    const/16 v6, -0x2c

    invoke-static {v5, p2, v6}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result p2

    const v5, 0x7fffffff

    if-eqz p1, :cond_6

    invoke-direct {p0, p2, v2}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result p1

    if-eq p1, v5, :cond_6

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    return-void

    :cond_6
    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, v2}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result p1

    goto :goto_3

    :cond_7
    move p1, v5

    :goto_3
    const/4 p2, 0x2

    invoke-direct {p0, p2}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-direct {p0, v2, v3}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v2

    goto :goto_4

    :cond_8
    move v2, v5

    :goto_4
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-direct {p0, v6, v4}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v4

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    if-ne p1, v5, :cond_f

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v2, -0x33

    if-le p1, v2, :cond_b

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    const/16 v2, -0x59

    if-lt p1, v2, :cond_c

    move v0, v3

    goto :goto_6

    :cond_c
    const/16 v2, -0x61

    if-lt p1, v2, :cond_d

    const/4 v0, 0x3

    goto :goto_6

    :cond_d
    const/16 v2, -0x67

    if-lt p1, v2, :cond_e

    move v0, p2

    goto :goto_6

    :cond_e
    const/16 p2, -0x71

    if-lt p1, p2, :cond_a

    :goto_6
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    :cond_f
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

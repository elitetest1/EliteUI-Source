.class public final Landroid/telephony/CellSignalStrengthWcdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthWcdma$LevelCalculationMethod;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist DEFAULT_LEVEL_CALCULATION_METHOD:Ljava/lang/String; = "rssi"

.field public static final blacklist LEVEL_CALCULATION_METHOD_RSCP:Ljava/lang/String; = "rscp"

.field public static final blacklist LEVEL_CALCULATION_METHOD_RSSI:Ljava/lang/String; = "rssi"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthWcdma"

.field private static final blacklist WCDMA_RSCP_GOOD:I = -0x5f

.field private static final blacklist WCDMA_RSCP_GREAT:I = -0x55

.field private static final blacklist WCDMA_RSCP_MAX:I = -0x18

.field private static final blacklist WCDMA_RSCP_MIN:I = -0x78

.field private static final blacklist WCDMA_RSCP_MODERATE:I = -0x69

.field private static final blacklist WCDMA_RSCP_POOR:I = -0x73

.field private static final blacklist WCDMA_RSSI_GOOD:I = -0x57

.field private static final blacklist WCDMA_RSSI_GREAT:I = -0x4d

.field private static final blacklist WCDMA_RSSI_MAX:I = -0x33

.field private static final blacklist WCDMA_RSSI_MIN:I = -0x71

.field private static final blacklist WCDMA_RSSI_MODERATE:I = -0x61

.field private static final blacklist WCDMA_RSSI_POOR:I = -0x6b

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

.field private static final blacklist sRscpThresholds:[I

.field private static final blacklist sRssiThresholds:[I


# instance fields
.field private greylist mBitErrorRate:I

.field private blacklist mEcNo:I

.field private blacklist mLevel:I

.field private blacklist mRscp:I

.field private blacklist mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/16 v0, -0x57

    const/16 v1, -0x4d

    const/16 v2, -0x6b

    const/16 v3, -0x61

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    const/16 v0, -0x5f

    const/16 v1, -0x55

    const/16 v2, -0x73

    const/16 v3, -0x69

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const/4 p1, 0x7

    const/16 v0, 0x63

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(IIII)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    const/16 p1, -0x78

    const/16 p2, -0x18

    invoke-static {p3, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const/4 p1, 0x1

    invoke-static {p4, p2, p1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthWcdma-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthWcdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 1

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthWcdma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/CellSignalStrengthWcdma;

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRscpDbm(I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-eq p0, v1, :cond_1

    invoke-static {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRssiDbm(I)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRscpDbm(I)I

    move-result p0

    return p0
.end method

.method public blacklist getBitErrorRate()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return p0
.end method

.method public whitelist getDbm()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return p0
.end method

.method public whitelist getEcNo()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    return p0
.end method

.method public whitelist getLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return p0
.end method

.method public blacklist getRscp()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    return p0
.end method

.method public blacklist getRssi()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isValid()Z
    .locals 1

    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist-max-o setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthWcdma: ss="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ecno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 4

    const/4 p2, 0x4

    const-string/jumbo v0, "rssi"

    if-nez p1, :cond_0

    sget-object p1, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "wcdma_default_signal_strength_measurement_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    const-string/jumbo v2, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v2, p1

    if-eq v2, p2, :cond_3

    :cond_2
    sget-object p1, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v2, "rscp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Level Calculation Method for CellSignalStrengthWcdma = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/CellSignalStrengthWcdma;->loge(Ljava/lang/String;)V

    :cond_4
    iget p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const/16 v0, -0x71

    if-lt p1, v0, :cond_7

    const/16 v0, -0x33

    if-le p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    if-lez p2, :cond_6

    iget p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-ge p1, v0, :cond_6

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_6
    iput p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void

    :cond_7
    :goto_2
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void

    :cond_8
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const/16 v1, -0x78

    if-lt v0, v1, :cond_b

    const/16 v1, -0x18

    if-le v0, v1, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    if-lez p2, :cond_a

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    add-int/lit8 v1, p2, -0x1

    aget v1, p1, v1

    if-ge v0, v1, :cond_a

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_a
    iput p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void

    :cond_b
    :goto_4
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

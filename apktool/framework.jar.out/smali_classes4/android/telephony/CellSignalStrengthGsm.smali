.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist GSM_RSSI_GOOD:I = -0x61

.field private static final blacklist GSM_RSSI_GREAT:I = -0x59

.field private static final blacklist GSM_RSSI_MAX:I = -0x33

.field private static final blacklist GSM_RSSI_MIN:I = -0x71

.field private static final blacklist GSM_RSSI_MODERATE:I = -0x67

.field private static final blacklist GSM_RSSI_POOR:I = -0x6b

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthGsm;

.field private static final blacklist sRssiThresholds:[I


# instance fields
.field private greylist mBitErrorRate:I

.field private blacklist mLevel:I

.field private blacklist mRssi:I

.field private greylist-max-p mTimingAdvance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/16 v0, -0x61

    const/16 v1, -0x59

    const/16 v2, -0x6b

    const/16 v3, -0x67

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->sRssiThresholds:[I

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->sInvalid:Landroid/telephony/CellSignalStrengthGsm;

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthGsm;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    const/4 p1, 0x7

    const/16 v0, 0x63

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Landroid/telephony/CellSignalStrengthGsm;->inRangeOrUnavailable(IIII)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    const/16 p1, 0xdb

    invoke-static {p3, v1, p1}, Landroid/telephony/CellSignalStrengthGsm;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthGsm"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthGsm;
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 1

    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthGsm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/CellSignalStrengthGsm;

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-static {p0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuFromRssiDbm(I)I

    move-result p0

    return p0
.end method

.method public whitelist getBitErrorRate()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    return p0
.end method

.method public whitelist getDbm()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    return p0
.end method

.method public whitelist getLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    return p0
.end method

.method public whitelist getRssi()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    return p0
.end method

.method public whitelist getTimingAdvance()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isValid()Z
    .locals 1

    sget-object v0, Landroid/telephony/CellSignalStrengthGsm;->sInvalid:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthGsm;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist-max-o setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthGsm: rssi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 2

    const/4 p2, 0x4

    if-nez p1, :cond_0

    sget-object p1, Landroid/telephony/CellSignalStrengthGsm;->sRssiThresholds:[I

    goto :goto_0

    :cond_0
    const-string v0, "gsm_rssi_thresholds_int_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eq v0, p2, :cond_2

    :cond_1
    sget-object p1, Landroid/telephony/CellSignalStrengthGsm;->sRssiThresholds:[I

    :cond_2
    :goto_0
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    const/16 v1, -0x71

    if-lt v0, v1, :cond_5

    const/16 v1, -0x33

    if-le v0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-lez p2, :cond_4

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    add-int/lit8 v1, p2, -0x1

    aget v1, p1, v1

    if-ge v0, v1, :cond_4

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    return-void

    :cond_5
    :goto_2
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

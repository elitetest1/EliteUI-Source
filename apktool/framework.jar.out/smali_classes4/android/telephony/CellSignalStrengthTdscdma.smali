.class public final Landroid/telephony/CellSignalStrengthTdscdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellSignalStrengthTdscdma"

.field private static final blacklist TDSCDMA_RSCP_GOOD:I = -0x49

.field private static final blacklist TDSCDMA_RSCP_GREAT:I = -0x31

.field private static final blacklist TDSCDMA_RSCP_MAX:I = -0x18

.field private static final blacklist TDSCDMA_RSCP_MIN:I = -0x78

.field private static final blacklist TDSCDMA_RSCP_MODERATE:I = -0x61

.field private static final blacklist TDSCDMA_RSCP_POOR:I = -0x6e

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;


# instance fields
.field private blacklist mBitErrorRate:I

.field private blacklist mLevel:I

.field private blacklist mRscp:I

.field private blacklist mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    const/4 p1, 0x7

    const/16 v0, 0x63

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(IIII)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    const/16 p1, -0x78

    const/16 p2, -0x18

    invoke-static {p3, p1, p2}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthTdscdma-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;->copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthTdscdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->copy()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object p0

    return-object p0
.end method

.method public blacklist copy()Landroid/telephony/CellSignalStrengthTdscdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v0
.end method

.method protected blacklist copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 1

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-eq p0, v1, :cond_1

    invoke-static {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRssiDbm(I)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result p0

    return p0
.end method

.method public blacklist getBitErrorRate()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    return p0
.end method

.method public whitelist getDbm()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return p0
.end method

.method public whitelist getLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return p0
.end method

.method public whitelist getRscp()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return p0
.end method

.method public blacklist getRssi()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isValid()Z
    .locals 1

    sget-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthTdscdma: rssi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 1

    iget p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 p2, -0x18

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void

    :cond_0
    const/16 p2, -0x31

    if-lt p1, p2, :cond_1

    const/4 p1, 0x4

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void

    :cond_1
    const/16 p2, -0x49

    if-lt p1, p2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void

    :cond_2
    const/16 p2, -0x61

    if-lt p1, p2, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void

    :cond_3
    const/16 p2, -0x6e

    if-lt p1, p2, :cond_4

    const/4 p1, 0x1

    iput p1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void

    :cond_4
    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

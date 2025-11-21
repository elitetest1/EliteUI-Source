.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthCdma;


# instance fields
.field private greylist-max-o mCdmaDbm:I

.field private greylist-max-o mCdmaEcio:I

.field private greylist-max-o mEvdoDbm:I

.field private greylist-max-o mEvdoEcio:I

.field private greylist-max-o mEvdoSnr:I

.field private blacklist mLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    return-void
.end method

.method public constructor greylist-max-o <init>(IIIII)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    return-void

    :cond_0
    const/16 v0, -0x78

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    const/16 p1, -0xa0

    invoke-static {p2, p1, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result p2

    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result p2

    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {p4, p1, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    const/16 p1, 0x8

    invoke-static {p5, v1, p1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/telephony/CellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthCdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    return-void

    :cond_0
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthCdma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/CellSignalStrengthCdma;

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 11

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, -0x64

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, -0x5a

    const/16 v7, 0x10

    const/16 v8, 0x63

    const v9, 0x7fffffff

    if-ne v0, v9, :cond_1

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    const/16 v10, -0x52

    if-lt v0, v10, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    if-lt v0, v6, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    if-ne p0, v9, :cond_7

    :cond_6
    move v1, v8

    goto :goto_1

    :cond_7
    if-lt p0, v6, :cond_8

    move v1, v7

    goto :goto_1

    :cond_8
    if-lt p0, v3, :cond_9

    move v1, v5

    goto :goto_1

    :cond_9
    const/16 v3, -0x73

    if-lt p0, v3, :cond_a

    move v1, v4

    goto :goto_1

    :cond_a
    const/16 v3, -0x82

    if-lt p0, v3, :cond_b

    move v1, v2

    goto :goto_1

    :cond_b
    const/16 v2, -0x96

    if-lt p0, v2, :cond_6

    :goto_1
    if-ge v0, v1, :cond_c

    return v0

    :cond_c
    return v1
.end method

.method public whitelist getCdmaDbm()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return p0
.end method

.method public whitelist getCdmaEcio()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return p0
.end method

.method public whitelist getCdmaLevel()I
    .locals 8

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x7fffffff

    if-ne v0, v6, :cond_1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v7, -0x55

    if-lt v0, v7, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v7, -0x64

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    if-ne p0, v6, :cond_6

    :cond_5
    move v1, v5

    goto :goto_1

    :cond_6
    const/16 v6, -0x5a

    if-lt p0, v6, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    const/16 v4, -0x6e

    if-lt p0, v4, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    const/16 v3, -0x82

    if-lt p0, v3, :cond_9

    move v1, v2

    goto :goto_1

    :cond_9
    const/16 v2, -0x96

    if-lt p0, v2, :cond_5

    :goto_1
    if-ge v0, v1, :cond_a

    return v0

    :cond_a
    return v1
.end method

.method public whitelist getDbm()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p0

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public blacklist getEvdoAsuLevel()I
    .locals 8

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p0

    const/16 v1, -0x41

    const/16 v2, 0x63

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x1

    if-lt v0, v1, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/16 v1, -0x4b

    if-lt v0, v1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v1, -0x55

    if-lt v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v1, -0x5f

    if-lt v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v1, -0x69

    if-lt v0, v1, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    const/4 v1, 0x7

    if-lt p0, v1, :cond_5

    move v2, v6

    goto :goto_1

    :cond_5
    const/4 v1, 0x6

    if-lt p0, v1, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    const/4 v1, 0x5

    if-lt p0, v1, :cond_7

    move v2, v4

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    if-lt p0, v1, :cond_8

    move v2, v3

    goto :goto_1

    :cond_8
    if-lt p0, v7, :cond_9

    move v2, v7

    :cond_9
    :goto_1
    if-ge v0, v2, :cond_a

    return v0

    :cond_a
    return v2
.end method

.method public whitelist getEvdoDbm()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return p0
.end method

.method public whitelist getEvdoEcio()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return p0
.end method

.method public whitelist getEvdoLevel()I
    .locals 8

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const v6, 0x7fffffff

    if-ne v0, v6, :cond_1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v7, -0x41

    if-lt v0, v7, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    const/16 v7, -0x5a

    if-lt v0, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v7, -0x69

    if-lt v0, v7, :cond_0

    move v0, v3

    :goto_0
    if-ne p0, v6, :cond_6

    :cond_5
    move v1, v5

    goto :goto_1

    :cond_6
    const/4 v6, 0x7

    if-lt p0, v6, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    const/4 v2, 0x5

    if-lt p0, v2, :cond_8

    move v1, v4

    goto :goto_1

    :cond_8
    if-lt p0, v4, :cond_9

    goto :goto_1

    :cond_9
    if-lt p0, v3, :cond_5

    move v1, v3

    :goto_1
    if-ge v0, v1, :cond_a

    return v0

    :cond_a
    return v1
.end method

.method public whitelist getEvdoSnr()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return p0
.end method

.method public whitelist getLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isValid()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist-max-o setCdmaDbm(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return-void
.end method

.method public greylist-max-o setCdmaEcio(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return-void
.end method

.method public greylist-max-o setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return-void
.end method

.method public greylist-max-o setEvdoDbm(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return-void
.end method

.method public greylist-max-o setEvdoEcio(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return-void
.end method

.method public greylist-max-o setEvdoSnr(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result p1

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

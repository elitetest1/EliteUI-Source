.class public final Landroid/telephony/ActivityStatsTechSpecificInfo;
.super Ljava/lang/Object;
.source "ActivityStatsTechSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ActivityStatsTechSpecificInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TX_POWER_LEVELS:I = 0x5


# instance fields
.field private blacklist mFrequencyRange:I

.field private blacklist mRat:I

.field private blacklist mRxTimeMs:I

.field private blacklist mTxTimeMs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ActivityStatsTechSpecificInfo$1;

    invoke-direct {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ActivityStatsTechSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II[II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    iput p2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    iput-object p3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    iput p4, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "txTimeMs must have length == TX_POWER_LEVELS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic blacklist lambda$isTxPowerEmpty$1(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$isTxPowerValid$0(I)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist ratToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "NGRAN"

    return-object p0

    :pswitch_1
    const-string p0, "IWLAN"

    return-object p0

    :pswitch_2
    const-string p0, "CDMA2000"

    return-object p0

    :pswitch_3
    const-string p0, "EUTRAN"

    return-object p0

    :pswitch_4
    const-string p0, "UTRAN"

    return-object p0

    :pswitch_5
    const-string p0, "GERAN"

    return-object p0

    :pswitch_6
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    instance-of v1, p1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    iget v3, p1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    iget v3, p1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    iget-object v3, p1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    iget p1, p1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getFrequencyRange()I
    .locals 0

    iget p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    return p0
.end method

.method public blacklist getRat()I
    .locals 0

    iget p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    return p0
.end method

.method public blacklist getReceiveTimeMillis()J
    .locals 2

    iget p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getTransmitTimeMillis(I)J
    .locals 0

    iget-object p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    aget p0, p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public blacklist getTransmitTimeMillis()[I
    .locals 0

    iget-object p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isRxPowerEmpty()Z
    .locals 4

    invoke-virtual {p0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRxPowerValid()Z
    .locals 4

    invoke-virtual {p0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isTxPowerEmpty()Z
    .locals 1

    iget-object p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isTxPowerValid()Z
    .locals 1

    iget-object p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist setFrequencyRange(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    return-void
.end method

.method public blacklist setRat(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    return-void
.end method

.method public blacklist setReceiveTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    return-void
.end method

.method public blacklist setReceiveTimeMillis(J)V
    .locals 0

    long-to-int p1, p1

    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    return-void
.end method

.method public blacklist setTransmitTimeMillis([I)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    invoke-static {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mTxTimeMs[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

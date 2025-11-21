.class public Lcom/android/internal/power/EnergyConsumerStats;
.super Ljava/lang/Object;
.source "EnergyConsumerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/EnergyConsumerStats$Config;,
        Lcom/android/internal/power/EnergyConsumerStats$StandardPowerBucket;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_STATE:I = -0x1

.field public static final blacklist NUMBER_STANDARD_POWER_BUCKETS:I = 0xa

.field public static final blacklist POWER_BUCKET_BLUETOOTH:I = 0x5

.field public static final blacklist POWER_BUCKET_CAMERA:I = 0x8

.field public static final blacklist POWER_BUCKET_CPU:I = 0x3

.field public static final blacklist POWER_BUCKET_GNSS:I = 0x6

.field public static final blacklist POWER_BUCKET_MOBILE_RADIO:I = 0x7

.field public static final blacklist POWER_BUCKET_PHONE:I = 0x9

.field public static final blacklist POWER_BUCKET_SCREEN_DOZE:I = 0x1

.field public static final blacklist POWER_BUCKET_SCREEN_ON:I = 0x0

.field public static final blacklist POWER_BUCKET_SCREEN_OTHER:I = 0x2

.field public static final blacklist POWER_BUCKET_UNKNOWN:I = -0x1

.field public static final blacklist POWER_BUCKET_WIFI:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "MeasuredEnergyStats"


# instance fields
.field private final blacklist mAccumulatedChargeMicroCoulomb:[J

.field private blacklist mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

.field private final blacklist mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

.field private blacklist mState:I

.field private blacklist mStateChangeTimestampMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smindexToCustomBucket(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->indexToCustomBucket(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidStandardBucket(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->isValidStandardBucket(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmSupportedStandardBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    const-wide/16 v1, -0x1

    aput-wide v1, v0, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readLongArray([J)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, p1, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    sget-object v2, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    return-void
.end method

.method private static blacklist checkValidStandardBucket(I)V
    .locals 3

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->isValidStandardBucket(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal StandardPowerBucket "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist containsInterestingData()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static blacklist createAndReadSummaryFromParcel(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/EnergyConsumerStats;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Lcom/android/internal/power/EnergyConsumerStats;

    new-instance v2, Lcom/android/internal/power/EnergyConsumerStats$Config;

    new-array v0, v0, [Z

    const/4 v3, 0x0

    new-array v3, v3, [I

    const-string v4, ""

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/internal/power/EnergyConsumerStats$Config;-><init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v2

    if-eq v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Size of MeasuredEnergyStats parcel ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") does not match config ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MeasuredEnergyStats"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v0, p0}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    invoke-direct {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    return-object v1

    :cond_2
    new-instance v0, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v0, p0}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    invoke-direct {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    invoke-direct {v0}, Lcom/android/internal/power/EnergyConsumerStats;->containsInterestingData()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static blacklist createFromParcel(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/EnergyConsumerStats;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static blacklist customBucketToIndex(I)I
    .locals 0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static blacklist getDisplayPowerBucket(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static blacklist indexToCustomBucket(I)I
    .locals 0

    add-int/lit8 p0, p0, -0xa

    return p0
.end method

.method private blacklist isIndexSupported(I)Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide p0, p0, p1

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isValidStandardBucket(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v7, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v8}, Lcom/android/internal/power/EnergyConsumerStats$Config;->getStateNames()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v6, v5

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v5, v5

    if-ge v2, v5, :cond_3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/power/EnergyConsumerStats;->setValueIfSupported(IJ)V

    if-eqz v6, :cond_3

    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v3, v3

    new-array v3, v3, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    :cond_2
    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v6, v3, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private blacklist reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/power/EnergyConsumerStats;->setValueIfSupported(IJ)V

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v2, :cond_0

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist resetIfNotNull(Lcom/android/internal/power/EnergyConsumerStats;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/power/EnergyConsumerStats;->reset()V

    :cond_0
    return-void
.end method

.method private blacklist setValueIfSupported(IJ)V
    .locals 4

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, p0, p1

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    aput-wide p2, p0, p1

    :cond_0
    return-void
.end method

.method private blacklist updateEntry(IJJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    iget p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    iget-object p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {p2, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length p2, p2

    new-array p2, p2, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    :cond_0
    iget-object p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object p2, p2, p1

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object p3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {p3}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object p3

    array-length p3, p3

    invoke-direct {p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    iget-object p3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object p2, p3, p1

    iget p3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    iget-wide v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    iget-wide v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    invoke-virtual {p2, v3, v4, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    :cond_1
    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide p0, p0, p1

    invoke-virtual {p2, p0, p1, p4, p5}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    :cond_2
    return-void

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Attempting to add "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " to unavailable bucket "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {p2, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/EnergyConsumerStats$Config;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " whose value was "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide p0, p0, p1

    invoke-virtual {p4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MeasuredEnergyStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v4, :cond_1

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static blacklist writeSummaryToParcel(Lcom/android/internal/power/EnergyConsumerStats;Landroid/os/Parcel;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->writeSummaryToParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v2, v1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/EnergyConsumerStats$Config;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-direct {p0, v1}, Lcom/android/internal/power/EnergyConsumerStats;->isIndexSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " (unsupported)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v2, :cond_3

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const-string v3, " ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v4}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    if-eqz v3, :cond_1

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v4}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist getAccumulatedCustomBucketCharge(I)J
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result p1

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public blacklist getAccumulatedCustomBucketCharges()[J
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/power/EnergyConsumerStats;->getNumberCustomPowerBuckets()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {v2}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v4

    aget-wide v3, v3, v4

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public blacklist getAccumulatedStandardBucketCharge(I)J
    .locals 0

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public blacklist getAccumulatedStandardBucketCharge(II)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    aget-object p0, p0, p1

    if-nez p0, :cond_2

    return-wide v0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getNumberCustomPowerBuckets()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length p0, p0

    add-int/lit8 p0, p0, -0xa

    return p0
.end method

.method public blacklist isStandardBucketSupported(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isIndexSupported(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isValidCustomBucket(I)Z
    .locals 0

    if-ltz p1, :cond_0

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setState(IJ)V
    .locals 4

    iput p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    iput-wide p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v2, v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v1, v2, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public blacklist updateCustomBucket(IJ)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/EnergyConsumerStats;->updateCustomBucket(IJJ)V

    return-void
.end method

.method public blacklist updateCustomBucket(IJJ)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Attempted to update invalid custom bucket "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MeasuredEnergyStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/power/EnergyConsumerStats;->updateEntry(IJJ)V

    return-void
.end method

.method public blacklist updateStandardBucket(IJ)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/EnergyConsumerStats;->updateStandardBucket(IJJ)V

    return-void
.end method

.method public blacklist updateStandardBucket(IJJ)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/power/EnergyConsumerStats;->updateEntry(IJJ)V

    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v4, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

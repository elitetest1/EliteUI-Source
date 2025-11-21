.class public final Landroid/os/BatteryUsageStatsQuery$Builder;
.super Ljava/lang/Object;
.source "BatteryUsageStatsQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAggregateFromTimestamp:J

.field private blacklist mAggregateToTimestamp:J

.field private blacklist mFlags:I

.field private blacklist mMaxStatsAgeMs:J

.field private blacklist mMinConsumedPowerThreshold:D

.field private blacklist mMonotonicEndTime:J

.field private blacklist mMonotonicStartTime:J

.field private blacklist mPowerComponents:[I

.field private blacklist mPreferredHistoryDurationMs:J

.field private blacklist mUserIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregateFromTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateFromTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAggregateToTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateToTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/BatteryUsageStatsQuery$Builder;)I
    .locals 0

    iget p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxStatsAgeMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinConsumedPowerThreshold(Landroid/os/BatteryUsageStatsQuery$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMinConsumedPowerThreshold:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonotonicEndTime(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicEndTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonotonicStartTime(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerComponents(Landroid/os/BatteryUsageStatsQuery$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredHistoryDurationMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPreferredHistoryDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicStartTime:J

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicEndTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMinConsumedPowerThreshold:D

    invoke-static {}, Landroid/os/BatteryUsageStatsQuery;->-$$Nest$sfgetDEFAULT_PREFERRED_HISTORY_DURATION_MS()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPreferredHistoryDurationMs:J

    return-void
.end method


# virtual methods
.method public blacklist accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 1

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0xe8

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 2

    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    return-object p0
.end method

.method public blacklist aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateFromTimestamp:J

    iput-wide p3, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateToTimestamp:J

    return-object p0
.end method

.method public blacklist build()Landroid/os/BatteryUsageStatsQuery;
    .locals 2

    new-instance v0, Landroid/os/BatteryUsageStatsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/os/BatteryUsageStatsQuery-IA;)V

    return-object v0
.end method

.method public blacklist includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 1

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist includePowerComponents([I)Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    return-object p0
.end method

.method public blacklist includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 1

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 1

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 1

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 1

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist monotonicTimeRange(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicStartTime:J

    iput-wide p3, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicEndTime:J

    return-object p0
.end method

.method public blacklist powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-object p0
.end method

.method public blacklist setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMinConsumedPowerThreshold:D

    return-object p0
.end method

.method public blacklist setPreferredHistoryDurationMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPreferredHistoryDurationMs:J

    return-object p0
.end method

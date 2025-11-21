.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;,
        Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;,
        Lcom/android/internal/os/BatteryStatsHistory$EventLogger;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;,
        Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
    }
.end annotation


# static fields
.field static final blacklist BATTERY_LEVEL2_TEMP_MASK:I = -0x10000

.field static final blacklist BATTERY_LEVEL2_TEMP_SHIFT:I = 0x10

.field static final blacklist BATTERY_LEVEL2_VOLT_MASK:I = 0xffff

.field static final blacklist BATTERY_LEVEL2_VOLT_SHIFT:I = 0x0

.field static final blacklist BATTERY_LEVEL_DETAILS_FLAG:I = 0x1

.field static final blacklist BATTERY_LEVEL_LEVEL_MASK:I = -0x1000000

.field static final blacklist BATTERY_LEVEL_LEVEL_SHIFT:I = 0x18

.field static final blacklist BATTERY_LEVEL_OVERFLOW_FLAG:I = 0x2

.field static final blacklist BATTERY_LEVEL_TEMP_MASK:I = 0xff8000

.field static final blacklist BATTERY_LEVEL_TEMP_SHIFT:I = 0xf

.field static final blacklist BATTERY_LEVEL_VOLT_MASK:I = 0x7ffc

.field static final blacklist BATTERY_LEVEL_VOLT_SHIFT:I = 0x2

.field private static final blacklist DEBUG:Z = false

.field static final blacklist DELTA_BATTERY_CHARGE_FLAG:I = 0x1000000

.field static final blacklist DELTA_BATTERY_CURRENT_FLAG:I = 0x40000

.field static final blacklist DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final blacklist DELTA_BATTERY_SEC_INFO_FLAG:I = 0x20000

.field static final blacklist DELTA_EVENT_FLAG:I = 0x800000

.field static final blacklist DELTA_STATE2_FLAG:I = 0x200000

.field static final blacklist DELTA_STATE_FLAG:I = 0x100000

.field static final blacklist DELTA_STATE_MASK:I = -0x2000000

.field static final blacklist DELTA_TIME_ABS:I = 0x1fffd

.field static final blacklist DELTA_TIME_INT:I = 0x1fffe

.field static final blacklist DELTA_TIME_LONG:I = 0x1ffff

.field static final blacklist DELTA_TIME_MASK:I = 0x1ffff

.field static final blacklist DELTA_WAKELOCK_FLAG:I = 0x400000

.field static final blacklist EXTENSION_POWER_STATS_DESCRIPTOR_FLAG:I = 0x1

.field static final blacklist EXTENSION_POWER_STATS_FLAG:I = 0x2

.field static final blacklist EXTENSION_PROCESS_STATE_CHANGE_FLAG:I = 0x4

.field private static final blacklist EXTRA_BUFFER_SIZE_WHEN_DIR_LOCKED:I = 0x186a0

.field static final blacklist HISTORY_TAG_INDEX_LIMIT:I = 0x7ffe

.field private static final blacklist MAX_HISTORY_TAG_STRING_LENGTH:I = 0x400

.field static final blacklist STATE1_TRACE_MASK:I = 0x3fffffff

.field static final blacklist STATE2_TRACE_MASK:I = -0x1

.field static final blacklist STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final blacklist STATE_BATTERY_MASK:I = -0x1000000

.field static final blacklist STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final blacklist STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final blacklist STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field static final blacklist STATE_SEC_BATTERY_HEALTH_MASK:I = 0x8

.field static final blacklist STATE_SEC_BATTERY_HEALTH_SHIFT:I = 0xe

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistory"

.field static final blacklist TAG_FIRST_OCCURRENCE_FLAG:I = 0x8000

.field private static final blacklist VERSION:I = 0xe00d6

.field private static final blacklist VERSION_SEC:I = 0xe0000


# instance fields
.field private blacklist mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private final blacklist mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

.field private blacklist mHaveBatteryLevel:Z

.field private final blacklist mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryBuffer:Landroid/os/Parcel;

.field private blacklist mHistoryBufferLastPos:I

.field private blacklist mHistoryBufferStartTime:J

.field private final blacklist mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private blacklist mHistoryMonotonicEndTime:J

.field private blacklist mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIteratorCookie:I

.field private blacklist mMaxHistoryBufferSize:I

.field private final blacklist mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private blacklist mMonotonicHistorySize:J

.field private blacklist mMutable:Z

.field private blacklist mNextHistoryTagIdx:I

.field private blacklist mNumHistoryTagChars:I

.field private blacklist mRecordingHistory:Z

.field private final blacklist mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

.field private blacklist mTraceLastState:I

.field private blacklist mTraceLastState2:I

.field private blacklist mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

.field private blacklist mTrackRunningHistoryElapsedRealtimeMs:J

.field private blacklist mTrackRunningHistoryUptimeMs:J

.field private final blacklist mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/PowerStats$Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iput p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    iput-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    iput-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iput-object p7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    iput-object p8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz p8, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    iget-wide p6, p8, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iput-wide p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iget-wide p6, p8, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    iput-wide p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    :goto_0
    if-eqz p8, :cond_2

    iget-object p1, p8, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    return-void

    :cond_2
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p5}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide p1

    invoke-interface {p3, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    :cond_4
    return-void
.end method

.method private blacklist buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I
    .locals 6

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int/2addr v0, v1

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    sub-int/2addr v1, v2

    iget-short p1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short p2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    sub-int/2addr p1, p2

    const p2, 0xff8000

    const/4 v2, 0x2

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result v3

    const/16 v4, 0xf

    const/16 v5, 0x7ffc

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v5, v4}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    shl-int/lit8 v0, v0, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    if-eqz p0, :cond_2

    or-int/lit8 p0, v0, 0x2

    return p0

    :cond_2
    shl-int/lit8 p0, v1, 0xf

    and-int/2addr p0, p2

    or-int/2addr p0, v0

    shl-int/2addr p1, v2

    and-int/2addr p1, v5

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 1

    iget-byte p0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    shl-int/lit8 p0, p0, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 2

    iget-byte p0, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    shl-int/lit8 p0, p0, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    iget-short p1, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 1

    iget-short p0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    iget-short p1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3

    iget-byte p0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    const/4 v0, 0x1

    and-int/2addr p0, v0

    const/4 v1, 0x3

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-byte p0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-byte p0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-byte p0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr p0, v2

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr p0, v2

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 2

    iget-byte p0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    shl-int/lit8 p0, p0, 0x1d

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    shl-int/lit8 v0, v0, 0x1c

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    shl-int/lit8 v0, v0, 0x1b

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    shl-int/lit8 v0, v0, 0x1a

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    shl-int/lit8 v0, v0, 0x19

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    iget-byte p1, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static blacklist createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;
    .locals 1

    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private blacklist ensureHistoryTagArray()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0x8001

    and-int/2addr v3, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist hasAvailableStorage()Z
    .locals 5

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0xc800000

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist initHistoryBuffer()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    return-void
.end method

.method private blacklist maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z
    .locals 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    :cond_0
    const-string v4, "BatteryStatsHistory"

    if-nez v2, :cond_1

    const-string v2, "mMaxHistoryBufferSize should not be zero when writing history"

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x400

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->tryLock()Z

    move-result v2

    if-nez v2, :cond_3

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const v6, 0x186a0

    add-int/2addr v5, v6

    if-ge v0, v5, :cond_2

    return v3

    :cond_2
    const-string v0, "History buffer overflow exceeds 100000 bytes"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragment(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    :cond_4
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    const/4 v7, 0x0

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    :cond_5
    throw v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;Z)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private blacklist recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V
    .locals 6

    xor-int/2addr p1, p2

    and-int/2addr p1, p3

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 p3, 0x0

    move v0, p3

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_4

    aget-object v1, p4, v0

    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v2, :cond_3

    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, p3

    goto :goto_1

    :cond_3
    iget v2, v1, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v2, p2

    iget v3, v1, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v2, v3

    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "battery_stats."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceCounter(Ljava/lang/String;I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private blacklist recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const v0, -0xc001

    and-int/2addr v0, p1

    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const-string p1, "+"

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_2

    const-string p1, "-"

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    sget-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    if-ltz v0, :cond_4

    array-length v2, v1

    if-lt v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "battery_stats."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceInstantEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    return-void
.end method

.method private blacklist setBitField(IIII)I
    .locals 2

    shl-int p0, p2, p3

    not-int p3, p4

    and-int v0, p0, p3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not fit in the bit field: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryStatsHistory"

    invoke-static {v0, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    and-int/2addr p0, p4

    :cond_0
    and-int/2addr p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist signedValueFits(III)Z
    .locals 0

    ushr-int p0, p2, p3

    const/4 p2, 0x1

    ushr-int/2addr p0, p2

    not-int p0, p0

    and-int/2addr p1, p0

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method private blacklist startNextFragmentLocked(J)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataCapacity(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private blacklist verifyVersion(Landroid/os/Parcel;)Z
    .locals 1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const v0, 0xe00d6

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private blacklist writeHistory(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BatteryStatsHistory"

    const-string/jumbo v0, "writeHistory: this instance instance is read-only"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->write()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private blacklist writeHistoryBuffer(Landroid/os/Parcel;)V
    .locals 2

    const v0, 0xe00d6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    return-void
.end method

.method private blacklist writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    if-eqz v3, :cond_36

    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v5, :cond_0

    goto/16 :goto_14

    :cond_0
    iget-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v5, v7

    invoke-direct {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I

    move-result v7

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v8

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v9

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v10

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v11

    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-ltz v12, :cond_3

    const-wide/32 v14, 0x7fffffff

    cmp-long v12, v5, v14

    if-lez v12, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v14, 0x1fffd

    cmp-long v12, v5, v14

    if-ltz v12, :cond_2

    const v12, 0x1fffe

    goto :goto_1

    :cond_2
    long-to-int v12, v5

    goto :goto_1

    :cond_3
    :goto_0
    const v12, 0x1ffff

    :goto_1
    iget v14, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v15, -0x2000000

    and-int/2addr v14, v15

    or-int/2addr v14, v12

    iget-object v15, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v15, :cond_4

    or-int/lit8 v7, v7, 0x1

    :cond_4
    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_6

    const/high16 v17, 0x80000

    or-int v14, v14, v17

    :cond_6
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    if-eq v15, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    const/high16 v18, 0x40000

    if-eqz v9, :cond_8

    or-int v14, v14, v18

    :cond_8
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v4

    if-eq v4, v10, :cond_9

    const/4 v10, 0x1

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_a

    or-int v14, v14, v18

    :cond_a
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v13

    if-eq v13, v11, :cond_b

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    :goto_5
    const/high16 v19, 0x20000

    if-eqz v11, :cond_c

    or-int v14, v14, v19

    :cond_c
    move/from16 v20, v9

    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    move/from16 v21, v10

    iget v10, v3, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v9, v10, :cond_d

    const/4 v9, 0x1

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_e

    or-int v14, v14, v19

    :cond_e
    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    move/from16 v22, v9

    iget v9, v3, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v10, v9, :cond_f

    const/4 v9, 0x1

    goto :goto_7

    :cond_f
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_10

    or-int v14, v14, v19

    :cond_10
    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    move/from16 v23, v9

    iget v9, v3, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    if-eq v10, v9, :cond_11

    const/4 v9, 0x1

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_12

    or-int v14, v14, v19

    :cond_12
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v10

    if-eq v10, v8, :cond_13

    const/4 v8, 0x1

    goto :goto_9

    :cond_13
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_14

    const/high16 v24, 0x100000

    or-int v14, v14, v24

    :cond_14
    move/from16 v24, v8

    iget-object v8, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v8, :cond_16

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    move/from16 v25, v9

    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v9, v9, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const/4 v8, 0x3

    goto :goto_a

    :cond_15
    const/4 v8, 0x2

    goto :goto_a

    :cond_16
    move/from16 v25, v9

    const/4 v8, 0x0

    :goto_a
    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v9, :cond_17

    or-int/lit8 v8, v8, 0x4

    :cond_17
    if-eqz v8, :cond_18

    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int v9, v9, v19

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_b

    :cond_18
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v19, -0x20001

    and-int v9, v9, v19

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_b
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v19, v11

    iget v11, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v9, v11, :cond_1a

    if-eqz v8, :cond_19

    goto :goto_c

    :cond_19
    const/4 v9, 0x0

    goto :goto_d

    :cond_1a
    :goto_c
    const/4 v9, 0x1

    :goto_d
    if-eqz v9, :cond_1b

    const/high16 v11, 0x200000

    or-int/2addr v14, v11

    :cond_1b
    iget-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v11, :cond_1c

    iget-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v11, :cond_1d

    :cond_1c
    const/high16 v11, 0x400000

    or-int/2addr v14, v11

    :cond_1d
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v11, :cond_1e

    const/high16 v11, 0x800000

    or-int/2addr v14, v11

    :cond_1e
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-eq v11, v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_e

    :cond_1f
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_20

    const/high16 v11, 0x1000000

    or-int/2addr v14, v11

    :cond_20
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    const v11, 0x1fffe

    if-lt v12, v11, :cond_22

    if-ne v12, v11, :cond_21

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :cond_21
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    :cond_22
    :goto_f
    if-eqz v16, :cond_24

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    goto :goto_10

    :cond_23
    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_24

    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_24
    if-nez v20, :cond_25

    if-eqz v21, :cond_26

    :cond_25
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_26
    if-nez v19, :cond_27

    if-nez v22, :cond_27

    if-nez v23, :cond_27

    if-eqz v25, :cond_28

    :cond_27
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_28
    if-eqz v24, :cond_29

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_29
    if-eqz v9, :cond_2a

    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2a
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const v5, 0x8000

    const v6, 0xffff

    if-nez v4, :cond_2b

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_2f

    :cond_2b
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_2c

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v4

    goto :goto_11

    :cond_2c
    move v4, v6

    :goto_11
    iget-object v7, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v7, :cond_2d

    iget-object v7, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v7

    goto :goto_12

    :cond_2d
    move v7, v6

    :goto_12
    shl-int/lit8 v9, v7, 0x10

    or-int/2addr v9, v4

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v9, :cond_2e

    and-int/2addr v4, v5

    if-eqz v4, :cond_2e

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_13

    :cond_2e
    const/4 v4, 0x1

    const/4 v9, 0x0

    :goto_13
    iget-object v10, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v10, :cond_2f

    and-int/2addr v7, v5

    if-eqz v7, :cond_2f

    iget-object v7, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v1, v9}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    iput-boolean v4, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    :cond_2f
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v4, :cond_30

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v4

    iget v7, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/2addr v6, v7

    const/high16 v7, -0x10000

    const/16 v9, 0x10

    invoke-direct {v0, v6, v4, v9, v7}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    :cond_30
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v4, :cond_31

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    :cond_31
    if-eqz v3, :cond_32

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_32
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    if-eqz v8, :cond_35

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v3, :cond_34

    const/16 v17, 0x1

    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_33

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeSummaryToParcel(Landroid/os/Parcel;)V

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerStats;->writeToParcel(Landroid/os/Parcel;)V

    :cond_34
    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v0, :cond_35

    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$ProcessStateChange;->writeToParcel(Landroid/os/Parcel;)V

    :cond_35
    return-void

    :cond_36
    :goto_14
    const v0, 0x1fffd

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 9

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_0

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " without a name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsHistory"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->tracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v2, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0x3fffffff    # 1.9999999f

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iget v2, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v0, :cond_3

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v4, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v5, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    if-ltz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v7, v7, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v7, :cond_a

    const-wide/16 v7, 0x3e8

    cmp-long v7, v2, v7

    if-gez v7, :cond_a

    and-int/2addr v0, v5

    if-nez v0, :cond_a

    and-int v0, v4, v6

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v0, v0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v0, :cond_a

    iget-boolean v0, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_4

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_5

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_6

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v0, :cond_a

    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v4, p5, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v0, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    iget-short v4, p5, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iget v4, p5, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iget-byte v4, p5, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iget v4, p5, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iget v4, p5, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    iget v4, p5, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v0, :cond_a

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr v0, v6

    int-to-long v7, v0

    sub-long/2addr v4, v7

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-long/2addr p1, v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_7

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_8

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    :cond_a
    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v3, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z

    move-result p0

    move-object p1, v3

    move-wide v3, v4

    move-wide v5, v6

    if-eqz p0, :cond_b

    :goto_0
    return-void

    :cond_b
    iget-object p0, v2, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    if-nez p0, :cond_c

    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object p0, v2, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, v7, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const/4 p0, 0x0

    iput-object p0, v7, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p0, v7, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 p2, 0x0

    iput p2, v7, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object p0, v7, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-boolean p2, v7, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-object p0, v7, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iput-object p0, v7, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    const/4 v8, 0x7

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    :cond_c
    const/4 v8, 0x0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    return-void

    :cond_d
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "Battery history is not writable"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V
    .locals 4

    iget-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result p3

    iput p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p3, p4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean p3, p3, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    const/4 p4, 0x0

    if-nez p3, :cond_1

    iget-boolean p3, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p6, p5}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide p1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, p6, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Significantly earlier event written to battery history: time="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " previous="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryStatsHistory"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-boolean p3, p1, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p3

    iget p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr p3, p6

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    const/4 p0, 0x0

    iput-object p0, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p0, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput p4, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object p0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-boolean p4, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-object p0, p5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iput-object p0, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    return-void

    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "Battery history is not writable"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .locals 5

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v1, "BatteryStatsHistory"

    if-nez v0, :cond_0

    const-string/jumbo v0, "writeHistoryTag called with null name"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Long battery history tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const v2, 0x8000

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int v1, v0, v2

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    const v1, -0x8001

    and-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0

    :cond_3
    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    const/16 v3, 0x7ffe

    if-ge v1, v3, :cond_5

    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    iput v1, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iget p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    or-int p0, v1, v2

    return p0

    :cond_5
    const/4 p0, -0x1

    iput p0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const p0, 0xfffe

    return p0
.end method

.method private blacklist writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-interface {v2, p2, p1, p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;->writeCommitSysConfigFile(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;ZJ)V
    .locals 9

    const-string v0, "BatteryStatsHistory.writeToParcel"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v7, v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    goto :goto_1

    :cond_0
    const-wide v7, 0x7fffffffffffffffL

    :goto_1
    cmp-long v5, v7, p3

    if-gez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v5, v7}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "BatteryStatsHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading history fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    array-length v7, v5

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz p2, :cond_4

    array-length v6, v5

    invoke-virtual {p1, v5, v3, v6}, Landroid/os/Parcel;->writeBlob([BII)V

    goto :goto_2

    :cond_4
    array-length v6, v5

    invoke-virtual {p1, v5, v3, v6}, Landroid/os/Parcel;->writeByteArray([BII)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method


# virtual methods
.method public blacklist commitCurrentHistoryBatchLocked()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist continueRecordingHistory()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->hasCompletedFragments()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x4

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public blacklist copy()Lcom/android/internal/os/BatteryStatsHistory;
    .locals 12

    const-string v0, "BatteryStatsHistory.copy"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, p0

    :try_start_2
    invoke-direct/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v11, p0

    :goto_0
    move-object p0, v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;JJ)V
    .locals 7

    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
.end method

.method public blacklist forceRecordAllHistory()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getActiveFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    return-object p0
.end method

.method public blacklist getBatteryHistoryStore()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    return-object p0
.end method

.method public blacklist getEstimatedItemCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getMaxHistorySize()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getHighSpeakerVolumeState()B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryStringPoolBytes()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryStringPoolSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryTagPoolString(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$HistoryTag;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist getHistoryTagPoolUid(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$HistoryTag;

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist getHistoryUsedSize()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getMonotonicHistorySize()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    return-wide v0
.end method

.method blacklist getParcelContainers(JJ)Ljava/util/Queue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    :cond_0
    const-wide p3, 0x7fffffffffffffffL

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getFragments()Ljava/util/List;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long v5, v5, p3

    if-ltz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iget-wide v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v5, v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long v5, v5, p1

    if-gez v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_9

    move v1, v2

    :goto_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    cmp-long v6, v4, p3

    if-ltz v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-gez v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    new-instance v6, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    invoke-direct {v6, p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_a

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-wide p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Iterating over a mutable battery history"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getStartTime()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    monitor-exit p0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isRecordingHistory()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist isResetEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->isLocked()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    iput p0, v2, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 p1, 0x80000

    const-string p3, "BatteryStatsHistory.iterate"

    invoke-static {p1, p2, p3, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-object v1

    :cond_2
    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object p0

    return-object p0
.end method

.method blacklist iteratorFinished()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    :cond_0
    const-string v0, "BatteryStatsHistory.iterate"

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    return-void
.end method

.method blacklist makeBackupData()V
    .locals 10

    const-string v0, "/data/log/batterystats/newbatterystats"

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/batterystats/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->hasAvailableStorage()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "BatteryStatsHistory"

    if-nez v1, :cond_2

    :try_start_3
    const-string p0, "available space is short"

    invoke-static {v9, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_4

    :cond_2
    :try_start_5
    const-string v1, "**** History dump will start soon"

    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->dump(Ljava/io/PrintWriter;JJ)V

    const-string p0, "**** History dump finished"

    invoke-static {v9, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    const/16 v1, 0x3e8

    const/16 v3, 0x3ef

    const/16 v5, 0x1a0

    invoke-static {p0, v5, v1, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v5, 0x0

    :goto_1
    const/4 v1, 0x0

    const/4 v3, -0x1

    if-ltz v0, :cond_5

    aget-object v7, p0, v0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/32 v7, 0x3200000

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    goto :goto_2

    :cond_3
    const/16 v7, 0x28

    if-lt v0, v7, :cond_4

    add-int/lit8 v0, v0, -0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "******** Number of files:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " / size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " / index:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_1

    :goto_3
    if-gt v1, v0, :cond_1

    aget-object v3, p0, v1

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " being removed from disk ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public blacklist maybeUpdateWakelockTag(JJLjava/lang/String;I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    :cond_1
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist readFragmentToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public blacklist readHistoryBuffer(Landroid/os/Parcel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    const-string v0, "File corrupt: history data buffer not aligned "

    const-string v1, "File corrupt: history data buffer too large "

    const-string v2, ", expected 917718; erasing old stats"

    const-string/jumbo v3, "readHistoryBuffer: version got "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xe00d6

    if-eq v4, v5, :cond_0

    const-string p1, "BatteryStats"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    mul-int/lit8 v4, v4, 0x64

    if-ge v2, v4, :cond_2

    and-int/lit8 v1, v2, -0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, p1, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Landroid/os/ParcelFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/os/ParcelFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist readSummary()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    const-string v1, "BatteryStatsHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "readSummary: no history file associated with this instance"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :cond_1
    :try_start_1
    array-length v4, v3

    if-lez v4, :cond_2

    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "Error reading battery history"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput v4, v5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v2, v5, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist recordBatteryState(JJIZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p5, p5

    iput-byte p5, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p0, p6}, Lcom/android/internal/os/BatteryStatsHistory;->setPluggedInState(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordCurrentTimeChange(JJJ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 p6, 0x5

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordDataConnectionTypeChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v2, 0x9

    const/16 v3, 0x3e00

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordDeviceIdleEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x19

    const/high16 v3, 0x6000000

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordEvent(JJILjava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordGpsSignalQualityEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x7

    const/16 v3, 0x180

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;JJ)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryStepDetails;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 p2, 0x0

    iput-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordNrStateChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x9

    const/16 v3, 0x600

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordPhoneStateChangeEvent(JJIIII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    not-int p6, p6

    and-int/2addr p5, p6

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 p5, -0x1

    if-eq p7, p5, :cond_0

    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v1, 0x6

    const/16 v2, 0x1c0

    invoke-direct {p0, v0, p7, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p7

    iput p7, p6, Landroid/os/BatteryStats$HistoryItem;->states:I

    :cond_0
    if-eq p8, p5, :cond_1

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget p6, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 p7, 0x3

    const/16 v0, 0x38

    invoke-direct {p0, p6, p8, p7, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p6

    iput p6, p5, Landroid/os/BatteryStats$HistoryItem;->states:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordPowerStats(JJLcom/android/internal/os/PowerStats;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordProcessStateChange(JJII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p5, v0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p6, p5, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget p6, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v0, 0x20000

    or-int/2addr p6, v0

    iput p6, p5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordScreenBrightnessEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordShutdownEvent(JJJ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 p6, 0x8

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordState2StartEvent(JJI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordState2StartEvent(JJIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v0, 0x8015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordState2StopEvent(JJI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordState2StopEvent(JJIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v0, 0x4015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordStateChangeEvent(JJII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    not-int p6, p6

    and-int/2addr p5, p6

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordStateStartEvent(JJI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordStateStartEvent(JJIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v0, 0x8015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordStateStopEvent(JJI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordStateStopEvent(JJIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int p5, p5

    and-int/2addr p5, v1

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v0, 0x4015

    iput v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, p5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordWakelockStartEvent(JJLjava/lang/String;I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public blacklist recordWakelockStopEvent(JJLjava/lang/String;I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const-string p5, ""

    :goto_0
    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public blacklist recordWakeupEvent(JJLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object p5, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v0, 0x0

    iput v0, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordWifiConsumedCharge(JJD)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    add-double/2addr v1, p5

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordWifiSignalStrengthChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x4

    const/16 v3, 0x70

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist recordWifiSupplicantStateChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result p5

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryStatsHistory"

    const-string v1, "batterystats backup will start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->makeBackupData()V

    const-string v0, "BatteryStatsHistory"

    const-string v1, "batterystats backup finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->reset()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBatteryState(IIIIIII)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p2

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p3

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p4

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short p2, p5

    iput-short p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short p2, p6

    iput-short p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p7, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setBatteryState(IIIIIIIIIIII)V
    .locals 1

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/os/BatteryStatsHistory;->setBatteryState(IIIIIII)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p8, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p9

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p10, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p11, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p12

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setBatteryState(ZIII)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setChargingState(Z)V

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p2

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p3

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p4, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setBluetoothScanState(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setChargingState(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setHighSpeakerVolumeState(B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setHistoryRecordingEnabled(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setMaxHistoryBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    return-void
.end method

.method public blacklist setPluggedInState(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setProtectBatteryState(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p1, v0, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setSubScreenState(JJII)V
    .locals 3

    monitor-enter p0

    not-int p6, p6

    and-int/2addr p5, p6

    const/high16 p6, 0x10000000

    and-int/2addr p6, p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    move p6, v0

    goto :goto_0

    :cond_0
    move p6, v1

    :goto_0
    const/high16 v2, 0x20000000

    and-int/2addr p5, v2

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    :try_start_0
    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p6, p5, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iget-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte v0, p5, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setTemperatureNCurrent(IIIII)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p2

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p3

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte p2, p4

    iput-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short p2, p5

    iput-short p2, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setWifiApState(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist startNextFragment(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragmentLocked(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist startRecordingHistory(JJZ)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_0

    const/4 p5, 0x7

    goto :goto_0

    :cond_0
    const/4 p5, 0x5

    :goto_0
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move v9, p5

    :try_start_1
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    iget-object p0, v3, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object v3, p0

    :goto_1
    move-object p0, v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public blacklist writeHistory()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    return-void
.end method

.method public blacklist writeHistoryItem(JJ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    sub-long v4, p3, v4

    const-wide/16 v7, 0x14

    sub-long v7, v2, v7

    cmp-long v0, v4, v7

    if-gez v0, :cond_0

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    iput v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;)V

    :cond_0
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist writeToBatteryUsageStatsParcel(Landroid/os/Parcel;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    sub-long/2addr v0, p2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

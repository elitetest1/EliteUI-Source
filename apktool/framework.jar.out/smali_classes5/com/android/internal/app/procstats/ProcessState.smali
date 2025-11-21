.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_PARCEL:Z = false

.field static final blacklist PROCESS_STATE_TO_STATE:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mActive:Z

.field private blacklist mAvgCachedKillPss:J

.field private blacklist mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field blacklist mCommonSources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurCombinedState:I

.field private blacklist mDead:Z

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mLastPssState:I

.field private blacklist mLastPssTime:J

.field private blacklist mMaxCachedKillPss:J

.field private blacklist mMinCachedKillPss:J

.field private blacklist mMultiPackage:Z

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mNumActiveServices:I

.field private blacklist mNumCachedKill:I

.field private blacklist mNumExcessiveCpu:I

.field private blacklist mNumStartedServices:I

.field private final blacklist mPackage:Ljava/lang/String;

.field private final blacklist mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private blacklist mStartTime:J

.field private blacklist mStateBeforeFrozen:I

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTmpTotalTime:J

.field private blacklist mTotalRunningDuration:J

.field private final blacklist mTotalRunningPss:[J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I

.field private final blacklist mVersion:J

.field public blacklist tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public blacklist tmpNumInUse:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x7
        0x8
        0xa
        0x1
        0xb
        0xc
        0xd
        0xe
        0xe
        0xe
        0xe
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget p2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    if-eq p2, v0, :cond_0

    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    :cond_0
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method private blacklist addCachedKill(IJJJ)V
    .locals 3

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v1, p2, v1

    if-gez v1, :cond_1

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    :cond_1
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long p2, p6, p2

    if-lez p2, :cond_2

    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    :cond_2
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double p2, p2

    int-to-double p6, v0

    mul-double/2addr p2, p6

    long-to-double p4, p4

    add-double/2addr p2, p4

    add-int p4, v0, p1

    int-to-double p4, p4

    div-double/2addr p2, p4

    double-to-long p2, p2

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    return-void
.end method

.method private blacklist dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 1

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    invoke-direct {v0, p4, p5, p6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    invoke-virtual {p0, v0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double p4, p4

    long-to-double p6, p9

    div-double/2addr p4, p6

    const-wide/high16 p6, 0x4059000000000000L    # 100.0

    mul-double/2addr p4, p6

    const-wide p6, 0x3f747ae147ae147bL    # 0.005

    cmpl-double p0, p4, p6

    if-gez p0, :cond_0

    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 p6, 0x0

    cmp-long p0, p4, p6

    if-eqz p0, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1, p9, p10, p11}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public static blacklist dumpPssSamples(Ljava/io/PrintWriter;[JI)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x2

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x3

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x7

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x8

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " over "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-wide p1, p1, p2

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public static blacklist dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V
    .locals 3

    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x2

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x3

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x4

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x5

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x6

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x7

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v1, p2, 0x8

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 p2, p2, 0x9

    aget-wide p1, p1, p2

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method private blacklist ensureNotDead()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessState dead: name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " common.name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProcessStats"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulling dead proc: name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " common.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessStats"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;

    const-string v2, " for multi-proc "

    const-string v3, "No existing package "

    const-string v4, "/"

    if-eqz p0, :cond_3

    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz p0, :cond_2

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz p2, :cond_1

    iput-object p2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    return-object p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Didn\'t create per-package process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in pkg "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v1
.end method

.method static blacklist writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v0, 0x3a

    if-ne p5, v0, :cond_2

    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_0

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    iget-object p0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez p0, :cond_1

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    iput-object p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    :cond_1
    iget-object p0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_3

    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public blacklist addPss(JJJZIJLandroid/util/ArrayMap;)V
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p8

    move-object/from16 v2, p11

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v4, v4, p9

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    :goto_0
    if-nez p7, :cond_5

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v1, v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v7, v1, :cond_7

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v8, 0x1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p1

    move-wide/from16 v17, p3

    move-wide/from16 v19, p3

    move-wide/from16 v23, p5

    move-wide/from16 v25, p5

    move-wide/from16 v9, p1

    move-wide/from16 v15, p3

    move-wide/from16 v21, p5

    invoke-virtual/range {v6 .. v26}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-wide/from16 v32, p1

    move-wide/from16 v34, p1

    move-wide/from16 v38, p3

    move-wide/from16 v40, p3

    move-wide/from16 v44, p5

    move-wide/from16 v46, p5

    move-wide/from16 v30, p1

    move-wide/from16 v36, p3

    move-wide/from16 v42, p5

    move-object/from16 v27, v1

    invoke-static/range {v27 .. v47}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_7

    invoke-direct {v0, v2, v1}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/16 v29, 0x1

    move-wide/from16 v32, p1

    move-wide/from16 v34, p1

    move-wide/from16 v38, p3

    move-wide/from16 v40, p3

    move-wide/from16 v44, p5

    move-wide/from16 v46, p5

    move-wide/from16 v30, p1

    move-wide/from16 v36, p3

    move-wide/from16 v42, p5

    move-object/from16 v27, v4

    move/from16 v28, v5

    invoke-virtual/range {v27 .. v47}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/16 v28, 0x0

    move-object/from16 v27, v3

    invoke-static/range {v27 .. v47}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public blacklist aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v8

    const/16 v9, 0xa

    const/4 v10, 0x5

    const-wide/16 v12, 0x0

    if-ge v6, v8, :cond_3

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v8

    rem-int/lit8 v14, v8, 0x10

    move/from16 v16, v6

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v5

    cmp-long v12, v5, v12

    if-lez v12, :cond_2

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v7

    if-gt v14, v10, :cond_0

    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    :cond_0
    if-gt v14, v9, :cond_1

    invoke-virtual {v3, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :goto_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v6, v16, 0x1

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v7, 0x3

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v5, v12

    if-lez v5, :cond_5

    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v16, v7

    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v7

    const/4 v5, 0x0

    :goto_2
    iget-wide v6, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v6, v6, v16

    if-gez v6, :cond_6

    iget-wide v6, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v6, v6, v12

    if-lez v6, :cond_6

    iget-wide v6, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v18, v12

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v6, v7, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    move-wide/from16 v18, v12

    const/4 v6, 0x0

    :goto_3
    iget-wide v11, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v7, v11, v16

    if-gez v7, :cond_7

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v7, v11, v18

    if-lez v7, :cond_7

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v11, v12, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v7, v7, v16

    if-gez v7, :cond_8

    if-nez v5, :cond_8

    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v18

    if-lez v5, :cond_8

    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v12, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v7, v8, v12, v13}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_8
    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v16

    if-gez v5, :cond_9

    if-nez v11, :cond_9

    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v18

    if-lez v5, :cond_9

    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v11, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v7, v8, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_9
    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v7, v16

    if-gez v5, :cond_a

    if-nez v6, :cond_a

    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v5, v18

    if-lez v5, :cond_a

    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_a
    const/4 v5, 0x0

    :goto_5
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v6

    if-ge v5, v6, :cond_f

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v7

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v11

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v6, v7, :cond_b

    iget-wide v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v13, p2, v13

    add-long/2addr v11, v13

    :cond_b
    rem-int/lit8 v6, v7, 0x10

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v13, v8, v6

    add-long/2addr v13, v11

    aput-wide v13, v8, v6

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v13

    cmp-long v8, v13, v18

    if-lez v8, :cond_c

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v7

    goto :goto_6

    :cond_c
    if-gt v6, v10, :cond_d

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto :goto_6

    :cond_d
    if-gt v6, v9, :cond_e

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto :goto_6

    :cond_e
    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    :goto_6
    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    aget-wide v9, v15, v6

    long-to-double v9, v9

    iget-object v15, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v15, v15, v6

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    int-to-double v2, v15

    mul-double/2addr v9, v2

    long-to-double v2, v7

    long-to-double v7, v13

    mul-double/2addr v7, v2

    add-double/2addr v9, v7

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v7, v7, v6

    int-to-long v7, v7

    add-long/2addr v7, v13

    long-to-double v7, v7

    div-double/2addr v9, v7

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    double-to-long v8, v9

    aput-wide v8, v7, v6

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v8, v7, v6

    int-to-long v8, v8

    add-long/2addr v8, v13

    long-to-int v8, v8

    aput v8, v7, v6

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v7, v6

    long-to-double v10, v11

    mul-double/2addr v2, v10

    add-double/2addr v8, v2

    aput-wide v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    const/16 v9, 0xa

    const/4 v10, 0x5

    goto/16 :goto_5

    :cond_f
    :goto_7
    return-void
.end method

.method public blacklist clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 9

    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 p2, 0xa

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    iget-object p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 p1, 0x0

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p0, p1, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iget-boolean p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iget p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iget p0, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput p0, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .locals 5

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    :cond_1
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->commitStateTime(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_a

    const/4 v6, 0x0

    :goto_1
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_9

    const/4 v7, 0x0

    :goto_2
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_8

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v8, v8, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x10

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    iget-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v11, p2

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v13

    add-long/2addr v9, v13

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v9

    cmp-long v13, v9, v2

    if-lez v13, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v13

    move-wide v15, v2

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v2

    move/from16 v17, v5

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v4

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v6

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v11

    move-wide/from16 v20, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v9

    move-wide/from16 v22, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v9

    move-wide/from16 v24, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v9

    move-wide/from16 v26, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v8

    move-wide/from16 v28, v8

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    cmp-long v8, v8, v15

    if-nez v8, :cond_0

    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v8, v22

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v2, v24

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    move-wide/from16 v2, v26

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    move-wide/from16 v2, v28

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v13, v20

    goto/16 :goto_3

    :cond_0
    move-wide/from16 v30, v24

    move-wide/from16 v32, v26

    move-wide/from16 v34, v28

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_1

    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    :cond_1
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v13, v13

    mul-double/2addr v8, v13

    long-to-double v2, v2

    move-wide/from16 v13, v20

    move-wide/from16 v20, v2

    long-to-double v2, v13

    mul-double v20, v20, v2

    add-double v8, v8, v20

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v13

    long-to-double v2, v2

    div-double/2addr v8, v2

    double-to-long v2, v8

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    :cond_2
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v2, v6, v2

    if-gez v2, :cond_3

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    :cond_3
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    long-to-double v4, v11

    mul-double v4, v4, v20

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v13

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v2, v22, v2

    if-lez v2, :cond_4

    move-wide/from16 v8, v22

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    :cond_4
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    move-wide/from16 v4, v30

    cmp-long v2, v4, v2

    if-gez v2, :cond_5

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    :cond_5
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    move-wide/from16 v4, v32

    long-to-double v4, v4

    mul-double v4, v4, v20

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v13

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v4, v34

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    :cond_6
    :goto_3
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v13

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    goto :goto_4

    :cond_7
    move-wide v15, v2

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    :goto_4
    add-int/lit8 v7, v19, 0x1

    move-wide v2, v15

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_2

    :cond_8
    move-wide v15, v2

    move/from16 v17, v5

    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    goto/16 :goto_1

    :cond_9
    move-wide v15, v2

    move/from16 v17, v5

    add-int/lit8 v5, v17, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public blacklist computeProcessTimeLocked([I[I[IJ)J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_1

    move v5, v2

    :goto_2
    array-length v6, p3

    if-ge v5, v6, :cond_0

    aget v6, p1, v3

    aget v7, p2, v4

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x10

    aget v7, p3, v5

    add-int/2addr v6, v7

    invoke-virtual {p0, v6, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method public blacklist decActiveServices(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proc active services underrun: pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProcessStats"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    :cond_1
    return-void
.end method

.method public blacklist decStartedServices(IJLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    :cond_0
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez p1, :cond_1

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 p4, p4, 0x10

    const/16 v0, 0x9

    if-ne p4, v0, :cond_1

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    return-void

    :cond_1
    if-gez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Proc started services underrun: pkg="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProcessStats"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    :cond_2
    return-void
.end method

.method public blacklist dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    new-instance v7, Landroid/util/SparseLongArray;

    invoke-direct {v7}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v8, 0x0

    move v0, v8

    move v1, v0

    :goto_0
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v5

    invoke-static {v5}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v9

    rem-int/lit8 v10, v5, 0x10

    if-ne v10, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v2

    iget v10, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v10, v5, :cond_1

    iget-wide v10, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v10, p6, v10

    add-long/2addr v2, v10

    move v1, v4

    :cond_1
    invoke-virtual {v7, v9}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v7, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v7, v9, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v9, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_5

    iget v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    rem-int/lit8 v1, v0, 0x10

    if-eq v1, v3, :cond_5

    invoke-static {v0}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    iget-wide v2, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v9

    add-long/2addr v2, v9

    invoke-virtual {v7, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_2

    :cond_4
    iget-wide v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p6, v1

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_5
    :goto_2
    new-instance v9, Landroid/util/SparseLongArray;

    invoke-direct {v9}, Landroid/util/SparseLongArray;-><init>()V

    new-instance v10, Landroid/util/SparseLongArray;

    invoke-direct {v10}, Landroid/util/SparseLongArray;-><init>()V

    move v0, v8

    :goto_3
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v5, v6, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v5, v1}, Lcom/android/internal/app/procstats/PssTable;->getRssMeanAndMax(I)[J

    move-result-object v1

    aget-wide v11, v1, v8

    iget-object v5, v6, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v2, v2

    invoke-virtual {v5, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v13

    mul-long/2addr v11, v13

    invoke-virtual {v9, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {v9, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-virtual {v9, v3, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v3, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_4
    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    aget-wide v13, v1, v4

    cmp-long v2, v11, v13

    if-gez v2, :cond_8

    invoke-virtual {v10, v3, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_5

    :cond_8
    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_9

    aget-wide v1, v1, v4

    invoke-virtual {v10, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v0, v8

    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    invoke-virtual {v7, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v11, 0x0

    cmp-long v5, v2, v11

    if-lez v5, :cond_c

    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    div-long/2addr v11, v2

    goto :goto_7

    :cond_c
    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    :goto_7
    invoke-virtual {v9, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget-boolean v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_f

    iget v1, v6, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    move-object/from16 v13, p9

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v4, :cond_e

    goto :goto_9

    :cond_e
    move v5, v8

    goto :goto_a

    :cond_f
    move-object/from16 v13, p9

    :goto_9
    move v5, v4

    :goto_a
    const-wide v1, 0x10900000001L

    move-object/from16 v3, p4

    move-object v4, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    const-wide v1, 0x10500000002L

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_b
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_10

    const-wide v1, 0x20b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v7, v8}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    const-wide v1, 0x10e00000001L

    const-wide v3, 0x10e0000000aL

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAggregatedProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V

    const-wide v1, 0x10300000004L

    invoke-virtual {v7, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v10, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    long-to-int v2, v2

    move v4, v8

    move-object v3, v9

    const-wide v8, 0x10b00000008L

    move-object v5, v10

    move-wide/from16 v16, v11

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide/from16 v18, v14

    const-wide/16 v14, 0x0

    move-object/from16 p2, v7

    move-wide/from16 p3, v16

    move-object v7, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move-wide/from16 v0, v18

    invoke-static/range {v7 .. v17}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v4, 0x1

    move-wide/from16 v11, p3

    move-object/from16 v13, p9

    move-object v9, v3

    move-object v10, v5

    move-object v0, v7

    move-object/from16 v7, p2

    goto :goto_b

    :cond_10
    move-object v7, v0

    move-wide/from16 p3, v11

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-wide v2, 0x20b00000007L

    move-wide/from16 v8, p3

    move-wide/from16 v4, p6

    move-object v1, v7

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V

    move-object v0, v1

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    invoke-static {p1, v3, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_0

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p2, v1

    add-long/2addr v4, v1

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long/2addr p2, v1

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_2
    return-void
.end method

.method public blacklist dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    if-eqz p2, :cond_0

    array-length v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz p4, :cond_1

    array-length v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    if-eqz p6, :cond_2

    array-length v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v5, :cond_11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v7, :cond_f

    if-eqz p2, :cond_3

    aget v12, v1, v9

    goto :goto_6

    :cond_3
    const/4 v12, 0x0

    :goto_6
    if-eqz p4, :cond_4

    aget v13, v2, v10

    goto :goto_7

    :cond_4
    const/4 v13, 0x0

    :goto_7
    if-eqz p6, :cond_5

    aget v14, v3, v11

    goto :goto_8

    :cond_5
    const/4 v14, 0x0

    :goto_8
    if-eqz p2, :cond_6

    const/4 v15, 0x1

    goto :goto_9

    :cond_6
    array-length v15, v1

    :goto_9
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    goto :goto_a

    :cond_7
    array-length v4, v2

    :goto_a
    if-eqz p6, :cond_8

    const/4 v8, 0x1

    goto :goto_b

    :cond_8
    array-length v8, v3

    :goto_b
    const-wide/16 v16, 0x0

    const/4 v3, 0x0

    :goto_c
    move-wide/from16 v1, v16

    if-ge v3, v15, :cond_e

    move-wide/from16 v16, v1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v4, :cond_d

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v8, :cond_c

    if-eqz p2, :cond_9

    const/16 v18, 0x0

    goto :goto_f

    :cond_9
    aget v18, p3, v3

    :goto_f
    if-eqz p4, :cond_a

    const/16 v19, 0x0

    goto :goto_10

    :cond_a
    aget v19, p5, v1

    :goto_10
    if-eqz p6, :cond_b

    const/16 v20, 0x0

    goto :goto_11

    :cond_b
    aget v20, p7, v2

    :goto_11
    add-int v18, v12, v18

    add-int v18, v18, v13

    add-int v18, v18, v19

    mul-int/lit8 v18, v18, 0x10

    add-int v18, v18, v14

    move/from16 v19, v1

    add-int v1, v18, v20

    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v20, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v22

    add-long v16, v16, v22

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v18

    move/from16 v1, v19

    move/from16 v5, v20

    move/from16 v4, v21

    goto :goto_e

    :cond_c
    move/from16 v19, v1

    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v20, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    add-int/lit8 v1, v19, 0x1

    move/from16 v3, v18

    move/from16 v5, v20

    move/from16 v4, v21

    goto :goto_d

    :cond_d
    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v20, v5

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    add-int/lit8 v1, v18, 0x1

    move v3, v1

    move/from16 v5, v20

    move/from16 v4, v21

    goto :goto_c

    :cond_e
    move-object/from16 v3, p0

    move/from16 v20, v5

    move-wide/from16 v4, p8

    const-string v8, "\t"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v20

    goto/16 :goto_5

    :cond_f
    move-object/from16 v3, p0

    move/from16 v20, v5

    move-wide/from16 v4, p8

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v20

    goto/16 :goto_4

    :cond_10
    move-object/from16 v3, p0

    move/from16 v20, v5

    move-wide/from16 v4, p8

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v5, v20

    goto/16 :goto_3

    :cond_11
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v2, 0x10900000001L

    move-object/from16 v4, p4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10500000002L

    move/from16 v4, p5

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v4, :cond_0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_1

    :cond_0
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    const-wide v4, 0x10500000001L

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    const-wide v2, 0x10b00000003L

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    new-instance v9, Landroid/util/SparseLongArray;

    invoke-direct {v9}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v5

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v4}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v6

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v4, v5, :cond_2

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v3, p6, v3

    add-long/2addr v6, v3

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v3, p6, v3

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_4
    const/4 v15, 0x0

    :goto_1
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v2

    const-wide v3, 0x20b00000005L

    const-wide v5, 0x10300000004L

    if-ge v15, v2, :cond_6

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v15}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v8

    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_5

    move-wide/from16 v16, v12

    const/16 p2, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide/from16 v16, v5

    move-wide v6, v3

    const-wide v4, 0x10e00000002L

    move-wide/from16 v18, v6

    const-wide v6, 0x10e00000003L

    move/from16 v20, v2

    const-wide v2, 0x10e00000001L

    move-wide/from16 v10, v16

    move/from16 v14, v20

    const/16 p2, 0x0

    move-wide/from16 v16, v12

    move-wide/from16 v12, v18

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->delete(I)V

    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v1, v14}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v12, v16

    goto :goto_1

    :cond_6
    move-wide v10, v5

    move-wide/from16 v16, v12

    const/16 p2, 0x0

    move/from16 v12, p2

    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_7

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v6, 0x10e00000003L

    invoke-virtual {v9, v12}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    move-wide v4, v3

    const-wide v2, 0x10e00000001L

    move-wide/from16 v18, v4

    const-wide v4, 0x10e00000002L

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    invoke-virtual {v9, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v18

    goto :goto_3

    :cond_7
    move-wide/from16 v2, p6

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_9

    const-wide v6, 0x10b00000006L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v1, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v0, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    move/from16 v2, p2

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    :cond_8
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_9
    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method blacklist dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 14

    move-object/from16 v13, p2

    if-eqz p8, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "myID="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mCommonProcess="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mMultiPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v2, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Common Proc: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " pkg="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Aggregated Association Sources:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "        "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    move-wide/from16 v8, p4

    move-wide/from16 v6, p6

    invoke-static {v6, v7, v8, v9, v5}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v11, 0x1

    move-object v1, p1

    move-object/from16 v10, p3

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/procstats/AssociationState;->dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mDead="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNumActiveServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mNumStartedServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public blacklist dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 7

    const-string v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "pkgpss,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const-string v1, "pkgrun,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p7

    invoke-virtual {p1, p7, p8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, p7, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz p7, :cond_3

    iget p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p7, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p7, "pkgkills,"

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const-string v1, ","

    if-lez v0, :cond_0

    const-string/jumbo v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const-string/jumbo v0, "procrun,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p4

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, p4, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz p4, :cond_4

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p4, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p4, "kills,"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    :goto_0
    array-length v13, v2

    const-string v15, ": "

    const-wide/16 v16, 0x0

    if-ge v9, v13, :cond_8

    const/4 v6, 0x0

    const/4 v13, -0x1

    :goto_1
    array-length v8, v3

    if-ge v6, v8, :cond_7

    const/4 v8, 0x0

    :goto_2
    array-length v7, v4

    if-ge v8, v7, :cond_6

    aget v7, v2, v9

    aget v14, v3, v6

    add-int v18, v7, v14

    mul-int/lit8 v18, v18, 0x10

    aget v19, v4, v8

    add-int v5, v18, v19

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v18, v6

    int-to-byte v6, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v20

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v4, v5, :cond_0

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v4, p6, v4

    add-long v20, v20, v4

    const-string v4, " (running)"

    goto :goto_3

    :cond_0
    const-string v4, ""

    :goto_3
    move-wide/from16 v5, v20

    cmp-long v19, v5, v16

    if-eqz v19, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v19, v8

    const/4 v8, 0x1

    if-le v0, v8, :cond_2

    if-eq v12, v7, :cond_1

    move v0, v7

    goto :goto_4

    :cond_1
    const/4 v0, -0x1

    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v12, v7

    :cond_2
    array-length v0, v3

    if-le v0, v8, :cond_4

    if-eq v13, v14, :cond_3

    move v0, v14

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    :goto_5
    const/16 v7, 0x2f

    invoke-static {v1, v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v13, v14

    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v7, p5, v19

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long/2addr v10, v5

    goto :goto_6

    :cond_5
    move/from16 v19, v8

    :goto_6
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move/from16 v6, v18

    goto :goto_2

    :cond_6
    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    goto :goto_1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    goto/16 :goto_0

    :cond_8
    cmp-long v0, v10, v16

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v0, v2

    const/4 v8, 0x1

    if-le v0, v8, :cond_9

    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_7

    :cond_9
    const/4 v0, -0x1

    :goto_7
    array-length v2, v3

    if-le v2, v8, :cond_a

    const/16 v7, 0x2f

    invoke-static {v1, v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    :cond_a
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    return-void
.end method

.method public blacklist dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_0
    array-length v10, v2

    const-string v11, ": "

    if-ge v7, v10, :cond_8

    const/4 v10, 0x0

    const/4 v12, -0x1

    :goto_1
    array-length v13, v3

    if-ge v10, v13, :cond_7

    const/4 v13, 0x0

    :goto_2
    array-length v14, v4

    if-ge v13, v14, :cond_6

    aget v14, v2, v7

    aget v15, v3, v10

    add-int v16, v14, v15

    mul-int/lit8 v16, v16, 0x10

    aget v17, v4, v13

    const/16 v18, 0x0

    add-int v5, v16, v17

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v5, v5

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/PssTable;->getKey(B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_5

    :cond_0
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v6

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    if-nez v8, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "PSS/USS ("

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " entries):"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v4, v2

    const/4 v2, 0x1

    if-le v4, v2, :cond_3

    if-eq v9, v14, :cond_2

    move v4, v14

    goto :goto_3

    :cond_2
    const/4 v4, -0x1

    :goto_3
    invoke-static {v1, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v9, v14

    :cond_3
    array-length v4, v3

    if-le v4, v2, :cond_5

    if-eq v12, v15, :cond_4

    move v2, v15

    goto :goto_4

    :cond_4
    const/4 v2, -0x1

    :goto_4
    const/16 v4, 0x2f

    invoke-static {v1, v2, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v12, v15

    :cond_5
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v4, p5, v13

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v6, v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_1

    :cond_7
    const/16 v18, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v4, p6

    const/16 v18, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Cur time "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    const-string v2, " (running)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v2, v18

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    move/from16 v3, v18

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    :cond_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v6, v4

    invoke-static {v1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_d
    return-void
.end method

.method public blacklist dumpStateDurationToStatsd(ILcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/StatsEventOutput;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    move v15, v5

    move-wide/from16 v5, v19

    :goto_0
    if-ge v15, v2, :cond_0

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v21

    rem-int/lit8 v21, v21, 0x10

    move/from16 v22, v15

    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v15, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v23

    packed-switch v21, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-long v17, v17, v23

    goto :goto_1

    :pswitch_1
    add-long v19, v19, v23

    goto :goto_1

    :pswitch_2
    add-long v11, v11, v23

    goto :goto_1

    :pswitch_3
    add-long v9, v9, v23

    goto :goto_1

    :pswitch_4
    add-long v5, v5, v23

    goto :goto_1

    :pswitch_5
    add-long v7, v7, v23

    goto :goto_1

    :pswitch_6
    add-long v3, v3, v23

    goto :goto_1

    :pswitch_7
    add-long v13, v13, v23

    :goto_1
    add-int/lit8 v15, v22, 0x1

    move/from16 v2, v16

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v23

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v24

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v13

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    long-to-int v0, v13

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v2, v13, v14}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v13

    long-to-int v2, v13

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v21, v15

    iget-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move/from16 v25, v0

    iget-wide v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v14, v0

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v3, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v4, v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    long-to-int v5, v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-int v6, v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v8, v19

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    long-to-int v7, v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v9, v17

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    long-to-int v8, v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v13, v21

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v22, p1

    move-object/from16 v21, p3

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-virtual/range {v21 .. v35}, Lcom/android/internal/app/procstats/StatsEventOutput;->write(IILjava/lang/String;IIIIIIIIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJ)V
    .locals 12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "* "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " / "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, " / v"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v3, v0, v1

    filled-new-array {v1}, [I

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    return-void
.end method

.method public blacklist getCombinedState()I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    return p0
.end method

.method public blacklist getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object p0
.end method

.method public blacklist getDuration(IJ)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, p1, :cond_0

    iget-wide p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long/2addr p2, p0

    add-long/2addr v0, p2

    :cond_0
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result p0

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getOrCreateSourceState(Lcom/android/internal/app/procstats/AssociationState$SourceKey;)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPssAverage(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssMaximum(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssMinimum(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssRssAverage(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssRssMaximum(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssRssMinimum(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssSampleCount(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssUssAverage(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssUssMaximum(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getPssUssMinimum(I)J
    .locals 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    return-wide v0
.end method

.method public blacklist getTotalRunningPss()[J
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    return-object p0
.end method

.method public blacklist getUid()I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return p0
.end method

.method public blacklist getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public blacklist hasAnyData()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist incActiveServices(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    :cond_0
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    return-void
.end method

.method public blacklist incStartedServices(IJLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    :cond_0
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v0, 0x1

    add-int/2addr p4, v0

    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-ne p4, v0, :cond_1

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    mul-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    :cond_1
    return-void
.end method

.method public blacklist isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return p0
.end method

.method public blacklist isInUse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isMultiPackage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return p0
.end method

.method public blacklist makeActive()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public blacklist makeDead()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    return-void
.end method

.method public blacklist makeInactive()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public blacklist makeStandalone()V
    .locals 0

    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public blacklist onProcessFrozen(JLandroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v1, v0, 0x10

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    return-void
.end method

.method public blacklist onProcessUnfrozen(JLandroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    div-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStateBeforeFrozen:I

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    return-void
.end method

.method public blacklist pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    const-string v1, "Didn\'t find package "

    const-string v2, " / "

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    const-string v3, " vers "

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Didn\'t create per-package process "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in pkg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;IZ)Z
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p3, :cond_1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    :cond_1
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p3, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result p3

    if-nez p3, :cond_2

    return v2

    :cond_2
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {p3, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result p3

    if-nez p3, :cond_3

    return v2

    :cond_3
    move p3, v2

    :goto_1
    const/16 v0, 0xa

    if-ge p3, v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p3, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-lez p3, :cond_6

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    :goto_3
    if-ge v2, p3, :cond_6

    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0, v3, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V

    new-instance v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return v1
.end method

.method public blacklist reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist resetSafely(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method blacklist setCombinedState(IJLandroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, p4, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedStateIdv(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method blacklist setCombinedStateIdv(IJ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v3, v2, :cond_1

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    const/16 v2, 0x9

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/procstats/UidState;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(IJ)V

    :cond_2
    return-void
.end method

.method public blacklist setMultiPackage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return-void
.end method

.method public blacklist setState(IIJLandroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_1

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez p1, :cond_0

    mul-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x9

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget p1, v0, p1

    mul-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    :goto_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJLandroid/util/ArrayMap;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string p0, " (sub)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p2, :cond_1

    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    :cond_1
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move p3, v0

    :goto_2
    if-ge p3, p2, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

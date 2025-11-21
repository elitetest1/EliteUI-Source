.class public final Landroid/app/jank/JankDataProcessor$PendingJankStat;
.super Ljava/lang/Object;
.source "JankDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/JankDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingJankStat"
.end annotation


# static fields
.field private static final blacklist NANOS_PER_MS:I = 0xf4240

.field private static final blacklist sFrameOverrunHistogramBounds:[I


# instance fields
.field private blacklist mActivityName:Ljava/lang/String;

.field private final blacklist mFrameOverrunBuckets:[I

.field private blacklist mJankyFrames:J

.field private blacklist mRefreshRate:I

.field private blacklist mTotalFrames:J

.field private blacklist mUid:I

.field private blacklist mWidgetCategory:Ljava/lang/String;

.field private blacklist mWidgetId:Ljava/lang/String;

.field private blacklist mWidgetState:Ljava/lang/String;

.field public blacklist processedVsyncId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameOverrunBuckets(Landroid/app/jank/JankDataProcessor$PendingJankStat;)[I
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUid(Landroid/app/jank/JankDataProcessor$PendingJankStat;I)V
    .locals 0

    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidgetCategory(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidgetId(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidgetState(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->sFrameOverrunHistogramBounds:[I

    return-void

    :array_0
    .array-data 4
        -0x80000000
        -0xc8
        -0x96
        -0x64
        -0x5a
        -0x50
        -0x46
        -0x3c
        -0x32
        -0x28
        -0x1e
        -0x19
        -0x14
        -0x12
        -0x10
        -0xe
        -0xc
        -0xa
        -0x8
        -0x6
        -0x4
        -0x2
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x14
        0x19
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
        0x96
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    sget-object v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->sFrameOverrunHistogramBounds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    return-void
.end method

.method private blacklist clearHistogram()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist indexForFrameOverrun(I)I
    .locals 4

    const/16 v0, 0xc8

    const/16 v1, 0x1e

    const/16 v2, 0x64

    const/16 v3, 0x14

    if-ge p1, v3, :cond_4

    const/16 p0, -0x14

    if-lt p1, p0, :cond_0

    add-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xc

    return p1

    :cond_0
    const/16 p0, -0x1e

    if-lt p1, p0, :cond_1

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_1
    const/16 p0, -0x64

    if-lt p1, p0, :cond_2

    add-int/2addr p1, v2

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_2
    const/16 p0, -0xc8

    if-lt p1, p0, :cond_3

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x32

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p1, v1, :cond_5

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x20

    return p1

    :cond_5
    if-ge p1, v2, :cond_6

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x22

    return p1

    :cond_6
    if-ge p1, v0, :cond_7

    add-int/lit8 p1, p1, -0x32

    div-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x29

    return p1

    :cond_7
    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_8

    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x2b

    return p1

    :cond_8
    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public blacklist clearStats()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    const-string v0, ""

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->clearHistogram()V

    return-void
.end method

.method public blacklist getActivityName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFrameOverrunBuckets()[I
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    return-object p0
.end method

.method public blacklist getJankyFrames()J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-wide v0
.end method

.method public blacklist getProcessedVsyncId()J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    return-wide v0
.end method

.method public blacklist getRefreshRate()I
    .locals 0

    iget p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    return p0
.end method

.method public blacklist getTotalFrames()J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 0

    iget p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    return p0
.end method

.method public blacklist getWidgetCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getWidgetId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getWidgetState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist recordFrameOverrun(J)V
    .locals 0

    long-to-int p1, p1

    const p2, 0xf4240

    :try_start_0
    div-int/2addr p1, p2

    iget-object p2, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    invoke-direct {p0, p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->indexForFrameOverrun(I)I

    move-result p0

    aget p1, p2, p0

    add-int/lit8 p1, p1, 0x1

    aput p1, p2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public blacklist setActivityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setJankyFrames(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-void
.end method

.method public blacklist setProcessedVsyncId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    return-void
.end method

.method public blacklist setRefreshRate(I)V
    .locals 0

    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    return-void
.end method

.method public blacklist setTotalFrames(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-void
.end method

.method public blacklist setUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    return-void
.end method

.method public blacklist setWidgetCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    return-void
.end method

.method public blacklist setWidgetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setWidgetState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    return-void
.end method

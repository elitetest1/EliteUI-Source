.class public final Landroid/view/ScrollTripleBufferingManager;
.super Ljava/lang/Object;
.source "ScrollTripleBufferingManager.java"


# static fields
.field private static final blacklist ENABLE_STB:Z

.field private static final blacklist FLING_TIME_THRESHOLD_NANOS:J = 0xb2d05e00L

.field private static final blacklist MAX_QUEUEUED_BUFFER_COUNT:I

.field private static final blacklist ONE_MILLIS:J = 0xf4240L

.field static final blacklist STB_FRAME_INTERVAL_FLOOR_120:J = 0x8L

.field private static blacklist sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue; = null

.field private static blacklist sChoreographer:Landroid/view/Choreographer; = null

.field private static blacklist sFlingSTBFlag:Z = false

.field private static blacklist sFlingStartTime:J = 0x0L

.field private static blacklist sIsAnimationUpdateEnabled:Z = false

.field private static blacklist sLastAnimationTime:J

.field private static blacklist sLastFrameIntervalNanos:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "debug.enable.stb"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ScrollTripleBufferingManager;->ENABLE_STB:Z

    const-string v0, "debug.stb.maxqueued"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ScrollTripleBufferingManager;->MAX_QUEUEUED_BUFFER_COUNT:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist adjustAnimationTimeIfNeeded(J)V
    .locals 7

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    sput-wide v0, Landroid/view/ScrollTripleBufferingManager;->sLastFrameIntervalNanos:J

    invoke-static {}, Landroid/view/ScrollTripleBufferingManager;->getTimeSpentPreviouslyWithoutBuffer()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ScrollTripleBufferingManager;->getLastBufferConsumedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v4

    :goto_0
    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    sub-long/2addr p0, v2

    goto :goto_1

    :cond_1
    move-wide p0, v4

    :goto_1
    add-long/2addr v0, p0

    cmp-long p0, v0, v4

    if-lez p0, :cond_2

    sget-wide p0, Landroid/view/ScrollTripleBufferingManager;->sLastFrameIntervalNanos:J

    sub-long/2addr v0, p0

    goto :goto_2

    :cond_2
    move-wide v0, v4

    :goto_2
    cmp-long p0, v0, v4

    if-lez p0, :cond_3

    sget-wide p0, Landroid/view/ScrollTripleBufferingManager;->sLastFrameIntervalNanos:J

    cmp-long v2, p0, v4

    if-lez v2, :cond_3

    div-long/2addr v0, p0

    mul-long/2addr v0, p0

    sget-wide p0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    add-long/2addr p0, v0

    sput-wide p0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    :cond_3
    return-void
.end method

.method static blacklist getLastAnimationTime()J
    .locals 2

    sget-wide v0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    return-wide v0
.end method

.method static blacklist getLastBufferConsumedTime()J
    .locals 2

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->getLastBufferConsumedTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static blacklist getQueuedBufferCount()I
    .locals 1

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->getQueuedBufferCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist getTimeSpentPreviouslyWithoutBuffer()J
    .locals 2

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->getTimeSpentPreviouslyWithoutBuffer()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static blacklist isBlastBufferQueueSet()Z
    .locals 1

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist isFlinging()Z
    .locals 1

    sget-boolean v0, Landroid/view/ScrollTripleBufferingManager;->sFlingSTBFlag:Z

    return v0
.end method

.method static blacklist isFrameBufferCountNotFull()Z
    .locals 2

    invoke-static {}, Landroid/view/ScrollTripleBufferingManager;->getQueuedBufferCount()I

    move-result v0

    if-ltz v0, :cond_0

    sget v1, Landroid/view/ScrollTripleBufferingManager;->MAX_QUEUEUED_BUFFER_COUNT:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isStbNeeded()Z
    .locals 4

    sget-boolean v0, Landroid/view/ScrollTripleBufferingManager;->sFlingSTBFlag:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Landroid/view/ScrollTripleBufferingManager;->sFlingStartTime:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb2d05e00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist setAnimationUpdateEnabled(Z)V
    .locals 0

    sput-boolean p0, Landroid/view/ScrollTripleBufferingManager;->sIsAnimationUpdateEnabled:Z

    return-void
.end method

.method static blacklist setBlastBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .locals 1

    sput-object p0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/BLASTBufferQueue;->setFlingStbFlag(Z)V

    :cond_0
    return-void
.end method

.method static blacklist setChoreographer(Landroid/view/Choreographer;)V
    .locals 0

    sput-object p0, Landroid/view/ScrollTripleBufferingManager;->sChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static blacklist setFlingStbFlag(Z)V
    .locals 4

    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ScrollTripleBufferingManager;->sChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sget-boolean v2, Landroid/view/ScrollTripleBufferingManager;->ENABLE_STB:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-nez p0, :cond_3

    :cond_1
    sput-boolean p0, Landroid/view/ScrollTripleBufferingManager;->sFlingSTBFlag:Z

    sget-object p0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/BLASTBufferQueue;->setFlingStbFlag(Z)V

    :cond_2
    sput-boolean v0, Landroid/view/ScrollTripleBufferingManager;->sIsAnimationUpdateEnabled:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    sput-wide v0, Landroid/view/ScrollTripleBufferingManager;->sFlingStartTime:J

    const/4 p0, 0x0

    sput-object p0, Landroid/view/ScrollTripleBufferingManager;->sBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sput-wide v0, Landroid/view/ScrollTripleBufferingManager;->sLastFrameIntervalNanos:J

    sget-boolean p0, Landroid/view/ScrollTripleBufferingManager;->sFlingSTBFlag:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sput-wide v1, Landroid/view/ScrollTripleBufferingManager;->sFlingStartTime:J

    sput-boolean v0, Landroid/view/ScrollTripleBufferingManager;->sIsAnimationUpdateEnabled:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static blacklist updateAnimationTime(J)J
    .locals 4

    sget-boolean v0, Landroid/view/ScrollTripleBufferingManager;->sIsAnimationUpdateEnabled:Z

    if-eqz v0, :cond_1

    sget-wide v0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    sput-wide p0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    goto :goto_0

    :cond_0
    sget-wide p0, Landroid/view/ScrollTripleBufferingManager;->sLastFrameIntervalNanos:J

    add-long/2addr v0, p0

    sput-wide v0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    :cond_1
    :goto_0
    const-wide/16 p0, 0x8

    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sLastAnimationTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    sput-boolean p0, Landroid/view/ScrollTripleBufferingManager;->sIsAnimationUpdateEnabled:Z

    sget-wide p0, Landroid/view/ScrollTripleBufferingManager;->sLastAnimationTime:J

    return-wide p0
.end method

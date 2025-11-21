.class Lcom/android/internal/jank/FrameTracker$JankInfo;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankInfo"
.end annotation


# instance fields
.field final blacklist frameVsyncId:J

.field blacklist hwuiCallbackFired:Z

.field blacklist isFirstFrame:Z

.field blacklist jankType:I

.field blacklist refreshRate:I

.field blacklist surfaceControlCallbackFired:Z

.field blacklist totalDurationNanos:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    iput-boolean p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    iput p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    iput p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    iput-boolean p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    return-void
.end method

.method static blacklist createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 1

    new-instance v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(J)V

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createFromSurfaceControlCallback(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 3

    new-instance v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(J)V

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist update(JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    :cond_0
    iput-boolean p3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    return-object p0
.end method

.method private blacklist update(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getJankType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getFrameIntervalNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/jank/DisplayRefreshRate;->getRefreshRate(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getActualAppFrameTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    :cond_0
    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "JANK_APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "JANK_COMPOSER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "JANK_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

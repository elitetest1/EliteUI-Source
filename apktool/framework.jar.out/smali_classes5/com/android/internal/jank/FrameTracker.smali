.class public Lcom/android/internal/jank/FrameTracker;
.super Ljava/lang/Object;
.source "FrameTracker.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;
.implements Landroid/view/SurfaceControl$OnJankDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;,
        Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;,
        Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;,
        Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;,
        Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;,
        Lcom/android/internal/jank/FrameTracker$JankInfo;,
        Lcom/android/internal/jank/FrameTracker$Reasons;
    }
.end annotation


# static fields
.field private static final blacklist FLUSH_DELAY_MILLISECOND:I = 0x3c

.field private static final blacklist INVALID_ID:J = -0x1L

.field private static final blacklist MAX_FLUSH_ATTEMPTS:I = 0x3

.field private static final blacklist MAX_LENGTH_EVENT_DESC:I = 0x7f

.field public static final blacklist NANOS_IN_MILLISECOND:I = 0xf4240

.field static final blacklist REASON_CANCEL_NORMAL:I = 0x10

.field static final blacklist REASON_CANCEL_NOT_BEGUN:I = 0x11

.field static final blacklist REASON_CANCEL_SAME_VSYNC:I = 0x12

.field static final blacklist REASON_CANCEL_TIMEOUT:I = 0x13

.field static final blacklist REASON_END_NORMAL:I = 0x0

.field static final blacklist REASON_END_SURFACE_DESTROYED:I = 0x1

.field static final blacklist REASON_END_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FrameTracker"


# instance fields
.field private blacklist mBeginVsyncId:J

.field private blacklist mCancelled:Z

.field private final blacklist mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

.field private final blacklist mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field private final blacklist mDeferMonitoring:Z

.field private final blacklist mDisplayId:I

.field private blacklist mEndVsyncId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

.field private final blacklist mJankInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

.field private blacklist mMetricsFinalized:Z

.field private final blacklist mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

.field private final blacklist mObserver:Landroid/graphics/HardwareRendererObserver;

.field private final blacklist mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

.field private final blacklist mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

.field private final blacklist mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

.field public final blacklist mSurfaceOnly:Z

.field private final blacklist mTraceThresholdFrameTimeMillis:I

.field private final blacklist mTraceThresholdMissedFrames:I

.field private blacklist mTracingStarted:Z

.field private final blacklist mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

.field private blacklist mWaitForFinishTimedOut:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$OVeLaqcN9IKIE5Wad60L5pZL8A0(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->lambda$onFrameMetricsAvailable$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nODy56noZxnLNFzf_DRK46KMZpI(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rVugi0fZvtwemZN6TKJG3SIcOWw(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker;->lambda$onJankDataAvailable$0(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankDataListenerRegistration(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->isSurfaceOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    iput-object p4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iput-object p7, p0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->shouldDeferMonitor()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    const/4 p4, 0x0

    if-eqz v1, :cond_0

    move-object p2, p4

    :cond_0
    iput-object p2, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    if-eqz v1, :cond_1

    move-object p6, p4

    :cond_1
    iput-object p6, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    if-eqz v1, :cond_2

    move-object p3, p4

    :cond_2
    iput-object p3, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/internal/jank/Flags;->ignoreHwuiIsFirstFrame()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {p6}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object p5

    invoke-direct {p2, p0, p5, v2, v0}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    goto :goto_1

    :cond_4
    :goto_0
    move-object p2, p4

    :goto_1
    iput-object p2, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    iput p8, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    iput p9, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    iput-object p10, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    return-void

    :cond_5
    invoke-virtual {p3}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_6
    new-instance p1, Lcom/android/internal/jank/FrameTracker$1;

    invoke-direct {p1, p0}, Lcom/android/internal/jank/FrameTracker$1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-virtual {p3, p1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    return-void
.end method

.method private blacklist beginInternal()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    const-string v0, "FT#beginVsync"

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "FT#layerId"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->markCujUiThread()V

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    return p0

    :cond_0
    iget-boolean p0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    return-object p0
.end method

.method private blacklist finish()V
    .locals 1

    const-string v0, "FrameTracker#finish"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finishTraced()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private blacklist finishTraced()V
    .locals 27

    move-object/from16 v0, p0

    const-string v1, "/"

    iget-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-nez v2, :cond_10

    iget-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "FT#finish"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v7, v15, :cond_d

    iget-object v15, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/jank/FrameTracker$JankInfo;

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v2, :cond_1

    iget-boolean v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/jank/Flags;->ignoreHwuiIsFirstFrame()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v24, v1

    move-wide v1, v5

    move v5, v7

    move-object v6, v3

    goto/16 :goto_8

    :cond_1
    move-wide/from16 v17, v5

    iget-wide v4, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    move-object v6, v3

    iget-wide v2, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    move-object/from16 v24, v1

    move-wide/from16 v1, v17

    goto/16 :goto_9

    :cond_2
    iget-boolean v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    const-string v3, ", CUJ="

    const-string v4, "FrameTracker"

    if-eqz v2, :cond_9

    add-int/lit8 v8, v8, 0x1

    iget v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Missed App frame:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v5, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Missed SF frame:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    :cond_4
    if-eqz v2, :cond_5

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    iget v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eqz v2, :cond_7

    iget v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eq v2, v14, :cond_7

    if-nez v14, :cond_6

    iget v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    move v14, v2

    goto :goto_3

    :cond_6
    move/from16 v14, v16

    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    if-eqz v2, :cond_8

    iget-boolean v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-nez v2, :cond_8

    const-string v2, "FT#MissedHWUICallback"

    move v5, v7

    move/from16 v20, v8

    iget-wide v7, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v0, v2, v7, v8}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Missing HWUI jank callback for vsyncId: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move v5, v7

    move/from16 v20, v8

    :goto_4
    move/from16 v8, v20

    goto :goto_5

    :cond_9
    move v5, v7

    :goto_5
    iget-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v2, :cond_b

    iget-boolean v2, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v2, :cond_b

    move v2, v8

    iget-wide v7, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    move-object/from16 v24, v1

    move/from16 v20, v2

    move-wide/from16 v1, v17

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-boolean v7, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-nez v7, :cond_a

    const-string v7, "FT#MissedSFCallback"

    move-wide/from16 v17, v1

    iget-wide v1, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v0, v7, v1, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing SF jank callback for vsyncId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    move-wide/from16 v17, v1

    :goto_6
    move-wide/from16 v1, v17

    goto :goto_7

    :cond_b
    move-object/from16 v24, v1

    move/from16 v20, v8

    move-wide/from16 v1, v17

    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v3, :cond_c

    iget-wide v3, v15, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_c
    :goto_7
    move/from16 v8, v20

    :goto_8
    add-int/lit8 v7, v5, 0x1

    move-object v3, v6

    move-wide v5, v1

    move/from16 v2, v16

    move-object/from16 v1, v24

    goto/16 :goto_0

    :cond_d
    move-object/from16 v24, v1

    move-wide v1, v5

    move-object v6, v3

    :goto_9
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#missedFrames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v12, 0x1000

    invoke-static {v12, v13, v4, v9}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#missedAppFrames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#missedSfFrames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v13, v4, v11}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#totalFrames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v13, v4, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#maxFrameTimeMillis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v25, 0xf4240

    move v5, v14

    div-long v14, v1, v25

    long-to-int v7, v14

    invoke-static {v12, v13, v4, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#maxSuccessiveMissedFrames"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v13, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-eqz v4, :cond_e

    long-to-int v4, v1

    invoke-direct {v0, v9, v4}, Lcom/android/internal/jank/FrameTracker;->shouldTriggerPerfetto(II)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    iget-object v7, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-interface {v4, v7}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->triggerPerfetto(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    :cond_e
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v4}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->logToStatsd()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v7, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget v4, v0, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    iget-object v0, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getStatsdInteractionType()I

    move-result v0

    int-to-long v12, v8

    int-to-long v14, v9

    move/from16 p0, v0

    move-wide/from16 v17, v1

    int-to-long v0, v11

    move-wide/from16 v19, v0

    int-to-long v0, v10

    move-wide/from16 v21, v0

    int-to-long v0, v3

    move v2, v8

    const/16 v8, 0x131

    move/from16 v16, v9

    move v9, v4

    move/from16 v4, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-wide/from16 v20, v21

    move-wide/from16 v22, v0

    move v0, v10

    move v1, v11

    move/from16 v11, p0

    move v10, v5

    invoke-virtual/range {v7 .. v23}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->write(IIIIJJJJJJ)V

    move-wide/from16 v17, v16

    goto :goto_a

    :cond_f
    move-wide/from16 v17, v1

    move v2, v8

    move v4, v9

    move v0, v10

    move v1, v11

    :goto_a
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUJ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v17, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1, v0}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_b
    return-void
.end method

.method private blacklist hasReceivedCallbacksAfterEnd()Z
    .locals 8

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-wide v3, v0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_5

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/jank/FrameTracker$JankInfo;

    iget-wide v4, v3, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v6, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/internal/jank/FrameTracker;->callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private blacklist isInRange(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$onFrameMetricsAvailable$1()V
    .locals 7

    :try_start_0
    const-string v0, "FrameTracker#onFrameMetricsAvailable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-virtual {v4}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v4

    aget-wide v3, v4, v3

    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->-$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v6, v3

    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private synthetic blacklist lambda$onJankDataAvailable$0(Ljava/util/List;)V
    .locals 4

    :try_start_0
    const-string v0, "FrameTracker#onJankDataAvailable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$JankData;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lcom/android/internal/jank/FrameTracker$JankInfo;->-$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromSurfaceControlCallback(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private blacklist markCujUiThread()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#UIThread"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist markEvent(Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s#%s"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x7f

    if-gt p2, p3, :cond_0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The length of the trace event description <%s> exceeds %d"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private blacklist notifyCujEvent(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->onCujEvents(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist processJankInfos()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->hasReceivedCallbacksAfterEnd()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method private blacklist shouldTriggerPerfetto(II)Z
    .locals 4

    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-lt p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    if-eq p0, v3, :cond_1

    const v0, 0xf4240

    mul-int/2addr p0, v0

    if-lt p2, p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez p1, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public blacklist begin()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    :cond_1
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "FT#deferMonitoring"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    :cond_3
    return-void
.end method

.method public blacklist cancel(I)Z
    .locals 7

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    const-string v0, "FT#cancel"

    int-to-long v3, p1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v3

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public blacklist end(I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimationHandler;->getLastAnimationFrameVsyncId(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    iget-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result p0

    return p0

    :cond_1
    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FT#end"

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    const-string v1, "FT#endVsync"

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->removeAfter(J)V

    :cond_3
    new-instance v1, Lcom/android/internal/jank/FrameTracker$2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/jank/FrameTracker$2;-><init>(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onFrameMetricsAvailable(I)V
    .locals 0

    new-instance p1, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist onJankDataAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postCallback(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist postTraceStartMarker(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {p0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->-$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist removeObservers()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    :cond_1
    return-void
.end method

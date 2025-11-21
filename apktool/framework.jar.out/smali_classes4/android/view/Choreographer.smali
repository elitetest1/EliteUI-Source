.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$BufferStuffingState;,
        Landroid/view/Choreographer$FrameData;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$FrameCallback;,
        Landroid/view/Choreographer$FrameTimeline;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$VsyncCallback;
    }
.end annotation


# static fields
.field public static final blacklist CALLBACK_ANIMATION:I = 0x1

.field public static final greylist-max-o CALLBACK_COMMIT:I = 0x4

.field public static final greylist-max-o CALLBACK_INPUT:I = 0x0

.field public static final blacklist CALLBACK_INSETS_ANIMATION:I = 0x2

.field private static final greylist-max-o CALLBACK_LAST:I = 0x4

.field private static final greylist-max-o CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final greylist-max-o CALLBACK_TRAVERSAL:I = 0x3

.field private static final greylist-max-o DEBUG_FRAMES:Z = false

.field private static final greylist-max-o DEBUG_JANK:Z = false

.field private static final greylist-max-o DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final blacklist DEFAULT_THRESHOLD_BG_DELAY:J = 0xfa0L

.field private static final greylist-max-o FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final blacklist IDS_TAG:Ljava/lang/String; = "IDS_TAG"

.field private static final greylist-max-o MSG_DO_FRAME:I = 0x0

.field private static final greylist-max-o MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final greylist-max-o MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final blacklist MSG_UPDATE_ACTIVITY_STATE:I = 0x3

.field private static final greylist-max-o SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Choreographer"

.field private static final greylist-max-o USE_FRAME_TIME:Z

.field private static final greylist-max-p USE_VSYNC:Z

.field private static final blacklist VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static volatile greylist-max-o mMainInstance:Landroid/view/Choreographer; = null

.field private static volatile greylist-max-o sFrameDelay:J = 0xaL

.field private static final greylist-max-o sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist DO_AID:I

.field public final blacklist DO_DOT:I

.field public final blacklist DO_IDS:I

.field public final blacklist DO_STB:I

.field private final blacklist ENABLE_STB_ANIMATION:Z

.field private blacklist mBgWaitingDelaySetting:Z

.field private final blacklist mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

.field private greylist-max-o mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final greylist mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private greylist-max-o mCallbacksRunning:Z

.field private blacklist mDebugCallStackCnt:I

.field private blacklist mDebugCallbackConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDebugDispatchThresholdMs:I

.field private greylist-max-o mDebugPrintNextFrameTimeDelta:Z

.field private final greylist mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private blacklist mEnabledDebugCallback:Z

.field private greylist-max-o mFPSDivisor:I

.field private final blacklist mFrameData:Landroid/view/Choreographer$FrameData;

.field blacklist mFrameInfo:Landroid/graphics/FrameInfo;

.field private greylist-max-r mFrameIntervalNanos:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mFrameScheduled:Z

.field private blacklist mFramesSinceSTB:J

.field private final greylist-max-o mHandler:Landroid/view/Choreographer$FrameHandler;

.field private volatile blacklist mInDoFrameCallback:Z

.field private blacklist mIsFg:Z

.field private blacklist mIsFirstBBA:Z

.field private blacklist mIsVisible:Z

.field private blacklist mLastFrameIntervalNanos:J

.field private greylist mLastFrameTimeNanos:J

.field private blacklist mLastNoOffsetFrameTimeNanos:J

.field private final blacklist mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private final greylist-max-p mLock:Ljava/lang/Object;

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private blacklist mSTBCount:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 0

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSTBCount(Landroid/view/Choreographer;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer;->mSTBCount:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFramesSinceSTB(Landroid/view/Choreographer;J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/Choreographer;->mFramesSinceSTB:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSTBCount(Landroid/view/Choreographer;J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/Choreographer;->mSTBCount:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmMainInstance(Landroid/view/Choreographer;)V
    .locals 0

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    new-instance v0, Landroid/view/Choreographer$4;

    invoke-direct {v0}, Landroid/view/Choreographer$4;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-string/jumbo v0, "traversal"

    const-string v1, "commit"

    const-string v2, "input"

    const-string v3, "animation"

    const-string v4, "insets_animation"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Looper;I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Looper;IJ)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput v6, p0, Landroid/view/Choreographer;->DO_AID:I

    const/4 v7, 0x1

    iput v7, p0, Landroid/view/Choreographer;->DO_DOT:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/Choreographer;->DO_IDS:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/view/Choreographer;->DO_STB:I

    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/view/Choreographer;->mFramesSinceSTB:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/view/Choreographer;->mSTBCount:J

    const-string v0, "debug.stb.animation"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Choreographer;->ENABLE_STB_ANIMATION:Z

    iput-boolean v7, p0, Landroid/view/Choreographer;->mIsFg:Z

    iput-boolean v7, p0, Landroid/view/Choreographer;->mIsFirstBBA:Z

    iput-boolean v7, p0, Landroid/view/Choreographer;->mIsVisible:Z

    iput-boolean v6, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    iput v7, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    new-instance v0, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    new-instance v0, Landroid/view/Choreographer$FrameData;

    invoke-direct {v0}, Landroid/view/Choreographer$FrameData;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iput-boolean v6, p0, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    new-instance v0, Landroid/view/Choreographer$BufferStuffingState;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Landroid/view/Choreographer$BufferStuffingState;-><init>(Landroid/view/Choreographer-IA;)V

    iput-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    new-instance v0, Landroid/graphics/FrameInfo;

    invoke-direct {v0}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    iput-boolean v6, p0, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    iput-object v10, p0, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    const/4 v11, 0x5

    iput v11, p0, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    const/16 v0, 0x14

    iput v0, p0, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    new-instance v0, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v0, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    sget-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;IJ)V

    goto :goto_0

    :cond_0
    move-object v0, v10

    :goto_0
    iput-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    iput-wide v8, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const v0, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v2

    div-float/2addr v0, v2

    float-to-long v2, v0

    iput-wide v2, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    new-array v0, v11, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    :goto_1
    const/4 v0, 0x4

    if-gt v6, v0, :cond_1

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v2, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v2, p0, v10}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer-IA;)V

    aput-object v2, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "debug.hwui.fps_divisor"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private greylist-max-o dispose()V
    .locals 0

    iget-object p0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {p0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    return-void
.end method

.method public static greylist getFrameDelay()J
    .locals 2

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static whitelist getInstance()Landroid/view/Choreographer;
    .locals 2

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    sget-object v1, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/Choreographer;->mIsFg:Z

    :cond_0
    return-object v0
.end method

.method static blacklist getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The current thread must have a looper!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o getMainThreadInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static greylist-max-o getRefreshRate()F
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method public static greylist getSfInstance()Landroid/view/Choreographer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private greylist-max-o isRunningOnLooperThreadLocked()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v0, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer-IA;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    iput-object p5, v0, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 11

    const-string v0, "BBA2 receive callback when in bg : "

    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/view/Choreographer;->mIsFg:Z

    iget-boolean v3, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    if-eqz p1, :cond_0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "Choreographer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v4, p0, Landroid/view/Choreographer;->mIsFg:Z

    iput-boolean v4, p0, Landroid/view/Choreographer;->mIsFirstBBA:Z

    iput-boolean v4, p0, Landroid/view/Choreographer;->mIsVisible:Z

    iget-boolean v0, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(I)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v6, v2, p4

    iget-boolean v0, p0, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v0, p1

    iget v0, p0, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    const-string v8, " "

    invoke-static {v0, v8}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v5 .. v10}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v0, p1

    const/4 v10, 0x0

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v5 .. v10}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    cmp-long p3, v6, v2

    if-gtz p3, :cond_5

    invoke-direct {p0, v2, v3}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_1

    :cond_5
    iget-object p3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v0, 0x2

    invoke-virtual {p3, v0, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {p0, p2, v6, v7}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private greylist-max-o recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    return-void
.end method

.method public static greylist-max-o releaseInstance()V
    .locals 2

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Choreographer;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    invoke-direct {v1}, Landroid/view/Choreographer;->dispose()V

    return-void
.end method

.method private greylist-max-o removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object p1, v1, p1

    invoke-virtual {p1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private greylist-max-o scheduleFrameLocked(J)V
    .locals 5

    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {p0, p1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private greylist-max-r scheduleVsyncLocked()V
    .locals 3

    const-wide/16 v0, 0x8

    :try_start_0
    const-string v2, "Choreographer#scheduleVsyncLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {p0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public static blacklist setFrameDelay(J)V
    .locals 0

    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    return-void
.end method

.method public static greylist-max-o subtractFrameDelay(J)J
    .locals 3

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist traceMessage(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method greylist-max-o doCallbacks(IJ)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-static {v2}, Landroid/view/Choreographer$FrameData;->-$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v2

    iget-object v4, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v7, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v7, v7, v0

    const-wide/32 v8, 0xf4240

    div-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v7

    if-nez v7, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    const/4 v8, 0x4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x8

    if-ne v0, v8, :cond_1

    sub-long v2, v5, v2

    const-string v8, "jitterNanos"

    long-to-int v13, v2

    invoke-static {v11, v12, v8, v13}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    cmp-long v8, p2, v9

    if-lez v8, :cond_1

    const-wide/16 v13, 0x2

    mul-long v13, v13, p2

    cmp-long v8, v2, v13

    if-ltz v8, :cond_1

    rem-long v13, v2, p2

    add-long v13, v13, p2

    sub-long v14, v5, v13

    iput-wide v14, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    iget-object v13, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v5, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-wide/from16 v17, v2

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v11, v12, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v3, v7

    :goto_0
    if-eqz v3, :cond_4

    iget-boolean v4, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v9

    :goto_1
    iget-object v6, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v3, v6}, Landroid/view/Choreographer$CallbackRecord;->run(Landroid/view/Choreographer$FrameData;)V

    iget-boolean v6, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v6, :cond_3

    iget-object v6, v1, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    if-eqz v6, :cond_3

    iget-object v6, v3, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v4

    iget v4, v1, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    int-to-long v4, v4

    cmp-long v4, v13, v4

    if-ltz v4, :cond_3

    iget-object v4, v1, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RunCallback: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", latencyMillis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-wide v9, v3, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    sub-long v8, v15, v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", dur="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-object v3, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iput-boolean v2, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :goto_2
    iget-object v0, v7, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v7}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    if-nez v0, :cond_5

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_5
    move-object v7, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iput-boolean v2, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :goto_3
    iget-object v2, v7, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v7}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    if-eqz v2, :cond_6

    move-object v7, v2

    goto :goto_3

    :cond_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method blacklist doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 30

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-object/from16 v0, p4

    const-string v2, "Skipped "

    const-string v5, "Choreographer#doFrame "

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getIdsController()Landroid/app/IdsController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/IdsController;->closeIdsWindow()V

    iget-wide v6, v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    invoke-static {}, Landroid/view/flags/Flags;->bufferStuffingRecovery()Z

    move-result v8

    const/4 v15, 0x2

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-virtual {v1, v3, v4, v0}, Landroid/view/Choreographer;->updateBufferStuffingState(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->ordinal()I

    move-result v8

    if-eq v8, v9, :cond_1

    if-eq v8, v15, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    return-void

    :cond_1
    sub-long v10, v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v10, v3

    :goto_1
    const-wide/16 v12, 0x8

    :try_start_0
    iget-object v14, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v14, v10, v11, v0}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v10

    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    if-eqz v11, :cond_3

    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide v13, v12

    const/4 v8, 0x0

    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_3
    :goto_2
    :try_start_2
    iget-object v8, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    :try_start_3
    iget-boolean v9, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    if-nez v9, :cond_4

    :try_start_4
    const-string v0, "Frame not scheduled"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    move-wide v13, v12

    :goto_3
    const/4 v8, 0x0

    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_e

    :cond_4
    :try_start_5
    iput-wide v3, v1, Landroid/view/Choreographer;->mLastNoOffsetFrameTimeNanos:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    move-wide v13, v12

    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    sub-long v20, v11, v3

    cmp-long v9, v20, v6

    const-wide/16 v22, 0x0

    if-ltz v9, :cond_8

    cmp-long v9, v6, v22

    if-nez v9, :cond_5

    :try_start_7
    const-string v2, "Choreographer"

    const-string v9, "Vsync data empty due to timeout"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-wide/from16 v24, v6

    move-wide v9, v11

    move-wide/from16 v26, v13

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_5
    :try_start_8
    rem-long v9, v20, v6

    sub-long v9, v11, v9

    move-wide/from16 v24, v6

    div-long v5, v20, v24

    sget v7, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-wide/from16 v26, v13

    int-to-long v13, v7

    cmp-long v7, v5, v13

    if-ltz v7, :cond_6

    :try_start_9
    const-string v7, "Choreographer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    iget-object v2, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v2, v2, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-eqz v2, :cond_7

    sub-long v9, v9, v24

    :cond_7
    move-wide/from16 v17, v9

    iget-object v2, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v5, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object/from16 v16, v2

    move-object/from16 v19, v5

    invoke-virtual/range {v16 .. v21}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-wide/from16 v6, v17

    const/16 v16, 0x1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v18, v8

    move-wide/from16 v13, v26

    goto :goto_3

    :catchall_4
    move-exception v0

    move-wide/from16 v26, v13

    :goto_6
    move-object/from16 v18, v8

    goto :goto_3

    :cond_8
    move-wide/from16 v24, v6

    move-wide/from16 v26, v13

    move-wide v6, v3

    const/16 v16, 0x0

    :goto_7
    move-object/from16 v17, v10

    :try_start_a
    iget-wide v9, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    cmp-long v2, v6, v9

    if-gez v2, :cond_b

    :try_start_b
    const-string v0, "Frame time goes backward"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    :cond_9
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    if-eqz v16, :cond_a

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    :cond_a
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5
    move-exception v0

    move-object/from16 v18, v8

    move/from16 v8, v16

    move-wide/from16 v13, v26

    goto/16 :goto_4

    :cond_b
    :try_start_c
    iget v2, v1, Landroid/view/Choreographer;->mFPSDivisor:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    const/4 v13, 0x1

    if-le v2, v13, :cond_f

    sub-long v9, v6, v9

    int-to-long v13, v2

    mul-long v13, v13, v24

    cmp-long v2, v9, v13

    if-gez v2, :cond_e

    cmp-long v2, v9, v22

    if-lez v2, :cond_e

    :try_start_d
    const-string v0, "Frame skipped due to FPSDivisor"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v0, :cond_c

    :try_start_e
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    const/4 v13, 0x1

    add-int/2addr v2, v13

    iput v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_c
    :try_start_f
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    if-eqz v16, :cond_d

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    :cond_d
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_6
    move-exception v0

    const/4 v5, 0x0

    move v15, v5

    move-object/from16 v18, v8

    move/from16 v8, v16

    move-wide/from16 v13, v26

    goto/16 :goto_e

    :cond_e
    const/4 v5, 0x0

    const/4 v13, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    :try_start_10
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v9

    iget-wide v9, v9, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-wide/from16 v18, v6

    :try_start_11
    iget-wide v5, v14, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move v7, v13

    iget-wide v13, v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move-wide/from16 v28, v18

    move-object/from16 v18, v8

    move-wide v7, v9

    move-wide v9, v5

    move-wide/from16 v5, v28

    move-wide/from16 v28, v24

    const/4 v15, 0x0

    :try_start_12
    invoke-virtual/range {v2 .. v14}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    iput-boolean v15, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    iput-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    move-wide/from16 v2, v28

    iput-wide v2, v1, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    iget-object v4, v1, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v4, v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData;)V

    monitor-exit v18
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-eqz v16, :cond_10

    :try_start_13
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Choreographer#doFrame - resynced to %d in %.1fms"

    invoke-static/range {v17 .. v17}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v7

    sub-long/2addr v7, v11

    long-to-float v7, v7

    const v8, 0x358637bd    # 1.0E-6f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-wide/from16 v13, v26

    :try_start_14
    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_9

    :catchall_7
    move-exception v0

    move-wide/from16 v13, v26

    goto :goto_a

    :cond_10
    move-wide/from16 v13, v26

    :goto_9
    const-wide/32 v7, 0xf4240

    div-long v6, v5, v7

    invoke-static/range {v17 .. v17}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmExpectedPresentationTimeNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(JJ)V

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    invoke-virtual {v1, v15, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsFg:Z

    if-nez v0, :cond_11

    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsVisible:Z

    if-eqz v0, :cond_12

    :cond_11
    const/4 v7, 0x1

    invoke-virtual {v1, v7, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    :cond_12
    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsFg:Z

    if-nez v0, :cond_13

    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsVisible:Z

    if-nez v0, :cond_13

    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsFirstBBA:Z

    if-eqz v0, :cond_13

    iput-boolean v15, v1, Landroid/view/Choreographer;->mIsFirstBBA:Z

    const-string v0, "Choreographer"

    const-string v4, "CoreRune.SYSPERF_ACTIVE_APP_BBA_ENABLE : stop animation in background states"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    if-eqz v16, :cond_14

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    :cond_14
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_8
    move-exception v0

    :goto_a
    move/from16 v8, v16

    goto :goto_f

    :catchall_9
    move-exception v0

    goto :goto_b

    :catchall_a
    move-exception v0

    move v15, v5

    move-object/from16 v18, v8

    :goto_b
    move-wide/from16 v13, v26

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object/from16 v18, v8

    move-wide/from16 v13, v26

    const/4 v15, 0x0

    :goto_c
    move/from16 v8, v16

    goto :goto_e

    :catchall_c
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_d

    :catchall_d
    move-exception v0

    move-object/from16 v18, v8

    move-wide v13, v12

    :goto_d
    const/4 v15, 0x0

    move v8, v15

    :goto_e
    :try_start_15
    monitor-exit v18
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :catchall_e
    move-exception v0

    goto :goto_f

    :catchall_f
    move-exception v0

    goto :goto_e

    :catchall_10
    move-exception v0

    move-wide v13, v12

    const/4 v15, 0x0

    move v8, v15

    :goto_f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    if-eqz v8, :cond_15

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    :cond_15
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method greylist-max-o doScheduleCallback(I)V
    .locals 4

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object p1, v3, p1

    invoke-virtual {p1, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method greylist-max-o doScheduleVsync()V
    .locals 2

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Choreographer:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mFrameScheduled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mLastFrameTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getExpectedPresentationTimeMillis()J
    .locals 4

    invoke-virtual {p0}, Landroid/view/Choreographer;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getExpectedPresentationTimeNanos()J
    .locals 2

    iget-object p0, p0, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {p0}, Landroid/view/Choreographer$FrameData;->getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Choreographer$FrameTimeline;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFrameDeadline()J
    .locals 2

    iget-object p0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object p0

    iget-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-wide v0
.end method

.method public greylist-max-o getFrameIntervalNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist getFrameTime()J
    .locals 4

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist getFrameTimeNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-o getLastFrameTimeNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getLatestExpectedPresentTimeNanos()J
    .locals 2

    iget-object p0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object p0

    iget-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    return-wide v0
.end method

.method public blacklist getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public blacklist getMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist getSTBCount()J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer;->mSTBCount:J

    return-wide v0
.end method

.method public blacklist getVsyncId()J
    .locals 5

    iget-boolean v0, p0, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v3}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v3, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v4

    if-ne p0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "unsync-vsync-id=%d isSfChoreo=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object p0

    iget-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    return-wide v0
.end method

.method greylist invalidate()V
    .locals 0

    invoke-direct {p0}, Landroid/view/Choreographer;->dispose()V

    return-void
.end method

.method blacklist isTheLooperSame(Landroid/os/Looper;)Z
    .locals 0

    iget-object p0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onWaitForBufferRelease(J)V
    .locals 4

    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-object p0, p0, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public greylist postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public greylist postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callbackType is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "action must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public whitelist postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .locals 6

    if-eqz p1, :cond_0

    sget-object v3, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callbackType is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist removeVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist resetSTBCount()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/Choreographer;->mSTBCount:J

    return-void
.end method

.method public blacklist scheduleVsyncSS(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {p0, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->onVsyncSS(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist setActivityState(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroid/view/Choreographer;->mIsFg:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    iput-object p2, p0, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    iput p3, p0, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    iput p4, p0, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    return-void
.end method

.method greylist-max-o setFPSDivisor(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    return-void
.end method

.method public blacklist setIsFg(Z)V
    .locals 8

    const-string/jumbo v0, "setIsFg isFg = "

    const-string/jumbo v1, "setIsFg isFg = "

    iget-boolean v2, p0, Landroid/view/Choreographer;->mIsFg:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimationHandler;->getMaxAnimationCallbackDuration()J

    move-result-wide v2

    const-wide/16 v4, 0xfa0

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/view/Choreographer$FrameHandler;->removeMessages(I)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    iput-boolean v7, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1}, Landroid/view/Choreographer$FrameHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v6, v1, Landroid/os/Message;->what:I

    xor-int/lit8 v5, p1, 0x1

    iput v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {p0, v1, v5, v6}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    const-string p0, "BBA2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; delayValue "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Landroid/view/Choreographer;->mIsFg:Z

    iput-boolean v7, p0, Landroid/view/Choreographer;->mIsVisible:Z

    iput-boolean v7, p0, Landroid/view/Choreographer;->mIsFirstBBA:Z

    iput-boolean v5, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    const-string p0, "BBA2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setViewVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/Choreographer;->mIsVisible:Z

    return-void
.end method

.method blacklist updateBufferStuffingState(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
    .locals 9

    iget-object p3, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean p3, p3, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    const-string v0, "Buffer stuffing recovery"

    const/4 v1, 0x0

    const-wide/16 v2, 0x8

    if-nez p3, :cond_2

    iget-object p1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-object p1, p1, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Thread "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", recover frame"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, v0, p0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    sget-object p0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->DELAY_FRAME:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p0

    :cond_2
    iget-object p3, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget p3, p3, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    add-int/lit8 p3, p3, 0x2

    iget-wide v4, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    iget-wide v6, p0, Landroid/view/Choreographer;->mLastNoOffsetFrameTimeNanos:J

    sub-long/2addr p1, v6

    div-long v6, p1, v4

    :cond_3
    int-to-long p1, p3

    cmp-long p1, v6, p1

    if-lez p1, :cond_5

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_4
    iget-object p0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    invoke-virtual {p0}, Landroid/view/Choreographer$BufferStuffingState;->reset()V

    sget-object p0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p0

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Negative offset added to animation"

    invoke-static {v2, v3, v0, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object p0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->OFFSET:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p0
.end method

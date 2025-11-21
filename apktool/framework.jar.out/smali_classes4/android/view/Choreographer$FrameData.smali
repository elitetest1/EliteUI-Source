.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# instance fields
.field private blacklist mFrameTimeNanos:J

.field private blacklist mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private blacklist mInCallback:Z

.field private blacklist mPreferredFrameTimelineIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    return-void
.end method

.method private blacklist allocateFrameTimelines(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-array p1, p1, [Landroid/view/Choreographer$FrameTimeline;

    iput-object p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    new-instance v1, Landroid/view/Choreographer$FrameTimeline;

    invoke-direct {v1}, Landroid/view/Choreographer$FrameTimeline;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist checkInCallback()V
    .locals 1

    iget-boolean p0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FrameData is not valid outside of the vsync callback"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getFrameTimeNanos()J
    .locals 2

    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .locals 0

    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    iget-object p0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object p0
.end method

.method public whitelist getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .locals 1

    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget p0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method blacklist setInCallback(Z)V
    .locals 3

    iput-boolean p1, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/Choreographer$FrameTimeline;->setInCallback(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;
    .locals 8

    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    iget p1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput p1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    iget-object p2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object p2, p2, p1

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v1, v0, p1

    iget-wide v2, p2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v4, p2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iget-wide v6, p2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    invoke-virtual/range {v1 .. v7}, Landroid/view/Choreographer$FrameTimeline;->update(JJJ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object p0, p2, p0

    return-object p0
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;
    .locals 4

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v0

    add-long/2addr v0, p4

    const/4 p4, 0x0

    :goto_0
    iget-object p5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v2, p5

    add-int/lit8 v2, v2, -0x1

    if-ge p4, v2, :cond_0

    aget-object p5, p5, p4

    invoke-static {p5}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v2

    cmp-long p5, v2, v0

    if-gez p5, :cond_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object p5, p5, p4

    invoke-static {p5}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v2

    cmp-long p5, v2, v0

    if-gez p5, :cond_2

    invoke-virtual {p3}, Landroid/view/DisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p1, "Choreographer"

    const-string p2, "Could not get latest VsyncEventData. Did SurfaceFlinger crash?"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/Choreographer$FrameData;->update(JI)V

    :goto_1
    iget-object p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget p0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object p0, p1, p0

    return-object p0
.end method

.method blacklist update(JI)V
    .locals 0

    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    iput p3, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    return-void
.end method

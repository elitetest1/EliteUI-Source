.class public final Landroid/view/DisplayEventReceiver$VsyncEventData;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VsyncEventData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    }
.end annotation


# static fields
.field static final blacklist FRAME_TIMELINES_CAPACITY:I = 0x7


# instance fields
.field public blacklist frameInterval:J

.field public final blacklist frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

.field public blacklist frameTimelinesLength:I

.field public blacklist numberQueuedBuffers:I

.field public blacklist preferredFrameTimelineIndex:I


# direct methods
.method constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iput-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    :goto_0
    iget-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    invoke-direct {v2}, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor blacklist <init>([Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;IIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iput p2, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    iput-wide p4, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    iput p6, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    return-void
.end method


# virtual methods
.method blacklist copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 3

    iget v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iget v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    iput p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    return-void
.end method

.method public blacklist preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iget p0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    aget-object p0, v0, p0

    return-object p0
.end method

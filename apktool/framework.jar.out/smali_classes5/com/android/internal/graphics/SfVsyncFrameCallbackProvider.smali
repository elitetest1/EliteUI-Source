.class public final Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;
.super Ljava/lang/Object;
.source "SfVsyncFrameCallbackProvider.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public blacklist getFrameDelay()J
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFrameTime()J
    .locals 2

    iget-object p0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist postCommitCallback(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public blacklist setFrameDelay(J)V
    .locals 0

    invoke-static {p1, p2}, Landroid/view/Choreographer;->setFrameDelay(J)V

    return-void
.end method

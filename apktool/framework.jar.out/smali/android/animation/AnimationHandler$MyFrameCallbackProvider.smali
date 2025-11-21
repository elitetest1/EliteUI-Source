.class Landroid/animation/AnimationHandler$MyFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFrameCallbackProvider"
.end annotation


# instance fields
.field final greylist-max-o mChoreographer:Landroid/view/Choreographer;


# direct methods
.method private constructor blacklist <init>(Landroid/animation/AnimationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getFrameDelay()J
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getFrameTime()J
    .locals 2

    iget-object p0, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o postCommitCallback(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public greylist-max-o postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 0

    iget-object p0, p0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public greylist-max-o setFrameDelay(J)V
    .locals 0

    invoke-static {p1, p2}, Landroid/view/Choreographer;->setFrameDelay(J)V

    return-void
.end method

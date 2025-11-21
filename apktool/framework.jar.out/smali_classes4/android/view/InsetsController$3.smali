.class Landroid/view/InsetsController$3;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mFromState:Landroid/view/InsetsState;

.field private blacklist mToState:Landroid/view/InsetsState;

.field private blacklist mTypes:I

.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 10

    iget p1, p0, Landroid/view/InsetsController$3;->mTypes:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p2, p1}, Landroid/view/InsetsController;->-$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V

    new-instance v0, Landroid/view/InsetsResizeAnimationRunner;

    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    sget-object v4, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v7, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v8, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    const-wide/16 v5, 0x12c

    move-object v9, v8

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsController;)V

    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object p1

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result p2

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, p2, v1}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_2
    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmAnimatingTypes(Landroid/view/InsetsController;)I

    move-result p2

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/view/InsetsController;->-$$Nest$fputmAnimatingTypes(Landroid/view/InsetsController;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "startResizingAnimationIfNeeded: types="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " host="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InsetsController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getMinimizedInsetHint()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getMinimizedInsetHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    :cond_3
    iget-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    :cond_4
    iget-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    iget-object p0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    new-instance p1, Landroid/view/InsetsSource;

    invoke-direct {p1, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public blacklist onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Landroid/view/InsetsController$3;->mTypes:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    iput-object p1, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    return-void
.end method

.class Landroid/view/InsetsResizeAnimationRunner$2;
.super Ljava/lang/Object;
.source "InsetsResizeAnimationRunner.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsResizeAnimationRunner;->applyChangeInsets(Landroid/view/InsetsState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsResizeAnimationRunner;

.field final synthetic blacklist val$fraction:F

.field final synthetic blacklist val$outState:Landroid/view/InsetsState;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsResizeAnimationRunner;FLandroid/view/InsetsState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$2;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    iput p2, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iput-object p3, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$outState:Landroid/view/InsetsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v8

    int-to-float v1, v1

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    float-to-int v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/view/InsetsSource;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    iget-object v3, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$outState:Landroid/view/InsetsState;

    invoke-virtual {v3, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result p2

    if-ne v1, p2, :cond_1

    iget-object p2, p0, Landroid/view/InsetsResizeAnimationRunner$2;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-static {p2}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fgetmImeSourceControl(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsSourceControl;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/view/InsetsResizeAnimationRunner$2;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    invoke-static {p2, p1, v1}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$mgetImeLeashSurfaceParam(Landroid/view/InsetsResizeAnimationRunner;Landroid/view/InsetsSource;I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroid/view/InsetsResizeAnimationRunner$2;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-static {p2}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object p2

    instance-of p2, p2, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/view/InsetsResizeAnimationRunner$2;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-static {p2}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object p2

    check-cast p2, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_0
    iget-object p0, p0, Landroid/view/InsetsResizeAnimationRunner$2;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-static {p0}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fgetmTmpMatrix(Landroid/view/InsetsResizeAnimationRunner;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    :cond_1
    return-void
.end method

.class Landroid/view/ImeBackAnimationController$1;
.super Ljava/lang/Object;
.source "ImeBackAnimationController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ImeBackAnimationController;->onBackStarted(Landroid/window/BackEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ImeBackAnimationController;


# direct methods
.method constructor blacklist <init>(Landroid/view/ImeBackAnimationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p0}, Landroid/view/ImeBackAnimationController;->-$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V

    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p0}, Landroid/view/ImeBackAnimationController;->-$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V

    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 0

    iget-object p2, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p2, p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fputmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;Landroid/view/WindowInsetsAnimationController;)V

    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$misAdjustPan(Landroid/view/ImeBackAnimationController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmViewRoot(Landroid/view/ImeBackAnimationController;)Landroid/view/ViewRootImpl;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-static {p1, p2}, Landroid/view/ImeBackAnimationController;->-$$Nest$fputmStartRootScrollY(Landroid/view/ImeBackAnimationController;I)V

    :cond_0
    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p0}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmLastProgress(Landroid/view/ImeBackAnimationController;)F

    move-result p1

    invoke-static {p0, p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$msetPreCommitProgress(Landroid/view/ImeBackAnimationController;F)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p0}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmTriggerBack(Landroid/view/ImeBackAnimationController;)Z

    move-result p1

    invoke-static {p0, p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$mstartPostCommitAnim(Landroid/view/ImeBackAnimationController;Z)V

    return-void
.end method

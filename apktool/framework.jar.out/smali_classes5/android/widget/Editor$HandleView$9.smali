.class Landroid/widget/Editor$HandleView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p1, v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V

    iget-object p0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmHideAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p1}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsHideAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p1}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p1, v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V

    iget-object p0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmHideAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p1}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsShowAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p1}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmShowAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsShowAnimating(Landroid/widget/Editor$HandleView;Z)V

    :cond_0
    iget-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V

    iget-object p0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.class Lcom/android/internal/policy/DecorView$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/policy/DecorView$7;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$7$1;->this$1:Lcom/android/internal/policy/DecorView$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/policy/DecorView$7$1;->this$1:Lcom/android/internal/policy/DecorView$7;

    iget-object p1, p1, Lcom/android/internal/policy/DecorView$7;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/internal/policy/DecorView$7$1;->this$1:Lcom/android/internal/policy/DecorView$7;

    iget-object p0, p0, Lcom/android/internal/policy/DecorView$7;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView$7$1;->this$1:Lcom/android/internal/policy/DecorView$7;

    iget-object p0, p0, Lcom/android/internal/policy/DecorView$7;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {p0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

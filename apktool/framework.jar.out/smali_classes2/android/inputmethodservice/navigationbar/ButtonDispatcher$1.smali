.class Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ButtonDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->-$$Nest$fputmFadeAnimator(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

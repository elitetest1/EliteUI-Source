.class Lcom/samsung/android/animation/SemGridSortAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemGridSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemGridSortAnimator;->startFadeInTranslateAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemGridSortAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemGridSortAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object p0, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

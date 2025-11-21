.class Lcom/samsung/android/animation/SemListSortAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemListSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemListSortAnimator;->sortTheList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemListSortAnimator;

.field final synthetic blacklist val$child:Landroid/view/View;

.field final synthetic blacklist val$isLastChild:Z


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemListSortAnimator;ZLandroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iput-boolean p2, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$isLastChild:Z

    iput-object p3, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$child:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$isLastChild:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemListSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;

    invoke-interface {p1}, Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;->onSort()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/animation/SemListSortAnimator$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemListSortAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemListSortAnimator$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->val$isLastChild:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object p0, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

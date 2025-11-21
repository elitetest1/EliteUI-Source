.class public Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private blacklist mCanceled:Z

.field blacklist mFinalVisibility:I

.field final synthetic blacklist this$0:Lcom/android/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/widget/AbsActionBarView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    iget p0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iput-object p1, v0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public blacklist withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method

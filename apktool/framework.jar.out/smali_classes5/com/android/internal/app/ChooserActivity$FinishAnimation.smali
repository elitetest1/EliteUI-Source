.class Lcom/android/internal/app/ChooserActivity$FinishAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishAnimation"
.end annotation


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private final blacklist mFromAlpha:F

.field private blacklist mRootView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mFromAlpha:F

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setDuration(J)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setStartOffset(J)V

    invoke-super {p0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private blacklist cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mFromAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->cleanup()V

    invoke-super {p0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->cleanup()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public whitelist setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

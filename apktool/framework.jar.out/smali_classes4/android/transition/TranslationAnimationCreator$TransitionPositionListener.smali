.class Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final blacklist mMovingView:Landroid/view/View;

.field private blacklist mPausedX:F

.field private blacklist mPausedY:F

.field private final blacklist mStartX:I

.field private final blacklist mStartY:I

.field private final blacklist mTerminalX:F

.field private final blacklist mTerminalY:F

.field private blacklist mTransitionPosition:[I

.field private final blacklist mViewInHierarchy:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iput-object p2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    iput p5, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    iput p6, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    const p1, 0x10206b0

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    :cond_0
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const v0, 0x10206b0

    iget-object p0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public whitelist onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public whitelist onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

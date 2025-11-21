.class public Landroid/view/ImeBackAnimationController;
.super Ljava/lang/Object;
.source "ImeBackAnimationController.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# static fields
.field private static final blacklist BACK_GESTURE:Landroid/view/animation/Interpolator;

.field private static final blacklist EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field private static final blacklist PEEK_FRACTION:F = 0.1f

.field private static final blacklist POST_COMMIT_CANCEL_DURATION_MS:I = 0x32

.field private static final blacklist POST_COMMIT_DURATION_MS:I = 0xc8

.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackAnimationController"


# instance fields
.field private final blacklist mInsetsController:Landroid/view/InsetsController;

.field private blacklist mIsPreCommitAnimationInProgress:Z

.field private blacklist mLastProgress:F

.field private blacklist mPostCommitAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mStartRootScrollY:I

.field private blacklist mTriggerBack:Z

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method public static synthetic blacklist $r8$lambda$k6hhw-kcx_rhv-_zA6i_ff-iUwA(Landroid/view/ImeBackAnimationController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastProgress(Landroid/view/ImeBackAnimationController;)F
    .locals 0

    iget p0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerBack(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ImeBackAnimationController;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;)Landroid/view/WindowInsetsAnimationController;
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartRootScrollY(Landroid/view/ImeBackAnimationController;I)V
    .locals 0

    iput p1, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAdjustPan(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreCommitProgress(Landroid/view/ImeBackAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartPostCommitAnim(Landroid/view/ImeBackAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/BackGestureInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BackGestureInterpolator;-><init>()V

    sput-object v0, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InsetsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    iput-object p2, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    return-void
.end method

.method private blacklist isAdjustPan()Z
    .locals 1

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isBackAnimationAllowed()Z
    .locals 3

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p0, p0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isHideAnimationInProgress()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setInterpolatedProgress(F)V

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    return-void
.end method

.method private blacklist notifyHideIme()V
    .locals 5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x34

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private blacklist reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1, v0}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    return-void
.end method

.method private blacklist resetPostCommitAnimator()V
    .locals 1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private blacklist setInterpolatedProgress(F)V
    .locals 5

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    mul-float v0, p1, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    int-to-float v1, v1

    sub-float v4, v2, p1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/view/ViewRootImpl;->setScrollY(I)V

    :cond_0
    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-interface {p0, v0, v2, p1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    :cond_1
    return-void
.end method

.method private blacklist setPreCommitProgress(F)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setInterpolatedProgress(F)V

    return-void
.end method

.method private blacklist startPostCommitAnim(Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    iget v3, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v2, 0x1

    aput v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz v1, :cond_2

    sget-object v1, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v3, 0x11d

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    sget-object v1, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v3, 0xc8

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    const-wide/16 v3, 0x32

    :goto_1
    iget-object v5, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;-><init>(Landroid/view/ImeBackAnimationController;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/ImeBackAnimationController$2;

    invoke-direct {v3, p0, p1}, Landroid/view/ImeBackAnimationController$2;-><init>(Landroid/view/ImeBackAnimationController;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {p1, v2}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->notifyHideIme()V

    iget-object p1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ImeBackAnimationController:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastProgress="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTriggerBack="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mIsPreCommitAnimationInProgress="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStartRootScrollY="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isBackAnimationAllowed="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isAdjustPan="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isHideAnimationInProgress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method blacklist isAnimationInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist onBackCancelled()V
    .locals 1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    return-void
.end method

.method public whitelist onBackInvoked()V
    .locals 1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->notifyHideIme()V

    :goto_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->preliminaryClear()V

    :cond_2
    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    iput p1, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .locals 10

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "ImeBackAnimationController"

    const-string/jumbo p1, "onBackStarted -> not playing predictive back animation due to softinput mode adjustResize AND no animation callback registered"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iget-object p1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    new-instance v3, Landroid/view/ImeBackAnimationController$1;

    invoke-direct {v3, p0}, Landroid/view/ImeBackAnimationController$1;-><init>(Landroid/view/ImeBackAnimationController;)V

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;
.implements Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$Host;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final blacklist ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final blacklist ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final blacklist ANIMATION_DURATION_RESIZE:I = 0x12c

.field static final blacklist ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final blacklist ANIMATION_TYPE_HIDE:I = 0x1

.field public static final blacklist ANIMATION_TYPE_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final blacklist ANIMATION_TYPE_SHOW:I = 0x0

.field public static final blacklist ANIMATION_TYPE_USER:I = 0x2

.field public static final blacklist CONTROLLABLE_TYPES:I

.field static final blacklist DEBUG:Z

.field private static final blacklist ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

.field private static final blacklist ENABLE_SEP_IME_ANIMATION:Z

.field static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field private static final blacklist ID_CAPTION_BAR:I

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field private static final blacklist PROP_ENABLE_SEP_IME_ANIMATION:Ljava/lang/String; = "persist.sys.ime.enable_sep_ime_animation"

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SEP_ANIMATION_DURATION_IME_FLAGSHIP_HIDE_MS:I = 0x12c

.field private static final blacklist SEP_ANIMATION_DURATION_IME_FLAGSHIP_SHOW_MS:I = 0x15e

.field private static final blacklist SEP_ANIMATION_DURATION_IME_HIDE_MS:I = 0x118

.field private static final blacklist SEP_ANIMATION_DURATION_IME_SHOW_MS:I = 0x118

.field private static final blacklist SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final blacklist SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsController"

.field static final blacklist WARN:Z = false

.field private static blacklist sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnimCallback:Ljava/lang/Runnable;

.field private blacklist mAnimCallbackScheduled:Z

.field private blacklist mAnimatingTypes:I

.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearanceControlled:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mBehaviorControlled:Z

.field private blacklist mCancelledForNewAnimationTypes:I

.field private blacklist mCaptionInsetsHeight:I

.field private blacklist mCompatSysUiVisibilityStaled:Z

.field private final blacklist mConsumerCreator:Lcom/android/internal/util/function/TriFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mControllableTypes:I

.field private blacklist mExistingTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private final blacklist mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

.field private blacklist mIsPredictiveBackImeHideAnimInProgress:Z

.field private final blacklist mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private blacklist mLastActivityType:I

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mReportedRequestedVisibleTypes:I

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mStartingAnimation:Z

.field private final blacklist mState:Landroid/view/InsetsState;

.field private blacklist mSystemBarControlledByPolicy:Z

.field private final blacklist mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypesBeingCancelled:I

.field private blacklist mVisibleTypes:I

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2LIr3EryRYmtQ1HDd2j7SPwxf78(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$byQpFrvTVUSIm262wbTCVu-YfPc(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m0h69hPi9k8nqDnYD5vTLkv4rsM(Landroid/view/InsetsController;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$updateState$4([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$meqKUiuVHZJFS86fhQQzBBmdABw(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$njZtqr3ZSj8qfjB8biFLGe-UC1E(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zHkX5nyqL2mGn5Rg6byt6DH0yFE(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/InsetsController;->lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zM05iYQaCKzLG8Raquar1hv37XU(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatingTypes(Landroid/view/InsetsController;)I
    .locals 0

    iget p0, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimatingTypes(Landroid/view/InsetsController;I)V
    .locals 0

    iput p1, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z
    .locals 1

    sget-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z
    .locals 1

    sget-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_IME_ANIMATION:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSEP_IME_HIDE_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSEP_IME_SHOW_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/view/InsetsController;->CONTROLLABLE_TYPES:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-string/jumbo v0, "persist.sys.ime.enable_sep_ime_animation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_IME_ANIMATION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_STRIDE_OCR_VERSION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "V2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.name"

    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "m44x"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Landroid/view/InsetsController;->ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v5, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_INSETS_LOG_DEBUG:Z

    sput-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .locals 2

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/InsetsController$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$1;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    iput v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    iput v0, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    new-instance v0, Landroid/view/InsetsController$2;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$2;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    new-instance v0, Landroid/view/InsetsController$3;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$3;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object p1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    sget p1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean p0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "InsetsController"

    const-string v0, "abortPendingImeControlRequest"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .locals 5

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result p0

    not-int p0, p0

    and-int/2addr p0, v1

    return p0
.end method

.method private blacklist cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 6

    const/16 v0, 0x28

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cancelAnimation: types=%s, animType=%d, host=%s, from=%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_4

    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_3

    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    if-eqz p2, :cond_1

    iget-object p2, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {p2}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p2, v0

    if-eqz p2, :cond_5

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p2

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    if-eqz p2, :cond_5

    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v2

    :goto_2
    invoke-virtual {p0, p2}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v3

    :cond_5
    :goto_3
    if-lez v0, :cond_8

    iget p2, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    not-int v4, v0

    and-int/2addr p2, v4

    iput p2, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    if-eqz p2, :cond_8

    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p2, v0

    if-eqz p2, :cond_6

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p2

    if-ne p2, v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v4, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    if-eqz v1, :cond_7

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    :cond_7
    invoke-interface {p2, v4, v2}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_8
    invoke-virtual {p0, v0, v3}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .locals 5

    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int v1, v0, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    return-void

    :catchall_0
    move-exception p1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    throw p1
.end method

.method private blacklist collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;Z)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x23

    invoke-interface {v3, v2, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_0
    if-ltz v3, :cond_f

    iget-object v9, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v10

    and-int v10, v10, p2

    if-nez v10, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v13, p3

    goto/16 :goto_9

    :cond_1
    const/4 v10, 0x2

    if-eqz v1, :cond_3

    if-ne v1, v10, :cond_2

    if-eqz p6, :cond_3

    iget-object v11, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v11}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    move v11, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v5

    :goto_3
    const-string v12, "InsetsController"

    if-eqz v11, :cond_7

    invoke-virtual {v9, p1, v2}, Landroid/view/InsetsSourceConsumer;->requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I

    move-result v11

    if-eq v11, v5, :cond_5

    if-eq v11, v10, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v10

    invoke-virtual {p0, v6, v10}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    move v10, v6

    goto :goto_7

    :cond_5
    sget-boolean v8, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "requestShow IME_SHOW_DELAYED"

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v10, v5

    move v8, v6

    goto :goto_7

    :cond_7
    if-nez p1, :cond_9

    if-eqz p6, :cond_8

    iget-object v10, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v10}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_8
    move v10, v6

    goto :goto_5

    :cond_9
    :goto_4
    move v10, v5

    :goto_5
    invoke-virtual {v9, v10, v2}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    :goto_6
    move v10, v5

    :goto_7
    if-nez v10, :cond_a

    if-eqz p1, :cond_0

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v9

    invoke-static {v9}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "collectSourceControls can\'t continue show for type: %s fromIme: %b"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    if-nez v11, :cond_b

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v11

    sget v13, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v11, v13, :cond_c

    :cond_b
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v11

    new-instance v12, Landroid/view/InsetsSourceControl;

    invoke-direct {v12, v10}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v13, p3

    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v9

    or-int/2addr v7, v9

    goto :goto_9

    :cond_c
    move-object/from16 v13, p3

    if-eqz p1, :cond_e

    if-nez v10, :cond_d

    const-string v9, "control: null"

    goto :goto_8

    :cond_d
    const-string v9, "control: non-null and control.getLeash(): null"

    :goto_8
    const-string v10, "collectSourceControls can\'t continue for type: ime, fromIme: true requires a control with a leash but we have "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v9

    invoke-interface {v9, v2, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_e
    :goto_9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_f
    new-instance p0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private blacklist collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    sget v6, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    new-instance v6, Landroid/view/InsetsSourceControl;

    invoke-direct {v6, v4}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {p2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    or-int/2addr v1, v3

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p11, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/ImeOnBackInvokedDispatcher;->preliminaryClear()V

    :cond_1
    if-eqz v1, :cond_2

    move v0, p1

    :cond_2
    invoke-virtual {p0, v0, p1}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    invoke-direct/range {p0 .. p11}, Landroid/view/InsetsController;->controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    invoke-virtual {p0, p10}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private blacklist controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V
    .locals 24

    move-object/from16 v6, p0

    move/from16 v8, p1

    move-object/from16 v4, p3

    move/from16 v9, p7

    move-object/from16 v5, p10

    iget v0, v6, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int/2addr v0, v8

    const/16 v1, 0x21

    const/4 v15, 0x1

    if-eqz v0, :cond_3

    if-eqz v9, :cond_0

    if-ne v9, v15, :cond_2

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, v8

    if-eqz v0, :cond_2

    const/16 v0, 0x28

    if-nez v9, :cond_1

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5, v0, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5, v0, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    :goto_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot start a new insets animation of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while an existing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is being cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const-string v0, "IC.showRequestFromApiToImeReady"

    const-string v2, "IC.showRequestFromApi"

    const/4 v3, 0x0

    const-string v7, "InsetsController"

    const-wide/16 v10, 0x8

    const/4 v12, 0x0

    if-nez v8, :cond_5

    invoke-interface {v4, v3}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "no types to animate in controlAnimationUnchecked"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v10, v11, v2, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {v10, v11, v0, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :cond_5
    sget-boolean v16, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v16, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v13, "controlAnimation types: "

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v1, v6, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v1, v8

    iput v1, v6, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v13

    const-string v14, "Ime not ready. Create pending request"

    move/from16 v18, v13

    if-eqz v18, :cond_d

    invoke-direct {v6, v8, v1}, Landroid/view/InsetsController;->collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;

    move-result-object v3

    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x2

    if-ne v9, v12, :cond_b

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    and-int/2addr v12, v8

    if-eqz v12, :cond_8

    and-int/2addr v3, v8

    if-eqz v3, :cond_8

    move-object v3, v7

    new-instance v7, Landroid/view/InsetsController$PendingControlRequest;

    const/4 v12, 0x0

    move-object v13, v14

    const/4 v14, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move v3, v11

    move/from16 v17, v15

    const-wide/16 v0, 0x7d0

    move v11, v9

    move-object v15, v13

    move-object/from16 v13, p2

    move-object v9, v4

    move-object v4, v10

    move-object/from16 v10, p6

    invoke-direct/range {v7 .. v14}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V

    iput-object v7, v6, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v8, v6, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v9, v6, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v14, v21

    if-eqz v16, :cond_7

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v13, :cond_9

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v0, v6, v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v13, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto :goto_1

    :cond_8
    move-object/from16 v13, p2

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v14, v7

    move-object v4, v10

    move v3, v11

    move/from16 v17, v15

    :cond_9
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TEMP_INSETS_BUG_FIX:Z

    if-eqz v0, :cond_a

    sget v8, Landroid/view/InsetsController;->CONTROLLABLE_TYPES:I

    goto :goto_2

    :cond_a
    move/from16 v8, p1

    :goto_2
    and-int v0, p1, v8

    if-eq v3, v0, :cond_c

    if-eqz v16, :cond_1e

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "not all types are ready yet, waiting. typesReady: %s, types: %s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    move-object/from16 v13, p2

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v14, v7

    move v3, v11

    move/from16 v17, v15

    :cond_c
    move-object v11, v2

    move v5, v3

    move-object v12, v6

    move-object/from16 v10, v19

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v13, p2

    move-object v10, v0

    move-object v11, v2

    move-object v0, v6

    move v2, v8

    move v4, v9

    move/from16 v17, v15

    const-wide/16 v8, 0x7d0

    move/from16 v6, p11

    move-object v15, v14

    move-object v14, v7

    move-object v7, v3

    move-object v3, v1

    move/from16 v1, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController;->collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;Z)Landroid/util/Pair;

    move-result-object v6

    move-object v12, v0

    move-object/from16 v20, v3

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v16, :cond_e

    const-string v4, "controlAnimationUnchecked, typesReady: %s imeReady: %s"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez v3, :cond_11

    invoke-direct {v12}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    new-instance v0, Landroid/view/InsetsController$PendingControlRequest;

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v7, p9

    move-object v6, v13

    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V

    move v13, v1

    move-object v1, v0

    move-object v0, v6

    iput-object v1, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v2, v12, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v3, v12, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v16, :cond_f

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v0, :cond_10

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v12, v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v0, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_10
    invoke-static/range {v20 .. v20}, Landroid/view/InsetsController;->releaseControls(Landroid/util/SparseArray;)V

    iget v0, v12, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-virtual {v12, v0, v13}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    const-wide/16 v2, 0x8

    const/4 v15, 0x0

    invoke-static {v2, v3, v11, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-nez p5, :cond_1e

    invoke-static {v2, v3, v10, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :cond_11
    move v5, v1

    :goto_3
    move-object/from16 v4, p3

    move-object v0, v13

    const-wide/16 v2, 0x8

    const/4 v15, 0x0

    move/from16 v13, p1

    if-nez v5, :cond_14

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v2, v3, v11, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-interface {v4, v7}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    return-void

    :cond_12
    if-eqz v16, :cond_13

    const-string v0, "No types ready. onCancelled()"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-interface {v4, v7}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    invoke-static {v2, v3, v11, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-nez p5, :cond_1e

    invoke-static {v2, v3, v10, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :cond_14
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_15

    iput v5, v12, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    invoke-direct {v12, v5}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    iput v15, v12, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    goto :goto_4

    :cond_15
    invoke-direct {v12, v5}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    :goto_4
    if-eqz p9, :cond_16

    new-instance v0, Landroid/view/InsetsAnimationThreadControlRunner;

    move-wide/from16 v22, v2

    iget-object v3, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v10

    iget-object v1, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v15, p2

    move-object/from16 v2, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v7

    move-object v6, v12

    move-object/from16 v1, v20

    move-object/from16 v7, p6

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V

    move/from16 v4, p7

    move v3, v5

    move-object/from16 v5, p10

    goto :goto_5

    :cond_16
    move-object v15, v0

    move-object v13, v7

    move-object v6, v12

    new-instance v0, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v6, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v11

    move-object/from16 v7, p0

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v1, v20

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    move v3, v5

    move v4, v9

    move-object v5, v12

    :goto_5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_18

    iget-object v7, v6, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceConsumer;

    if-eqz v7, :cond_17

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/InsetsSourceConsumer;->setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V

    :cond_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_18
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v7, "InsetsAnimationControlImpl"

    invoke-virtual {v1, v7, v2, v13}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    move/from16 v1, v17

    if-ne v4, v1, :cond_19

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v5, v2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    :cond_19
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x27

    invoke-interface {v1, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget v1, v6, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v6, Landroid/view/InsetsController;->mAnimatingTypes:I

    iget-object v2, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2, v1, v13}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    iget-object v1, v6, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    invoke-direct {v2, v0, v4}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controlAnimationUncheckedInner: Added types="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", animType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_1a

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v15, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const-wide/16 v2, 0x8

    const/4 v15, 0x0

    goto :goto_7

    :cond_1a
    const-string v0, "IC.pendingAnim"

    const-wide/16 v2, 0x8

    const/4 v15, 0x0

    invoke-static {v2, v3, v0, v15}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_7
    move/from16 v8, p1

    const/4 v1, 0x1

    invoke-virtual {v6, v8, v1}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    if-eqz p5, :cond_1d

    if-eqz v4, :cond_1c

    if-eq v4, v1, :cond_1b

    goto :goto_8

    :cond_1b
    const-string v0, "IC.hideRequestFromIme"

    invoke-static {v2, v3, v0, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :cond_1c
    const-string v0, "IC.showRequestFromIme"

    invoke-static {v2, v3, v0, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :cond_1d
    if-ne v4, v1, :cond_1e

    const-string v0, "IC.hideRequestFromApi"

    invoke-static {v2, v3, v0, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_1e
    :goto_8
    return-void
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(IZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p2}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr p0, p1

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 12

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v2, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v2, v1, Landroid/view/InsetsController$PendingControlRequest;->types:I

    move v3, v2

    iget-object v2, v1, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    move v4, v3

    iget-object v3, v1, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v6, v1, Landroid/view/InsetsController$PendingControlRequest;->mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

    iget v7, v1, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v8, v1, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v9, v1, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    const/4 v11, 0x0

    move v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v1}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return p0
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_1

    sget-boolean p1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "InsetsController"

    const-string v0, "Cancellation signal abortPendingImeControlRequest"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_1

    sget-boolean p1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "InsetsController"

    const-string v0, "Cancellation signal abortPendingImeControlRequest"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance p2, Landroid/view/ImeInsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {p2, p1, v0, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    return-object p2

    :cond_0
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$3()V
    .locals 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v12, 0x1

    invoke-direct {v2, v3, v12}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    :goto_0
    const-string v13, "InsetsController"

    if-ltz v3, :cond_4

    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    sget-boolean v5, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Running animation type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Landroid/view/InsetsController$RunningAnimation;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    instance-of v6, v5, Landroid/view/WindowInsetsAnimationController;

    if-eqz v6, :cond_3

    iget-boolean v4, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v4, :cond_2

    invoke-interface {v5}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v4, v5

    check-cast v4, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v4, v2}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v5}, Landroid/view/WindowInsets;->isRound()Z

    move-result v5

    iget v6, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v7, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget-boolean v8, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v8, :cond_5

    iget v8, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    and-int/lit16 v8, v8, -0x101

    goto :goto_1

    :cond_5
    iget v8, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    :goto_1
    iget v9, p0, Landroid/view/InsetsController;->mWindowType:I

    iget v10, p0, Landroid/view/InsetsController;->mLastActivityType:I

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_CAN_DISPATCH_UDC_CUTOUT:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v2, Landroid/view/InsetsState;->mCanDispatchUdcCutout:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    instance-of v5, v4, Landroid/view/ViewRootInsetsControllerHost;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewRootInsetsControllerHost;

    invoke-virtual {v4}, Landroid/view/ViewRootInsetsControllerHost;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->isCutoutRemoveNeeded()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v2, v2, Landroid/view/InsetsState;->mCanDispatchUdcCutout:Z

    invoke-virtual {v3, v2}, Landroid/view/WindowInsets;->removeCutoutInsets(Z)Landroid/view/WindowInsets;

    move-result-object v3

    :cond_6
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    sget-boolean v2, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Running animation on insets type: %d, progress: %f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_3
    if-ltz v0, :cond_8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method private synthetic blacklist lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InsetsAnimation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_0
    if-ltz v1, :cond_2

    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InsetsController$RunningAnimation;

    iget-object v6, v5, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v6, p1, :cond_1

    iput-boolean v4, v5, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const-string v1, "IC.pendingAnim"

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_3

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p3

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p4

    invoke-interface {p3, p4}, Landroid/view/inputmethod/ImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_3
    check-cast p1, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {p1, v4}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    iput-boolean v5, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    return-void
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    const v1, 0x3eaaaaab

    cmpg-float v2, p0, v1

    if-gtz v2, :cond_0

    return v0

    :cond_0
    sub-float/2addr p0, v1

    const v1, 0x3f2aaaaa

    div-float/2addr p0, v1

    sget-object v1, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 5

    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$updateState$4([I)V
    .locals 1

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method static blacklist releaseControls(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .locals 11

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_2

    new-instance v6, Landroid/view/InsetsSource;

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v8

    iget-object v9, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    if-eqz v9, :cond_0

    invoke-virtual {v9, v6, v8}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    goto :goto_1

    :cond_0
    iget-object v8, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v8, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :goto_1
    or-int/2addr v5, v7

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    or-int/2addr v4, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v2

    not-int v3, v5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    iget v3, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    const/4 v4, 0x1

    if-eq v3, v2, :cond_4

    xor-int/2addr v3, v2

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_3
    iput v2, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    :cond_4
    iget v2, p0, Landroid/view/InsetsController;->mExistingTypes:I

    if-eq v2, v5, :cond_6

    xor-int/2addr v2, v5

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v4, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_5
    iput v5, p0, Landroid/view/InsetsController;->mExistingTypes:I

    :cond_6
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v2, p1, v3}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    aget p1, v0, v1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public blacklist applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 9

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    move-object v8, p5

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/view/InsetsController;->applyAnimation(IZZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist applyAnimation(IZZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 15

    const-string v1, "InsetsController"

    const/4 v2, 0x0

    if-nez p1, :cond_2

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "applyAnimation, nothing to animate. Stopping here"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "IC.showRequestFromApi"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    const-string v0, "IC.showRequestFromApiToImeReady"

    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int v3, p1, v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenModeAnim()Z

    move-result v3

    move v13, v3

    goto :goto_0

    :cond_3
    move v13, v2

    :goto_0
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    and-int v5, v5, p1

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v7

    invoke-static {v7}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getSideHint()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getSideHint()I

    move-result v8

    if-eq v7, v8, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "applyAnimation, skip insets animation, because hint of source is not equal to hint of control, source="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", control="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v14

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    move/from16 v1, p4

    :goto_3
    if-nez v1, :cond_7

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->shouldIgnoreInsetsAnimation()Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v14

    :cond_7
    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v8

    if-nez v1, :cond_9

    iget-boolean v1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v9, v2

    goto :goto_5

    :cond_9
    :goto_4
    move v9, v14

    :goto_5
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    const/16 v4, -0x50

    invoke-interface {v1, v4}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v10

    iget-object v11, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v12, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move/from16 v7, p1

    move/from16 v5, p2

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;Z)V

    xor-int/lit8 v7, p2, 0x1

    xor-int/lit8 v8, p2, 0x1

    if-eqz v6, :cond_b

    if-eqz p5, :cond_a

    goto :goto_6

    :cond_a
    move v9, v2

    goto :goto_7

    :cond_b
    :goto_6
    move v9, v14

    :goto_7
    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v5, p3

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method public blacklist calculateInsets(ZIIIII)Landroid/view/WindowInsets;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/view/InsetsController;->calculateInsets(ZIIIIIZ)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public blacklist calculateInsets(ZIIIIIZ)Landroid/view/WindowInsets;
    .locals 11

    move/from16 v0, p6

    iput p2, p0, Landroid/view/InsetsController;->mWindowType:I

    iput p3, p0, Landroid/view/InsetsController;->mLastActivityType:I

    iput p4, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    move/from16 v5, p5

    iput v5, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iput v0, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    move-object v2, v1

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-boolean v3, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v3, :cond_0

    and-int/lit16 v0, v0, -0x101

    :cond_0
    move v6, v0

    const/4 v9, 0x0

    move-object v0, v2

    const/4 v2, 0x0

    move v3, p1

    move v7, p2

    move v8, p3

    move v4, p4

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;Z)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .locals 6

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public blacklist cancelExistingAnimations()V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method public blacklist computeUserAnimatingTypes()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 10

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method public blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V
    .locals 12

    move/from16 v11, p9

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz v11, :cond_0

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_1
    new-instance v6, Landroid/view/InsetsController$4;

    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    invoke-direct {v6, p0, v0, v1, v2}, Landroid/view/InsetsController$4;-><init>(Landroid/view/InsetsController;JLandroid/view/animation/Interpolator;)V

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v11}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(IZ)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZLandroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p3, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsetsAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
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

    const-string p1, "InsetsController:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mIsPredictiveBackImeHideAnimInProgress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    const-wide v2, 0x20b00000002L

    invoke-interface {v1, p1, v2, v3}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist getAnimationType(I)I
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InsetsController$RunningAnimation;

    iget p0, p0, Landroid/view/InsetsController$RunningAnimation;->type:I

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getAppearanceControlled()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    return p0
.end method

.method blacklist getCancelledForNewAnimationTypes()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    return p0
.end method

.method public blacklist getHost()Landroid/view/InsetsController$Host;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object p0
.end method

.method public blacklist getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-object p0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object p0
.end method

.method public blacklist getRequestedVisibleTypes()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    return p0
.end method

.method public blacklist getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v0, :cond_1

    iget-object p2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object p2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p2, p1}, Landroid/view/InsetsSourceConsumer;->setId(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p0, v1, p2}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/InsetsSourceConsumer;

    :goto_0
    iget-object p0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object p0
.end method

.method public whitelist getSystemBarsAppearance()I
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    and-int/2addr v0, v1

    iget p0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    not-int v1, v1

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public whitelist getSystemBarsBehavior()I
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result p0

    return p0
.end method

.method public blacklist hasImeOverriddenLocalVisibility()Z
    .locals 5

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object p0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public blacklist hasPendingFrame()Z
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->hasPendingFrame()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method blacklist hasSurfaceAnimation(I)Z
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->willUpdateSurface()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hide(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v3, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, p1, v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "hide(ime(), fromIme="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "InsetsController"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    const/4 v5, 0x5

    const/16 v6, 0x1c

    invoke-interface {v1, v2, v5, v6, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    const-wide/16 v6, 0x8

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    iget-object v8, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v8}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "InsetsController#hide"

    invoke-virtual {v4, v10, v8, v9}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    const-string v4, "IC.hideRequestFromIme"

    invoke-static {v6, v7, v4, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string v4, "IC.hideRequestFromApi"

    invoke-static {v6, v7, v4, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_1
    iget-object v4, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    move v8, v1

    move v9, v8

    move v7, v6

    :goto_3
    const/16 v10, 0x200

    if-gt v7, v10, :cond_10

    and-int v10, p1, v7

    if-nez v10, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v10

    if-ne v7, v10, :cond_4

    move v10, v6

    goto :goto_4

    :cond_4
    move v10, v9

    :goto_4
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v10, :cond_5

    iget v11, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    and-int/2addr v11, v12

    if-nez v11, :cond_5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v10

    const/16 v11, 0x41

    invoke-interface {v10, v5, v11}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v0, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v11

    iget v12, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v12, v7

    if-eqz v12, :cond_6

    move v12, v6

    goto :goto_5

    :cond_6
    move v12, v9

    :goto_5
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v13, :cond_7

    if-nez v12, :cond_7

    iget v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    not-int v15, v7

    and-int/2addr v14, v15

    iput v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v13, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    if-nez v13, :cond_7

    invoke-direct {v0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_7
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v13

    const/4 v14, -0x1

    if-nez v13, :cond_a

    if-eqz v10, :cond_a

    if-nez v12, :cond_a

    if-ne v11, v14, :cond_a

    if-nez v4, :cond_8

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    invoke-virtual {v8, v3, v5}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_9
    move v8, v6

    :cond_a
    const/16 v13, 0x20

    if-nez v12, :cond_b

    if-eq v11, v14, :cond_e

    :cond_b
    if-eq v11, v6, :cond_e

    if-ne v11, v2, :cond_c

    iget-boolean v11, v0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-eqz v11, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v10, :cond_d

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v10

    invoke-interface {v10, v5, v13}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_d
    or-int/2addr v1, v7

    goto :goto_7

    :cond_e
    :goto_6
    if-eqz v10, :cond_f

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v10

    invoke-interface {v10, v5, v13}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_f
    :goto_7
    shl-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_10
    if-eqz v8, :cond_11

    iget-object v2, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v2, :cond_11

    invoke-direct {v0, v5}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    :cond_11
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist isBehaviorControlled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    return p0
.end method

.method public blacklist isPredictiveBackImeHideAnimInProgress()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    return p0
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 4

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->isCancelRequested()Z

    move-result v0

    const-string v1, "InsetsController"

    if-eqz v0, :cond_0

    const-string p0, "Ignore notifyFinished, because the animation has already been cancelled."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyFinished. shown: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/16 p2, 0x29

    invoke-interface {p1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/16 p2, 0x2a

    invoke-interface {p1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method blacklist notifyVisibilityChanged()V
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    return-void
.end method

.method blacklist onAnimationStateChanged(IZ)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_2
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2, v1}, Landroid/view/InsetsController$Host;->applyInsetsHintSandboxingIfNeeded([Landroid/view/InsetsSourceControl;)V

    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->isControlledByPolicy()Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v7, v0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    goto :goto_1

    :cond_0
    iget-object v5, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v8

    invoke-virtual {v5, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array v10, v7, [I

    new-array v11, v7, [I

    new-array v12, v7, [I

    new-array v13, v7, [I

    iget-object v1, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v7

    const/4 v14, 0x0

    move v2, v6

    move v15, v2

    move-object v5, v14

    :goto_2
    if-ltz v1, :cond_6

    iget-object v3, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/InsetsSourceControl;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    or-int/2addr v3, v15

    add-int/lit8 v2, v2, 0x1

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v9}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v4

    sget v15, Landroid/view/InsetsSource;->ID_IME:I

    if-ne v4, v15, :cond_4

    invoke-virtual {v9}, Landroid/view/InsetsSourceControl;->getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v5

    :cond_4
    move v15, v3

    :cond_5
    invoke-virtual/range {v8 .. v13}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eq v2, v1, :cond_7

    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_4
    if-ltz v1, :cond_7

    iget-object v2, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/view/InsetsSourceControl;

    invoke-virtual {v9}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    invoke-virtual/range {v8 .. v13}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_5
    if-ltz v1, :cond_8

    iget-object v2, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v3, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v2, v3}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_8
    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    aget v1, v12, v6

    if-eqz v1, :cond_9

    invoke-direct {v0, v1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    :cond_9
    invoke-direct {v0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v1

    aget v2, v10, v6

    not-int v1, v1

    and-int/2addr v2, v1

    aput v2, v10, v6

    aget v2, v11, v6

    and-int/2addr v1, v2

    aput v1, v11, v6

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-direct {v0, v5}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto/16 :goto_b

    :cond_a
    aget v1, v10, v6

    const/16 v8, 0x4c

    if-eqz v1, :cond_c

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v5, v8}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_b
    aget v1, v10, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_c
    aget v0, v11, v6

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_d
    aget v1, v11, v6

    aget v0, v13, v6

    not-int v0, v0

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    move v4, v7

    goto :goto_6

    :cond_e
    move v4, v6

    :goto_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    :goto_7
    aget v1, v10, v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_15

    aget v1, v11, v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_15

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v5, v8}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_b

    :cond_10
    aget v1, v10, v6

    const/16 v8, 0x2e

    const/4 v9, 0x5

    if-eqz v1, :cond_12

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    move-object v5, v14

    goto :goto_8

    :cond_11
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v2, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v2

    invoke-interface {v1, v7, v9, v8, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    :goto_8
    aget v1, v10, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_12
    aget v1, v11, v6

    if-eqz v1, :cond_15

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_13

    move-object v5, v14

    goto :goto_9

    :cond_13
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v2, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v9, v8, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v5, v1

    :goto_9
    aget v1, v11, v6

    aget v2, v13, v6

    not-int v2, v2

    and-int/2addr v2, v1

    if-nez v2, :cond_14

    move v4, v7

    goto :goto_a

    :cond_14
    move v4, v6

    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_15
    :goto_b
    iget v1, v0, Landroid/view/InsetsController;->mControllableTypes:I

    if-eq v1, v15, :cond_17

    xor-int/2addr v1, v15

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iput-boolean v7, v0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_16
    iput v15, v0, Landroid/view/InsetsController;->mControllableTypes:I

    :cond_17
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {v0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    :cond_18
    invoke-virtual {v0, v14}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .locals 5

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStateChanged: host="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", from="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InsetsController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onStateChanged, notifyInsetsChanged"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v0, p1, v1}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    :cond_2
    iget-object p0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {p0, p1, v4}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return v4
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method blacklist reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isRelaunchingRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v1, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    :goto_1
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    const/16 v2, 0x30

    if-eq v0, v1, :cond_5

    xor-int/2addr v1, v0

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_3
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iput v0, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1, v0, p1}, Landroid/view/InsetsController$Host;->updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-ne v2, p1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    sget p1, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsSourceControl;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v5

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    sget-object v9, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, v1, [I

    new-array v7, v1, [I

    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v0, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->removeSource(I)V

    iget-object p1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    sget v0, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    if-eqz v2, :cond_3

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, v1, [I

    new-array v7, v1, [I

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    :cond_3
    :goto_1
    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    return-void
.end method

.method public blacklist setPredictiveBackImeHideAnimInProgress(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/view/InsetsAnimationControlRunner;->updateLayoutInsetsDuringAnimation(I)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setRequestedVisibleTypes(II)V
    .locals 3

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    if-eq v0, p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->undoPreliminaryClear()V

    :cond_0
    sget-object v0, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Setting requestedVisibleTypes to %d (was %d)"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRequestedVisibleTypes: visible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mask="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", host="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", from="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InsetsController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .locals 1

    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .locals 2

    iget v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget p0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int p0, p0

    and-int/2addr p0, p2

    invoke-interface {v0, p1, p0}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    return-void
.end method

.method public whitelist show(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist show(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 12

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    const-string v1, "InsetsController"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "show(ime(), fromIme="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v0

    const/4 v3, 0x5

    const/16 v4, 0x1a

    invoke-interface {p3, v2, v3, v4, v0}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p3

    :cond_0
    move-object v8, p3

    const-string p3, "IC.showRequestFromApiToImeReady"

    const-wide/16 v3, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    const-string v9, "InsetsController#show"

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-static {v3, v4, p3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string p3, "IC.showRequestFromIme"

    invoke-static {v3, v4, p3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v5, "IC.showRequestFromApi"

    invoke-static {v3, v4, v5, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-static {v3, v4, p3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p2, :cond_3

    iget-object p3, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz p3, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p1

    new-instance p2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v8, p2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    :cond_2
    invoke-direct {p0, v8}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_3
    iget-object p3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result p3

    move v4, v0

    move v3, v2

    :goto_1
    const/16 v5, 0x200

    if-gt v3, v5, :cond_10

    and-int v5, p1, v3

    if-nez v5, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v5

    iget v6, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v0

    :goto_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    if-ne v3, v7, :cond_6

    move v7, v2

    goto :goto_3

    :cond_6
    move v7, v0

    :goto_3
    if-eqz v6, :cond_8

    if-eqz v7, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    const/4 v9, -0x1

    if-ne v5, v9, :cond_8

    move v9, v2

    goto :goto_4

    :cond_8
    move v9, v0

    :goto_4
    if-nez v5, :cond_9

    move v10, v2

    goto :goto_5

    :cond_9
    move v10, v0

    :goto_5
    const/16 v11, 0x20

    if-nez v9, :cond_d

    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz p2, :cond_b

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    iget-boolean v5, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-nez v5, :cond_b

    if-eqz v7, :cond_f

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    invoke-interface {v5, v8, v11}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_7

    :cond_b
    if-eqz v7, :cond_c

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    invoke-interface {v5, v8, v11}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_c
    or-int/2addr v4, v3

    goto :goto_7

    :cond_d
    :goto_6
    sget-boolean v9, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v9, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v9, v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "show ignored for type: %d animType: %d requestedVisible: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v7, :cond_f

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    invoke-interface {v5, v8, v11}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    const-string v6, "actionHandleIgnoredShow"

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->sendInsetsControllerMsg(Ljava/lang/String;)V

    :cond_f
    :goto_7
    shl-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_10
    sget-boolean p1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz p1, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "show typesReady: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p1

    if-nez p1, :cond_12

    if-eqz p2, :cond_13

    :cond_12
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_13

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p1

    new-instance p3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v8, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    :cond_13
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda11;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist updateCompatSysUiVisibility()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/view/InsetsController;->mControllableTypes:I

    iget p0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    not-int p0, p0

    or-int/2addr p0, v3

    invoke-interface {v0, v1, v2, p0}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(III)V

    :cond_0
    return-void
.end method

.class public Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.super Ljava/lang/Object;
.source "FreeformResizeGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;,
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;,
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$FreeformGuideWindowType;
    }
.end annotation


# static fields
.field private static final blacklist DEFER_DISMISSING_TIMEOUT_MARGIN:J = 0xaL

.field private static final blacklist INVALID_MAX_SIZE:I = -0x1

.field private static final blacklist INVALID_MIN_SIZE:I = -0x1

.field public static final blacklist MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field public static final blacklist MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field public static final blacklist STATE_MINIMIZING:I = 0x1

.field public static final blacklist STATE_NONE:I = -0x1

.field public static final blacklist STATE_RESIZING:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "FreeformResizeGuide"


# instance fields
.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCtrlType:I

.field private blacklist mDeferDismissingTimeout:J

.field private blacklist mDismissRequested:Z

.field private blacklist mDismissed:Z

.field private final blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mFreeformGuideViewFullscreenMargin:I

.field private final blacklist mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

.field private final blacklist mInDesktopWindowing:Z

.field private blacklist mIsNonResizableInDesktopWindowing:Z

.field private final blacklist mLastBounds:Landroid/graphics/Rect;

.field private blacklist mMaxHeight:I

.field private blacklist mMaxWidth:I

.field private blacklist mMinHeight:I

.field private blacklist mMinWidth:I

.field private blacklist mMinimizeFreeformPadding:I

.field private final blacklist mMinimizeTriggerBounds:Landroid/graphics/Rect;

.field private blacklist mNeedToFullscreenTransition:Z

.field private final blacklist mNotAdjustedBounds:Landroid/graphics/Rect;

.field private blacklist mReadyToMinimize:Z

.field private final blacklist mStableBounds:Landroid/graphics/Rect;

.field private blacklist mState:I

.field private blacklist mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

.field private blacklist mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

.field private final blacklist mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDismissRequested(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissRequested:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowManager(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Lcom/samsung/android/multiwindow/FreeformResizeGuide;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/content/ComponentName;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mWindowManager:Landroid/view/WindowManager;

    new-instance v1, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x1090096

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->update(ILandroid/content/ComponentName;)V

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mInDesktopWindowing:Z

    return-void
.end method

.method private blacklist checkIfReadyToMinimize(Landroid/graphics/Rect;II)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    add-int/2addr v1, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_5
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-nez p1, :cond_b

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->isShowingAppIcon()Z

    move-result p1

    if-nez p1, :cond_b

    const/16 p1, 0x31

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->performHapticFeedback(I)V

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->showAppIcon()V

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-eqz p1, :cond_b

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    iget p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_7

    move v2, v1

    :cond_7
    iget p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p3, :cond_8

    move v2, v1

    :cond_8
    iget p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p1, p2, :cond_9

    move v2, v1

    :cond_9
    iget p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p1, p3, :cond_a

    goto :goto_2

    :cond_a
    move v1, v2

    :goto_2
    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->hideAppIcon()V

    :cond_b
    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    return-void
.end method

.method private blacklist generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x18

    const/4 v5, -0x2

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string p0, "FreeformResizeGuideWindow"

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const p0, 0x800033

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const p0, 0x10305b6

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method private blacklist hideAppIcon()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->startHideAppIconAnimation()V

    return-void
.end method

.method private blacklist isShowingAppIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->isShowingAppIcon()Z

    move-result p0

    return p0
.end method

.method private blacklist performHapticFeedback(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->performHapticFeedback(I)Z

    return-void
.end method

.method private blacklist showAppIcon()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->startShowAppIconAnimation()V

    return-void
.end method

.method private blacklist snapToFullscreen(Landroid/graphics/Rect;)Z
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return p0
.end method


# virtual methods
.method public blacklist adjustDexDockingTaskBounds(ILandroid/graphics/Rect;I)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p3

    iput p0, p2, Landroid/graphics/Rect;->right:I

    return-void

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    iget p0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p3

    iput p0, p2, Landroid/graphics/Rect;->left:I

    :cond_1
    return-void
.end method

.method public blacklist adjustMinMaxSize(Landroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    if-gt v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    if-lt v4, v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    if-lt v5, v6, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mIsNonResizableInDesktopWindowing:Z

    if-eqz v6, :cond_7

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v0, v3

    move v1, v0

    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    move v4, v3

    move v5, v4

    :cond_7
    if-eqz v0, :cond_9

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_8

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_8
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    :cond_9
    :goto_4
    if-eqz v1, :cond_b

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_a
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    :cond_b
    :goto_5
    if-eqz v4, :cond_d

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_c

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :cond_c
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    :cond_d
    :goto_6
    if-eqz v5, :cond_f

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_e

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_e
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    :cond_f
    :goto_7
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    move p1, v3

    goto :goto_8

    :cond_10
    move p1, v2

    :goto_8
    if-eqz v4, :cond_11

    if-eqz v5, :cond_11

    move v0, v3

    goto :goto_9

    :cond_11
    move v0, v2

    :goto_9
    if-nez p1, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    move v2, v3

    :cond_13
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateGuideState(I)Z

    return-void
.end method

.method public blacklist canResizeGesture()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->needToFullscreenTransition()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->readyToMinimize()Z

    move-result p0

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

.method public blacklist dismiss()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissRequested:Z

    iget-wide v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    if-nez p0, :cond_0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v4, p0, v2, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public blacklist getMinHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    return p0
.end method

.method public blacklist handleResizeGesture(Landroid/graphics/Rect;II)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreenIfNeeded(Landroid/graphics/Rect;I)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->checkIfReadyToMinimize(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public blacklist hide()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->hide()V

    return-void
.end method

.method blacklist isDexTaskDocked(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist needToFullscreenTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return p0
.end method

.method public blacklist readyToMinimize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    return p0
.end method

.method public blacklist resetGestureState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return-void
.end method

.method public blacklist setCtrlType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    return-void
.end method

.method public blacklist setNotAdjustedBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist show(Landroid/graphics/Rect;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    if-eqz v6, :cond_1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public blacklist snapToBounds(J)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    return-void
.end method

.method public blacklist snapToBounds(Landroid/graphics/Rect;)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    return-void
.end method

.method public blacklist snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V
    .locals 0

    if-eqz p7, :cond_0

    iput-wide p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    :cond_0
    iget-object p7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    if-nez p7, :cond_1

    new-instance p7, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-direct {p7, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V

    iput-object p7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    goto :goto_0

    :cond_1
    invoke-static {p7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$mreset(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    :goto_0
    iget-object p7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {p7, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmAnimationDuration(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;J)V

    iget-object p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {p2, p4}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmInterpolator(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {p2, p5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmFromAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V

    iget-object p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {p2, p6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmToAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V

    iget-object p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    iput-object p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public blacklist snapToFullscreenIfNeeded(Landroid/graphics/Rect;I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public blacklist updateGuideState(I)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->setDimViewVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist updateMinMaxSizeIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p4, :cond_0

    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->desktopDefaultMinSize:I

    goto :goto_0

    :cond_0
    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    :goto_0
    invoke-static {p4, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p4

    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    :cond_1
    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-eq p4, v1, :cond_2

    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    :cond_2
    const/16 p4, 0x30

    invoke-static {p4, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p4

    const/16 v2, 0x20

    invoke-static {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    if-eq v2, v1, :cond_4

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    iput v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    :goto_2
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    if-eq v2, v1, :cond_6

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    :goto_4
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->preserveOrientationOnResize()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eq v1, v4, :cond_9

    const/4 v4, 0x6

    if-eq v1, v4, :cond_8

    const/4 v4, 0x7

    if-eq v1, v4, :cond_7

    move p3, v2

    goto :goto_6

    :cond_7
    if-eqz p3, :cond_8

    goto :goto_5

    :cond_8
    move p3, v3

    goto :goto_6

    :cond_9
    :goto_5
    move p3, v5

    :goto_6
    const v1, 0x3f99999a    # 1.2f

    if-ne p3, v3, :cond_a

    iget p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    iget p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_7

    :cond_a
    if-ne p3, v5, :cond_b

    iget p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    iget p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    :cond_b
    :goto_7
    iget-boolean p3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mInDesktopWindowing:Z

    if-eqz p3, :cond_14

    iget-boolean p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-nez p3, :cond_14

    iget-object p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object p3, p3, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iget-object p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    :cond_d
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-lez v1, :cond_14

    if-lez p3, :cond_14

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mIsNonResizableInDesktopWindowing:Z

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_e

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->hasOptOutEdgeToEdge()Z

    move-result p1

    invoke-static {v4, v5, p1}, Lcom/android/internal/policy/DesktopModeCompatUtils;->shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;)I

    move-result p1

    goto :goto_8

    :cond_e
    move p1, v2

    :goto_8
    if-lt v1, p3, :cond_f

    move v2, v3

    :cond_f
    invoke-static {v1, p3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getAspectRatio(II)F

    move-result p3

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v2, :cond_10

    iget p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float v0, p4

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    add-int/2addr p4, p1

    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    goto :goto_9

    :cond_10
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    int-to-float p4, p4

    mul-float/2addr p4, p3

    add-float/2addr p4, v1

    float-to-int p4, p4

    add-int/2addr p4, p1

    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    :goto_9
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/lit8 p4, p4, -0xa

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/lit8 p2, p2, -0xa

    sub-int/2addr p2, p1

    if-lt p4, p2, :cond_12

    iput p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    if-eqz v2, :cond_11

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_a

    :cond_11
    int-to-float p2, p2

    div-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_a

    :cond_12
    iput p4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    if-eqz v2, :cond_13

    int-to-float p2, p4

    div-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    goto :goto_a

    :cond_13
    int-to-float p2, p4

    mul-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    :goto_a
    iget p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    :cond_14
    return-void
.end method

.method public blacklist updateResizeGestureInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10501d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10502e1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    return-void
.end method

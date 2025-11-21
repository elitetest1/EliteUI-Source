.class public Lcom/android/internal/policy/WearGestureInterceptionDetector;
.super Ljava/lang/Object;
.source "WearGestureInterceptionDetector.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WearGestureInterceptionDetector"


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mDiscardIntercept:Z

.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private final blacklist mInstalledDecorView:Lcom/android/internal/policy/DecorView;

.field private blacklist mSwiping:Z

.field private final blacklist mSwipingStartThreshold:F

.field private final blacklist mTouchSlop:F


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    iput-object p2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    return-void
.end method

.method private blacklist canScroll(Landroid/view/View;ZZFF)Z
    .locals 11

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    int-to-float v5, v2

    add-float/2addr v5, p4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-gez v7, :cond_1

    int-to-float v7, v3

    add-float v7, p5, v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v5, v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v10, v7, v5

    const/4 v7, 0x1

    move-object v5, p0

    move v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result v6

    if-eqz v6, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    const/4 p0, -0x1

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getIndexForValidPointer(Landroid/view/MotionEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    :cond_0
    return p1
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, 0x10103f3

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method private blacklist resetMembers()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    return-void
.end method

.method private blacklist updateDiscardIntercept(Landroid/view/MotionEvent;I)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget-object v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result p0

    if-eqz p0, :cond_3

    iput-boolean v1, v2, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist updateSwiping(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    sub-float/2addr p1, v1

    mul-float v1, v0, v0

    mul-float v2, p1, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    mul-float/2addr v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist isIntercepting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    if-ne v3, v4, :cond_8

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->getIndexForValidPointer(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateSwiping(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateDiscardIntercept(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isIntercepting()Z

    move-result p0

    return p0
.end method

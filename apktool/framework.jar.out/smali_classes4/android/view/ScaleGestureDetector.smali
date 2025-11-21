.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final greylist-max-o ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final greylist-max-o ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final blacklist IGNORE_POINTER_COUNT:I = 0x4

.field private static final greylist-max-o SCALE_FACTOR:F = 0.5f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private greylist-max-o mAnchoredScaleMode:I

.field private greylist-max-o mAnchoredScaleStartX:F

.field private greylist-max-o mAnchoredScaleStartY:F

.field private blacklist mAreaRateCalculating:Z

.field private blacklist mAreaRateThreshold:F

.field private blacklist mAreaThreshold:F

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mCurrLenBeforeSqrt:F

.field private greylist-max-o mCurrSpanX:F

.field private greylist-max-o mCurrSpanY:F

.field private greylist-max-o mCurrTime:J

.field private greylist-max-o mEventBeforeOrAboveStartingGestureEvent:Z

.field private greylist-max-o mFocusX:F

.field private greylist-max-o mFocusY:F

.field private greylist-max-o mGestureDetector:Landroid/view/GestureDetector;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mInProgress:Z

.field private final greylist mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private greylist-max-p mMinSpan:I

.field private blacklist mPrevLenBeforeSqrt:F

.field private greylist-max-o mPrevSpanX:F

.field private greylist-max-o mPrevSpanY:F

.field private greylist-max-o mPrevTime:J

.field private greylist-max-o mQuickScaleEnabled:Z

.field private greylist-max-p mSpanSlop:I

.field private final blacklist mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private greylist-max-o mStylusScaleEnabled:Z

.field private blacklist mTempLenBeforeSqrt:F

.field private blacklist mUpdatePrevious:Z

.field private blacklist mUseTwoFingerSweep:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/ScaleGestureDetector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleMode(Landroid/view/ScaleGestureDetector;I)V
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleStartX(Landroid/view/ScaleGestureDetector;F)V
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleStartY(Landroid/view/ScaleGestureDetector;F)V
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/os/Handler;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    iput-boolean p3, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    const v0, 0x45bb8000    # 6000.0f

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    new-instance v0, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v0}, Landroid/view/ScaleGestureDetector$SaveState;-><init>()V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput p3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p5, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iget p3, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p3, p5

    iput p3, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    iput-object p4, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x12

    if-le p1, p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    const/16 p3, 0x16

    if-le p1, p3, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_1
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 7

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumScalingSpan()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;IILandroid/os/Handler;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    return-void
.end method

.method private blacklist getArea(Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v6, v3, v0

    if-lez v6, :cond_0

    sub-float v0, v3, v0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v3

    :goto_0
    iput v0, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v5, v4, p1

    if-lez v5, :cond_1

    sub-float v5, v4, p1

    goto :goto_1

    :cond_1
    sub-float v5, p1, v4

    :goto_1
    iput v5, v0, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v0, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v5, v6

    iput v5, v0, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    cmpg-float p1, p1, v4

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v3, v2

    :goto_3
    if-ge v2, v0, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    if-eqz v3, :cond_7

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_4

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    :cond_4
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_5

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    :cond_5
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_6

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    :cond_6
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_8

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    goto :goto_4

    :cond_7
    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v3, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v3, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v7, v3, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v7, v3, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    move v3, v1

    :cond_8
    :goto_4
    add-float/2addr v4, v6

    add-float/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    int-to-float p1, v0

    div-float v3, v4, p1

    div-float v4, v5, p1

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v0, p1, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v0, p1, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v0, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    :goto_5
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return-void
.end method

.method private greylist-max-o inAnchoredScaleMode()Z
    .locals 0

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method


# virtual methods
.method public whitelist getCurrentSpan()F
    .locals 2

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public whitelist getCurrentSpanX()F
    .locals 0

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public whitelist getCurrentSpanY()F
    .locals 0

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public whitelist getEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public whitelist getFocusX()F
    .locals 0

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return p0
.end method

.method public whitelist getFocusY()F
    .locals 0

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return p0
.end method

.method public whitelist getPreviousSpan()F
    .locals 2

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public whitelist getPreviousSpanX()F
    .locals 0

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public whitelist getPreviousSpanY()F
    .locals 0

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public whitelist getScaleFactor()F
    .locals 5

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_3

    return v2

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v3, v2

    return v3

    :cond_4
    sub-float/2addr v2, v3

    return v2

    :cond_5
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getScaleFactor: Cannot getScaleFactor, sqrtValue is NaN, mCurrLenBeforeSqrt = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPrevLenBeforeSqrt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScaleGestureDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    iget p0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public whitelist getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist isInProgress()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return p0
.end method

.method public whitelist isQuickScaleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return p0
.end method

.method public whitelist isStylusScaleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return p0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    const/4 v6, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v6, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v3

    :goto_3
    if-eqz v0, :cond_5

    if-eqz v7, :cond_8

    :cond_5
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    return v3

    :cond_8
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v9, 0xd5

    if-nez v8, :cond_16

    if-eq v0, v3, :cond_15

    if-eq v0, v6, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_9

    goto/16 :goto_8

    :cond_9
    iget-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v6, :cond_a

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v6

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_a
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_b

    const/4 p1, 0x6

    if-eq v0, p1, :cond_b

    const/4 p1, 0x5

    if-eq v0, p1, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    :cond_c
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_13

    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    :cond_d
    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    :cond_e
    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_f

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    :goto_5
    div-float/2addr p1, v0

    goto :goto_6

    :cond_f
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float p1, v0, p1

    goto :goto_6

    :cond_10
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    goto :goto_5

    :cond_11
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float/2addr v0, p1

    move p1, v0

    :goto_6
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1a

    goto :goto_7

    :cond_12
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1a

    :goto_7
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const-string p1, "ScaleGestureDetector"

    const-string v0, "TwScaleGestureDetector"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    goto :goto_b

    :cond_13
    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz p1, :cond_1a

    if-eq v0, v5, :cond_14

    if-ne v0, v9, :cond_1a

    :cond_14
    iget p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget p1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto :goto_b

    :cond_15
    :goto_8
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_b

    :cond_16
    if-eq v0, v5, :cond_18

    if-ne v0, v9, :cond_17

    goto :goto_9

    :cond_17
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_a

    :cond_18
    :goto_9
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_19

    return v3

    :cond_19
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget p1, p1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    :goto_a
    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget p1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget p1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    :cond_1a
    :goto_b
    return v3
.end method

.method public blacklist semSetUseTwoFingerSweep(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    return-void
.end method

.method public whitelist setQuickScaleEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {p1, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    return-void
.end method

.method public whitelist setStylusScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method

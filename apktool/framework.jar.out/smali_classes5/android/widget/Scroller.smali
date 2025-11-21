.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static greylist DECELERATION_RATE:F = 0.0f

.field private static final greylist-max-o DEFAULT_DURATION:I = 0xfa

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o FLING_MODE:I = 0x1

.field private static final greylist INFLEXION:F = 0.35f

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field private static final greylist-max-o P1:F = 0.175f

.field private static final greylist-max-o P2:F = 0.35000002f

.field private static final greylist-max-o SCROLL_MODE:I = 0x0

.field private static final greylist-max-o SPLINE_POSITION:[F

.field private static final greylist-max-o SPLINE_TIME:[F

.field private static final greylist-max-o START_TENSION:F = 0.5f


# instance fields
.field private greylist-max-o mCurrVelocity:F

.field private greylist-max-o mCurrX:I

.field private greylist-max-o mCurrY:I

.field private greylist mDeceleration:F

.field private greylist-max-o mDeltaX:F

.field private greylist-max-o mDeltaY:F

.field private greylist-max-o mDistance:I

.field private greylist mDuration:I

.field private greylist-max-o mDurationReciprocal:F

.field private greylist-max-o mFinalX:I

.field private greylist-max-o mFinalY:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private greylist-max-o mFlywheel:Z

.field private final greylist mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mMaxX:I

.field private greylist-max-o mMaxY:I

.field private greylist-max-o mMinX:I

.field private greylist-max-o mMinY:I

.field private greylist-max-o mMode:I

.field private greylist mPhysicalCoeff:F

.field private final greylist-max-o mPpi:F

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private greylist-max-o mVelocity:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 20

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/Scroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Scroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v4

    move/from16 v17, v5

    float-to-double v4, v15

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v4, v18

    if-gez v4, :cond_2

    sget-object v3, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    move/from16 v3, v16

    :goto_2
    sub-float v5, v3, v1

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    mul-float v6, v5, v8

    sub-float v9, v16, v5

    mul-float/2addr v6, v9

    mul-float v10, v9, v4

    add-float/2addr v10, v5

    mul-float/2addr v10, v6

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float/2addr v10, v12

    sub-float v14, v10, v17

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    cmpg-double v14, v14, v18

    if-gez v14, :cond_0

    sget-object v3, Landroid/widget/Scroller;->SPLINE_TIME:[F

    mul-float/2addr v9, v11

    mul-float/2addr v5, v13

    add-float/2addr v9, v5

    mul-float/2addr v6, v9

    add-float/2addr v6, v12

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v10, v17

    if-lez v6, :cond_1

    move v3, v5

    goto :goto_2

    :cond_1
    move v1, v5

    goto :goto_2

    :cond_2
    cmpl-float v4, v12, v17

    if-lez v4, :cond_3

    move v3, v6

    goto :goto_3

    :cond_3
    move v0, v6

    :goto_3
    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_1

    :cond_4
    move/from16 v16, v4

    sget-object v0, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v1, Landroid/widget/Scroller;->SPLINE_TIME:[F

    aput v16, v1, v3

    aput v16, v0, v3

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/widget/Scroller;->mPpi:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mDeceleration:F

    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    const p1, 0x3f570a3d    # 0.84f

    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    return-void
.end method

.method private greylist-max-o computeDeceleration(F)F
    .locals 1

    const v0, 0x43c10b3d

    iget p0, p0, Landroid/widget/Scroller;->mPpi:F

    mul-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private greylist-max-o getSplineDeceleration(F)D
    .locals 1

    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget p0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private greylist-max-o getSplineFlingDistance(F)D
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    sget p1, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget p0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    return-wide v4
.end method

.method private greylist-max-o getSplineFlingDuration(F)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide p0

    sget v0, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public whitelist abortAnimation()V
    .locals 1

    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public whitelist computeScrollOffset()Z
    .locals 8

    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    iget v3, p0, Landroid/widget/Scroller;->mMode:I

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_2

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v3

    sget-object v3, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v4, v3, v4

    aget v3, v3, v6

    sub-float/2addr v3, v4

    sub-float/2addr v7, v5

    div-float/2addr v3, v7

    sub-float/2addr v0, v5

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    int-to-float v0, v1

    div-float/2addr v3, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v0

    iput v3, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v1, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v1, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v1, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v1, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v1, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v3, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v0, v1, :cond_5

    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    iget v3, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    iget v3, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    iget v3, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1

    :cond_4
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    :cond_5
    :goto_1
    return v2
.end method

.method public whitelist extendDuration(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/Scroller;->mDuration:I

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public whitelist fling(IIIIIIII)V
    .locals 7

    iget-boolean v0, p0, Landroid/widget/Scroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v0

    mul-float/2addr v2, v0

    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    add-float/2addr v0, v1

    float-to-int p3, v0

    add-float/2addr v3, v2

    float-to-int p4, v3

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    int-to-double v0, p3

    int-to-double v2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mVelocity:F

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/Scroller;->mStartTime:J

    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    div-float/2addr p3, v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p4, p4

    div-float v2, p4, v0

    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p4

    float-to-double v0, p4

    mul-double/2addr v0, v3

    double-to-int p4, v0

    iput p4, p0, Landroid/widget/Scroller;->mDistance:I

    iput p5, p0, Landroid/widget/Scroller;->mMinX:I

    iput p6, p0, Landroid/widget/Scroller;->mMaxX:I

    iput p7, p0, Landroid/widget/Scroller;->mMinY:I

    iput p8, p0, Landroid/widget/Scroller;->mMaxY:I

    float-to-double p3, p3

    mul-double/2addr p3, v3

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget p3, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget p3, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    float-to-double p3, v2

    mul-double/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget p1, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget p2, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    return-void
.end method

.method public final whitelist forceFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public whitelist getCurrVelocity()F
    .locals 2

    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    return p0

    :cond_0
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x44fa0000    # 2000.0f

    div-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method public final whitelist getCurrX()I
    .locals 0

    iget p0, p0, Landroid/widget/Scroller;->mCurrX:I

    return p0
.end method

.method public final whitelist getCurrY()I
    .locals 0

    iget p0, p0, Landroid/widget/Scroller;->mCurrY:I

    return p0
.end method

.method public final whitelist getDuration()I
    .locals 0

    iget p0, p0, Landroid/widget/Scroller;->mDuration:I

    return p0
.end method

.method public final whitelist getFinalX()I
    .locals 0

    iget p0, p0, Landroid/widget/Scroller;->mFinalX:I

    return p0
.end method

.method public final whitelist getFinalY()I
    .locals 0

    iget p0, p0, Landroid/widget/Scroller;->mFinalY:I

    return p0
.end method

.method public final whitelist getStartX()I
    .locals 0

    iget p0, p0, Landroid/widget/Scroller;->mStartX:I

    return p0
.end method

.method public final whitelist getStartY()I
    .locals 0

    iget p0, p0, Landroid/widget/Scroller;->mStartY:I

    return p0
.end method

.method public final whitelist isFinished()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Scroller;->mFinished:Z

    return p0
.end method

.method public greylist-max-o isScrollingInDirection(FF)Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget p0, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist setFinalX(I)V
    .locals 1

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/Scroller;->mDeltaX:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public whitelist setFinalY(I)V
    .locals 1

    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/Scroller;->mDeltaY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public final whitelist setFriction(F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    return-void
.end method

.method public whitelist startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public whitelist startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    add-int/2addr p2, p4

    iput p2, p0, Landroid/widget/Scroller;->mFinalY:I

    int-to-float p1, p3

    iput p1, p0, Landroid/widget/Scroller;->mDeltaX:F

    int-to-float p1, p4

    iput p1, p0, Landroid/widget/Scroller;->mDeltaY:F

    iget p1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public whitelist timePassed()I
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

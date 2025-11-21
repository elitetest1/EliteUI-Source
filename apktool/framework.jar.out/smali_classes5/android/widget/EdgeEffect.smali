.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EdgeEffect$EdgeEffectType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANGLE:D = 0.5235987755982988

.field private static final greylist-max-o COS:F

.field private static final blacklist DAMPING_RATIO:D = 0.98

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field private static final blacklist EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final blacklist EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final blacklist EDGE_GLOW_COLOR_DARK:Ljava/lang/String; = "#fafafa"

.field private static final blacklist EDGE_GLOW_COLOR_LIGHT:Ljava/lang/String; = "#000000"

.field private static final blacklist EDGE_MAX_ALPAH_DARK:F = 0.08f

.field private static final blacklist EDGE_MAX_ALPAH_LIGHT:F = 0.05f

.field private static final blacklist EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final blacklist EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final greylist-max-o EPSILON:F = 0.001f

.field private static final blacklist EXP_STRETCH_INTENSITY:F = 0.016f

.field private static final greylist-max-o GLOW_ALPHA_START:F = 0.09f

.field private static final blacklist LINEAR_DISTANCE_TAKE_OVER:D = 8.0

.field private static final blacklist LINEAR_STRETCH_INTENSITY:F = 0.016f

.field private static final blacklist LINEAR_VELOCITY_TAKE_OVER:F = 200.0f

.field private static final greylist-max-o MAX_ALPHA:F = 0.15f

.field private static final greylist-max-o MAX_GLOW_SCALE:F = 2.0f

.field private static final greylist-max-o MAX_VELOCITY:I = 0x2710

.field private static final greylist-max-o MIN_VELOCITY:I = 0x64

.field private static final blacklist MSG_CALL_ONRELEASE:I = 0x1

.field private static final blacklist NATURAL_FREQUENCY:D = 24.657

.field private static final blacklist ON_ABSORB_VELOCITY_ADJUSTMENT:F = 2.0f

.field private static final greylist-max-o PULL_DECAY_TIME:I = 0x7d0

.field private static final greylist-max-o PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final greylist-max-o PULL_GLOW_BEGIN:F = 0.0f

.field private static final greylist-max-o PULL_TIME:I = 0xa7

.field private static final greylist-max-o RADIUS_FACTOR:F = 0.6f

.field private static final greylist-max-o RECEDE_TIME:I = 0x258

.field private static final blacklist SCROLL_DIST_AFFECTED_BY_EXP_STRETCH:F = 0.33f

.field private static final blacklist SEM_APPEAR_TIME:I = 0xfa

.field private static final blacklist SEM_KEEP_TIME:I = 0x0

.field private static final blacklist SEM_RECEDE_TIME:I = 0x1c2

.field private static final blacklist SEM_STATE_APPEAR:I = 0x5

.field private static final blacklist SEM_STATE_KEEP:I = 0x6

.field private static final greylist-max-o SIN:F

.field private static final greylist-max-o STATE_ABSORB:I = 0x2

.field private static final greylist-max-o STATE_IDLE:I = 0x0

.field private static final greylist-max-o STATE_PULL:I = 0x1

.field private static final greylist-max-o STATE_PULL_DECAY:I = 0x4

.field private static final greylist-max-o STATE_RECEDE:I = 0x3

.field private static final blacklist TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final blacklist TYPE_GLOW:I = 0x0

.field private static final blacklist TYPE_NONE:I = -0x1

.field private static final blacklist TYPE_STRETCH:I = 0x1

.field public static final blacklist USE_STRETCH_EDGE_EFFECT_BY_DEFAULT:J = 0xa34bbc0L

.field private static final blacklist VALUE_THRESHOLD:D = 0.001

.field private static final greylist-max-o VELOCITY_GLOW_FACTOR:I = 0x6

.field private static final blacklist VELOCITY_THRESHOLD:D = 0.01


# instance fields
.field private greylist-max-o mBaseGlowScale:F

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDisplacement:F

.field private blacklist mDistance:F

.field private greylist-max-o mDuration:F

.field private blacklist mEdgeEffectType:I

.field private blacklist mForceCallOnRelease:Ljava/lang/Runnable;

.field private greylist-max-o mGlowAlpha:F

.field private greylist-max-o mGlowAlphaFinish:F

.field private greylist-max-o mGlowAlphaStart:F

.field private greylist-max-r mGlowScaleY:F

.field private greylist-max-o mGlowScaleYFinish:F

.field private greylist-max-o mGlowScaleYStart:F

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHeight:F

.field private blacklist mHostView:Landroid/view/View;

.field private final greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field private final greylist-max-p mPaint:Landroid/graphics/Paint;

.field private final blacklist mPath:Landroid/graphics/Path;

.field private greylist-max-o mPullDistance:F

.field private greylist-max-o mRadius:F

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mTargetDisplacement:F

.field private blacklist mTempDeltaDistance:F

.field private blacklist mTempDisplacement:F

.field private blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private blacklist mTmpPoints:[F

.field private blacklist mVelocity:F

.field private blacklist mWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/EdgeEffect;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempDeltaDistance(Landroid/widget/EdgeEffect;)F
    .locals 0

    iget p0, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempDisplacement(Landroid/widget/EdgeEffect;)F
    .locals 0

    iget p0, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    new-instance v2, Landroid/widget/EdgeEffect$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/widget/EdgeEffect$1;-><init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/widget/EdgeEffect$2;

    invoke-direct {v2, p0}, Landroid/widget/EdgeEffect$2;-><init>(Landroid/widget/EdgeEffect;)V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, -0x99999a

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const-wide/32 v2, 0xa34bbc0

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p0, 0xffffff

    and-int/2addr p0, p2

    const/high16 p1, 0x33000000

    or-int/2addr p0, p1

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method private blacklist calculateDistanceFromGlowValues(FF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    sub-float/2addr p1, v0

    const p2, 0x3fb6db6e

    div-float/2addr p2, p1

    mul-float/2addr p2, p2

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    div-float/2addr p2, p0

    return p2

    :cond_1
    const p0, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method

.method private blacklist calculateEdgeEffectMargin(I)F
    .locals 2

    int-to-double p0, p1

    const-wide v0, 0x3fc16872b020c49cL    # 0.136

    mul-double/2addr p0, v0

    double-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private blacklist dampStretchVector(F)F
    .locals 5

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c83126f    # 0.016f

    mul-float/2addr v0, p1

    neg-float p1, p1

    float-to-double v1, p1

    const-wide v3, 0x402079748cecfc47L    # 8.237217334679498

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    const-wide v1, 0x3f90624de0000000L    # 0.01600000075995922

    mul-double/2addr v3, v1

    float-to-double v0, v0

    add-double/2addr v0, v3

    double-to-float p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private blacklist getCurrentEdgeEffectBehavior()I
    .locals 1

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    return p0
.end method

.method private blacklist isAtEquilibrium()Z
    .locals 6

    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iget p0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v2, p0

    const-wide/16 v4, 0x0

    cmpg-double p0, v0, v4

    if-ltz p0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, v2, v4

    if-gez p0, :cond_0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isEdgeEffectRunning()Z
    .locals 1

    iget p0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist max(FFFF)F
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private blacklist min(FFFF)F
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private greylist-max-o update()V
    .locals 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    invoke-direct {p0, v3, v2}, Landroid/widget/EdgeEffect;->calculateDistanceFromGlowValues(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    :cond_0
    iget v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v4, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    return-void

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    return-void

    :cond_3
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    return-void

    :cond_4
    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    :cond_5
    :goto_0
    return-void
.end method

.method private blacklist updateSpring()V
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-wide v1, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    const/4 v4, 0x0

    if-gtz v1, :cond_2

    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_2

    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    neg-float v5, v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    iget v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v1, v3

    iget v3, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v3, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    iput v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    return-void

    :cond_1
    iput v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    return-void

    :cond_2
    const-wide v1, 0x3fa4467381d7dc00L    # 0.03960000000000008

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v5, 0x4038a83126e978d5L    # 24.657

    mul-double/2addr v1, v5

    iget v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v6, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float v7, v5, v6

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double/2addr v9, v1

    const-wide v11, 0x403829f2ba9d1f60L    # 24.16386

    float-to-double v13, v5

    mul-double/2addr v13, v11

    float-to-double v5, v6

    mul-double/2addr v13, v5

    iget v5, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v5, v5

    add-double/2addr v13, v5

    mul-double/2addr v9, v13

    float-to-double v5, v3

    const-wide v11, -0x3fc7d60d4562e0a0L    # -24.16386

    mul-double/2addr v11, v5

    const-wide v13, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v9

    add-double v17, v17, v19

    move-wide/from16 v19, v5

    mul-double v4, v15, v17

    const-wide v15, -0x3fc757ced916872bL    # -24.657

    mul-double/2addr v15, v4

    const-wide v17, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double v15, v15, v17

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    neg-double v13, v1

    mul-double/2addr v13, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v13, v6

    mul-double/2addr v1, v9

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v1, v6

    add-double/2addr v13, v1

    mul-double/2addr v11, v13

    add-double v1, v15, v11

    double-to-float v4, v4

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    double-to-float v1, v1

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v1

    if-lez v2, :cond_3

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0}, Landroid/widget/EdgeEffect;->isAtEquilibrium()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v3, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v3, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v2

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_1

    invoke-direct {v0}, Landroid/widget/EdgeEffect;->update()V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v8, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v11, v0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v1, v4, v10, v8, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v10, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v4, v10

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v10, v4

    iget-object v4, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    iget v11, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, v0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    move/from16 v18, v5

    goto/16 :goto_1

    :cond_1
    if-ne v2, v5, :cond_5

    instance-of v2, v1, Landroid/graphics/RecordingCanvas;

    if-eqz v2, :cond_5

    iget v2, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v2, v3, :cond_2

    invoke-direct {v0}, Landroid/widget/EdgeEffect;->updateSpring()V

    :cond_2
    iget v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/RecordingCanvas;

    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0xc

    new-array v2, v2, [F

    iput-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    :cond_3
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v2, v6

    aput v7, v2, v5

    iget v8, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v9, 0x2

    aput v8, v2, v9

    aput v7, v2, v3

    const/4 v10, 0x4

    aput v8, v2, v10

    iget v11, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v12, 0x5

    aput v11, v2, v12

    const/4 v13, 0x6

    aput v7, v2, v13

    const/4 v14, 0x7

    aput v11, v2, v14

    iget v15, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float v16, v8, v15

    const/16 v17, 0x8

    aput v16, v2, v17

    const/16 v16, 0x9

    aput v7, v2, v16

    mul-float/2addr v8, v15

    const/16 v15, 0xa

    aput v8, v2, v15

    iget v8, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v11, v8

    const/16 v8, 0xb

    aput v11, v2, v8

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, v1, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    move/from16 v18, v5

    aget v5, v11, v6

    move/from16 p1, v8

    aget v8, v11, v9

    move/from16 v19, v9

    aget v9, v11, v10

    aget v11, v11, v13

    invoke-direct {v0, v5, v8, v9, v11}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v5

    add-float/2addr v2, v5

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v9, v8, v18

    aget v11, v8, v3

    move/from16 v20, v10

    aget v10, v8, v12

    aget v8, v8, v14

    invoke-direct {v0, v9, v11, v10, v8}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v8

    add-float/2addr v5, v8

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v9, v6

    aget v11, v9, v19

    move/from16 v19, v12

    aget v12, v9, v20

    aget v9, v9, v13

    invoke-direct {v0, v10, v11, v12, v9}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getTop()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v10, v18

    aget v12, v10, v3

    aget v13, v10, v19

    aget v10, v10, v14

    invoke-direct {v0, v11, v12, v13, v10}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v10, v15

    aget v10, v10, v17

    sub-float/2addr v11, v10

    sub-float v10, v8, v2

    div-float/2addr v11, v10

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-direct {v0, v10}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v10

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v12, p1

    aget v12, v12, v16

    sub-float/2addr v13, v12

    sub-float v12, v9, v5

    div-float/2addr v13, v12

    invoke-static {v4, v13}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v0, v4}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v4

    invoke-static {v10}, Ljava/lang/Float;->isFinite(F)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v11

    if-eqz v11, :cond_4

    move/from16 v11, v18

    goto :goto_0

    :cond_4
    move v11, v6

    :goto_0
    cmpl-float v2, v8, v2

    if-lez v2, :cond_6

    cmpl-float v2, v9, v5

    if-lez v2, :cond_6

    iget v2, v0, Landroid/widget/EdgeEffect;->mWidth:F

    cmpl-float v5, v2, v7

    if-lez v5, :cond_6

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    cmpl-float v8, v5, v7

    if-lez v8, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v1, v10, v4, v2, v5}, Landroid/graphics/RenderNode;->stretch(FFFF)Z

    goto :goto_1

    :cond_5
    move/from16 v18, v5

    iput v6, v0, Landroid/widget/EdgeEffect;->mState:I

    iput v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v7, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    :cond_6
    :goto_1
    iget v1, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v1, v3, :cond_7

    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_7

    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_7

    iput v6, v0, Landroid/widget/EdgeEffect;->mState:I

    move/from16 v1, v18

    goto :goto_2

    :cond_7
    move v1, v6

    :goto_2
    iget v0, v0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_9

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    return v6

    :cond_9
    :goto_3
    return v18
.end method

.method public whitelist finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    return-void
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .locals 0

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getColor()I
    .locals 0

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public whitelist getDistance()F
    .locals 0

    iget p0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    return p0
.end method

.method public whitelist getMaxHeight()I
    .locals 0

    iget p0, p0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-int p0, p0

    return p0
.end method

.method public whitelist isFinished()Z
    .locals 0

    iget p0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onAbsorb(I)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    iput p1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x2710

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    int-to-float v1, p1

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v3

    const v3, 0x3e19999a    # 0.15f

    add-float/2addr v1, v3

    iput v1, p0, Landroid/widget/EdgeEffect;->mDuration:F

    const v1, 0x3db851ec    # 0.09f

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    div-int/lit8 v0, p1, 0x64

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const v1, 0x391d4952    # 1.5E-4f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    const v1, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    const v1, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr p1, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public whitelist onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public whitelist onPull(FF)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget p2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    iget-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget v3, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v3, :cond_3

    iget p2, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    if-ne p2, v3, :cond_2

    iget p2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    goto :goto_0

    :cond_2
    iget p2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :cond_3
    :goto_0
    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 p2, 0x43270000    # 167.0f

    iput p2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    if-ne v0, v3, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    :cond_4
    iget p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    iget p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float p2, p2, v4

    if-nez p2, :cond_5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    goto :goto_1

    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    const p1, 0x3e19999a    # 0.15f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget p1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double p1, v1, p1

    sub-double/2addr v1, p1

    const-wide p1, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v1, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide v1, 0x3fe6666666666666L    # 0.7

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :goto_1
    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    if-ne v0, v3, :cond_6

    iget p1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/EdgeEffect;->mState:I

    :cond_6
    :goto_2
    return-void
.end method

.method public blacklist onPullCallOnRelease(FFI)V
    .locals 0

    iput p1, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    iput p2, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    iget-object p1, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long p2, p3

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public whitelist onPullDistance(FF)F
    .locals 5

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    add-float/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    sub-float/2addr p1, v1

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    if-nez v0, :cond_2

    iput v1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return p1
.end method

.method public whitelist onRelease()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    return-void
.end method

.method public blacklist semSetHostView(Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    return-void
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public whitelist setColor(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public whitelist setSize(II)V
    .locals 6

    int-to-float v0, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float v2, v0, v1

    sget v3, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v2, v3

    sget v4, Landroid/widget/EdgeEffect;->COS:F

    mul-float v5, v4, v2

    sub-float v5, v2, v5

    int-to-float p2, p2

    mul-float/2addr v1, p2

    div-float/2addr v1, v3

    mul-float/2addr v4, v1

    sub-float/2addr v1, v4

    iput v2, p0, Landroid/widget/EdgeEffect;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    div-float/2addr v1, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_0
    iput v3, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput v0, p0, Landroid/widget/EdgeEffect;->mWidth:F

    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:F

    return-void
.end method

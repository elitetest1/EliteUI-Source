.class public Landroid/widget/DifferentialMotionFlingHelper;
.super Ljava/lang/Object;
.source "DifferentialMotionFlingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;,
        Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;,
        Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFlingVelocityThresholds:[I

.field private blacklist mLastFlingVelocity:F

.field private blacklist mLastProcessedAxis:I

.field private blacklist mLastProcessedDeviceId:I

.field private blacklist mLastProcessedSource:I

.field private final blacklist mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

.field private final blacklist mVelocityProvider:Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;

.field private final blacklist mVelocityThresholdCalculator:Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field private final blacklist mWidgetFeatureFlags:Landroid/widget/flags/FeatureFlags;


# direct methods
.method public static synthetic blacklist $r8$lambda$GHhwo4cl8GfWqAIYz-C6onNp7jg(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper;->getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_NOuhKwlceU5KPfxkBzj3xbxKNM(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/widget/DifferentialMotionFlingHelper;->calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V
    .locals 6

    new-instance v3, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v5, Landroid/widget/flags/FeatureFlagsImpl;

    invoke-direct {v5}, Landroid/widget/flags/FeatureFlagsImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;Landroid/widget/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;Landroid/widget/flags/FeatureFlags;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedAxis:I

    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedSource:I

    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedDeviceId:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    iput-object p1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    iput-object p3, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityThresholdCalculator:Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;

    iput-object p4, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityProvider:Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;

    iput-object p5, p0, Landroid/widget/DifferentialMotionFlingHelper;->mWidgetFeatureFlags:Landroid/widget/flags/FeatureFlags;

    return-void
.end method

.method private static blacklist calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity(III)I

    move-result v2

    aput v2, p1, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity(III)I

    move-result p0

    aput p0, p1, v1

    return-void
.end method

.method private blacklist calculateFlingVelocityThresholds(Landroid/view/MotionEvent;I)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iget v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedSource:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedDeviceId:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedAxis:I

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityThresholdCalculator:Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;

    iget-object v3, p0, Landroid/widget/DifferentialMotionFlingHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    invoke-interface {v2, v3, v4, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;->calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedSource:I

    iput v1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedDeviceId:I

    iput p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedAxis:I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getCurrentVelocity(Landroid/view/MotionEvent;I)F
    .locals 1

    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityProvider:Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;

    iget-object p0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-interface {v0, p0, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;->getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method

.method private static blacklist getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    move-result p0

    return p0
.end method

.method private blacklist recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mWidgetFeatureFlags:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->enablePlatformWidgetDifferentialMotionFling()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper;->calculateFlingVelocityThresholds(Landroid/view/MotionEvent;I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Landroid/widget/DifferentialMotionFlingHelper;->recycleVelocityTracker()V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper;->getCurrentVelocity(Landroid/view/MotionEvent;I)F

    move-result p1

    iget-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    invoke-interface {p2}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;->getScaledScrollFactor()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastFlingVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    invoke-interface {p2}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;->stopDifferentialMotionFling()V

    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    aget v2, v0, v2

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    :goto_0
    return-void

    :cond_4
    const/4 p2, 0x1

    aget p2, v0, p2

    neg-int v0, p2

    int-to-float v0, v0

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    invoke-interface {p2, p1}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;->startDifferentialMotionFling(F)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, p1

    :cond_5
    iput v1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastFlingVelocity:F

    return-void
.end method

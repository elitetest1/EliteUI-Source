.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_DURATION:I = 0xfa

.field private static final blacklist ENABLE_STB_ANIMATION:Z

.field private static final greylist-max-o FLING_MODE:I = 0x1

.field private static final blacklist FRAME_LATENCY_LIMIT:F = 16.66f

.field private static final greylist-max-o SCROLL_MODE:I = 0x0

.field private static final blacklist X_INDEX:I = 0x0

.field private static final blacklist Y_INDEX:I = 0x1

.field private static blacklist sIntervalTime:J


# instance fields
.field private final greylist-max-o mFlywheel:Z

.field private greylist-max-r mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mMode:I

.field private final greylist-max-o mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final greylist mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsIntervalTime()J
    .locals 2

    sget-wide v0, Landroid/widget/OverScroller;->sIntervalTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "debug.stb.animation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/OverScroller;->ENABLE_STB_ANIMATION:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    new-instance p2, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    new-instance p2, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public whitelist abortAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public whitelist computeScrollOffset()Z
    .locals 8

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroid/widget/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    :cond_2
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    int-to-float v0, v0

    div-float/2addr v5, v0

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget-object v5, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    long-to-float v2, v2

    div-float/2addr v2, v0

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, v4, v0}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(FF)V

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, v4, v0}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(FF)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_5
    :goto_0
    return v1
.end method

.method public greylist extendDuration(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public whitelist fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public whitelist fling(IIIIIIIIII)V
    .locals 9

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    add-float/2addr v2, v0

    float-to-int p3, v2

    add-float/2addr v3, v1

    float-to-int p4, v3

    :cond_0
    move v2, p3

    const/4 p3, 0x1

    iput p3, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v4, p2

    move v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public blacklist fling(IIIIIIIIIIZ)V
    .locals 9

    if-eqz p11, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/widget/OverScroller;->sIntervalTime:J

    :cond_0
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p11, :cond_1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    int-to-float v3, p4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    add-float/2addr v2, v0

    float-to-int p3, v2

    add-float/2addr v3, v1

    float-to-int p4, v3

    :cond_1
    move v2, p3

    const/4 p3, 0x1

    iput p3, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v4, p2

    move v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public blacklist fling(IIIIIIIIIIZF)V
    .locals 9

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    add-float/2addr v2, v0

    float-to-int p3, v2

    add-float/2addr v3, v1

    float-to-int p4, v3

    :cond_0
    move v2, p3

    if-eqz p11, :cond_3

    const/4 p3, 0x0

    cmpg-float v0, p12, p3

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const p3, 0x418547ae    # 16.66f

    cmpl-float v0, p12, p3

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move/from16 p3, p12

    :goto_0
    float-to-long v0, p3

    sput-wide v0, Landroid/widget/OverScroller;->sIntervalTime:J

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/widget/OverScroller;->sIntervalTime:J

    :goto_1
    const/4 p3, 0x1

    iput p3, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v4, p2

    move v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method protected blacklist fling(IIIIIIIIZ)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    return-void
.end method

.method public final whitelist forceFinished(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    return-void
.end method

.method public whitelist getCurrVelocity()F
    .locals 4

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final whitelist getCurrX()I
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final whitelist getCurrY()I
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final greylist-max-o getDuration()I
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final whitelist getFinalX()I
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final whitelist getFinalY()I
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method blacklist getSplineFlingDistance(I)D
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D

    move-result-wide p0

    return-wide p0
.end method

.method public final whitelist getStartX()I
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final whitelist getStartY()I
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public greylist hidden_fling(IIIIIIIIZ)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    return-void
.end method

.method public greylist hidden_fling(IIZF)V
    .locals 13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move-object v0, p0

    move v3, p1

    move v4, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v0 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZF)V

    return-void
.end method

.method public final whitelist isFinished()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isOverScrolled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isScrollingInDirection(FF)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist notifyHorizontalEdgeReached(III)V
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public whitelist notifyVerticalEdgeReached(III)V
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public whitelist semSetSmoothScrollEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setMode(I)V

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setMode(I)V

    return-void
.end method

.method public greylist-max-o setFinalX(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public greylist-max-o setFinalY(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final whitelist setFriction(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method greylist setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {p1}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public whitelist springBack(IIIIII)Z
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p1

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public whitelist startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public greylist-max-o timePassed()I
    .locals 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object p0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

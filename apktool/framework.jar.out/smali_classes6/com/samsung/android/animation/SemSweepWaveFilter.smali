.class public Lcom/samsung/android/animation/SemSweepWaveFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepWaveFilter.java"


# static fields
.field private static final blacklist DEBUGGABLE:Z = false

.field private static final blacklist SWIPE_DURATION:I = 0x258

.field private static final blacklist TAG:Ljava/lang/String; = "SemSweepWaveFilter"

.field private static final blacklist WAVE_ANIMATION_DURATION:I = 0x514

.field private static final blacklist WAVE_BG_ALPHA:I = 0xe1

.field private static blacklist sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private final blacklist WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private blacklist incrementYdown:F

.field private blacklist incrementYup:F

.field private final blacklist leftColor:I

.field private blacklist mBaseWaveColor:Landroid/graphics/Paint;

.field private blacklist mBgLeftGreen:Landroid/graphics/Paint;

.field private blacklist mBgMiddleBlue:Landroid/graphics/Paint;

.field private blacklist mBgRightYellow:Landroid/graphics/Paint;

.field private blacklist mDeltaX:F

.field private blacklist mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private blacklist mEndXOfActionUpAnimator:F

.field private blacklist mGradientWidth:F

.field private blacklist mIsActionMove:Z

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mMiddleBlueRect:Landroid/graphics/RectF;

.field private blacklist mPathDown:Landroid/graphics/Path;

.field private blacklist mPathUp:Landroid/graphics/Path;

.field private blacklist mSweepBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private blacklist mSweepProgress:F

.field private blacklist mSweepRect:Landroid/graphics/Rect;

.field private blacklist mViewForeground:Landroid/view/View;

.field private final blacklist middleColor:I

.field private final blacklist rightColor:I

.field private blacklist waveBaseColor:I

.field private blacklist waveControlPointHeight:F

.field private blacklist waveHeight:F

.field private blacklist waveValueAnimator:Landroid/animation/ValueAnimator;

.field private blacklist waveWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeltaX(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewForeground(Lcom/samsung/android/animation/SemSweepWaveFilter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwaveHeight(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputincrementYdown(Lcom/samsung/android/animation/SemSweepWaveFilter;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputincrementYup(Lcom/samsung/android/animation/SemSweepWaveFilter;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDrawWaveEffect(Lcom/samsung/android/animation/SemSweepWaveFilter;Landroid/view/View;FI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemSweepWaveFilter;->doDrawWaveEffect(Landroid/view/View;FI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/ListView;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    const/16 v0, 0xaa

    const/16 v1, 0x13

    const/16 v2, 0x61

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    const/16 v1, 0x5c

    const/16 v2, 0x7e

    const/16 v3, 0xc

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    const/16 v2, 0xe8

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    const/16 v3, 0xff

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43c80000    # 400.0f

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    iput-boolean v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method private blacklist cancelRunningAnimator()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private blacklist doDrawWaveEffect(Landroid/view/View;FI)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p3, p2, p1}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private blacklist drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 9

    iget v3, p2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    neg-int v3, v3

    invoke-virtual {p2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    add-float v5, v3, v4

    mul-float/2addr v5, p3

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v7, :cond_0

    sub-float/2addr v5, v4

    div-float/2addr v4, v8

    add-float v3, v5, v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    cmpg-float v1, v5, v6

    if-gez v1, :cond_1

    add-float/2addr v3, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    iget v4, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v9, p3, v4

    iget v4, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iget v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    int-to-float v13, v6

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v9

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v9

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    move v10, v8

    add-float v8, v4, v10

    iget v11, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v12, v4, v11

    sub-float v10, v12, v10

    add-float v12, v4, v11

    move v11, v9

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v8, v4, v7

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v10

    iget v11, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    move v12, v7

    move v7, v9

    add-float v9, v7, v11

    mul-float v15, v12, v5

    add-float/2addr v15, v4

    sub-float v10, v15, v10

    add-float/2addr v11, v7

    mul-float/2addr v12, v5

    add-float/2addr v12, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v9, v7

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v9

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v10, v8, v5

    add-float/2addr v10, v4

    iget v11, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v10, v11

    const/high16 v15, 0x40400000    # 3.0f

    mul-float v12, v8, v15

    add-float/2addr v12, v4

    sub-float/2addr v12, v11

    mul-float/2addr v8, v15

    add-float/2addr v8, v4

    move v11, v9

    move/from16 v18, v12

    move v12, v8

    move v8, v10

    move/from16 v10, v18

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v8, v7, v15

    add-float/2addr v8, v4

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v10

    iget v11, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    move v12, v7

    move v7, v9

    add-float v9, v7, v11

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v17, v12, v16

    add-float v17, v4, v17

    sub-float v10, v17, v10

    add-float/2addr v11, v7

    mul-float v12, v12, v16

    add-float/2addr v12, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v9, v7

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v7, v7, v16

    add-float/2addr v7, v4

    invoke-virtual {v6, v14, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v6, v13, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v9

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v9

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    move v10, v8

    add-float v8, v4, v10

    iget v11, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v12, v4, v11

    sub-float v10, v12, v10

    add-float v12, v4, v11

    move v11, v9

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v8, v4, v7

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v10

    iget v11, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    move v12, v7

    move v7, v9

    add-float v9, v7, v11

    mul-float v14, v12, v5

    add-float/2addr v14, v4

    sub-float v10, v14, v10

    add-float/2addr v11, v7

    mul-float/2addr v12, v5

    add-float/2addr v12, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v9, v7

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v9

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v4

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v5, v10

    mul-float v11, v8, v15

    add-float/2addr v11, v4

    sub-float v10, v11, v10

    mul-float/2addr v8, v15

    add-float v12, v4, v8

    move v11, v9

    move v8, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v15, v5

    add-float/2addr v15, v4

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v8, v15, v7

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    move v11, v7

    move v7, v9

    add-float v9, v7, v10

    mul-float v12, v5, v16

    add-float/2addr v12, v4

    sub-float/2addr v12, v11

    add-float v11, v7, v10

    mul-float v5, v5, v16

    add-float/2addr v5, v4

    move v10, v12

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v6, v6, v16

    add-float/2addr v4, v6

    invoke-virtual {v5, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_0

    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private blacklist drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    instance-of v5, v3, Landroid/widget/ListView;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    add-int v5, p1, v1

    invoke-direct {v3, v2, p1, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_2
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method private blacklist getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 0

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xe1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object p0
.end method

.method private blacklist initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    div-int/lit8 p3, p1, 0x2

    int-to-float p3, p3

    iput p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    div-int/lit8 p3, p1, 0xd

    int-to-float p3, p3

    iput p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/samsung/android/animation/SemSweepWaveFilter$1;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter$1;-><init>(Lcom/samsung/android/animation/SemSweepWaveFilter;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x514

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist removeCachedBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float p1, p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v0

    cmpl-float v2, p4, v0

    if-lez v2, :cond_0

    move p4, v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-int/lit8 p3, p3, 0x6

    int-to-float p3, p3

    cmpl-float p3, v2, p3

    const-wide/16 v2, 0x258

    if-lez p3, :cond_1

    if-eqz p5, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, v0, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result p2

    goto :goto_0

    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, v0

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    const/high16 p2, 0x44160000    # 600.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    int-to-long v2, p2

    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 p3, 0x0

    aput p1, p0, p3

    const/4 p1, 0x1

    aput p2, p0, p1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public blacklist doMoveAction(Landroid/view/View;FI)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float p1, p2, p1

    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    return-void
.end method

.method public blacklist doRefresh()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->removeCachedBitmap()V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->cancelRunningAnimator()V

    return-void
.end method

.method public blacklist doUpActionWhenAnimationUpdate(IF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public blacklist getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEndXOfActionUpAnimator()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    return p0
.end method

.method public blacklist initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V

    return-void
.end method

.method public bridge synthetic blacklist isAnimationBack()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result p0

    return p0
.end method

.method public blacklist setForegroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    return-void
.end method

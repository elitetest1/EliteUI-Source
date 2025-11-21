.class public Lcom/samsung/android/animation/SemSweepTranslationFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepTranslationFilter.java"


# static fields
.field private static final blacklist BG_ALPHA:I = 0xe1

.field private static final blacklist COEFFICIENT_FOR_VELOCITY_ADJUSTMENT:I = 0x17

.field private static final blacklist DEBUGGABLE:Z = false

.field private static final blacklist DEBUGGABLE_LOW:Z = true

.field private static final blacklist DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final blacklist DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final blacklist SWEEP_TEXT_PADDING_DP:I = 0x10

.field private static final blacklist SWIPE_DURATION:I = 0x258

.field private static final blacklist TAG:Ljava/lang/String; = "SemSweepTranslationFilter"

.field private static blacklist VELOCITY_UNITS:I

.field private static blacklist sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist SWEEP_TEXT_PADDING_PX:I

.field private final blacklist leftColor:I

.field private blacklist mBgLeftToRight:Landroid/graphics/Paint;

.field private blacklist mBgRightToLeft:Landroid/graphics/Paint;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private blacklist mEndXOfActionUpAnimator:F

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mSweepBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

.field private blacklist mSweepDirection:I

.field private blacklist mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private blacklist mSweepRect:Landroid/graphics/Rect;

.field private blacklist mSweepRectFullyDrawn:Z

.field private blacklist mTextPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaintSize:I

.field private blacklist mViewForeground:Landroid/view/View;

.field private blacklist mViewTop:I

.field private final blacklist rightColor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->VELOCITY_UNITS:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    const-string v0, "#6ebd52"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->leftColor:I

    const-string v1, "#56c0e5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->rightColor:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/16 v2, 0x50

    iput v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    iput v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->convertDipToPixels(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->SWEEP_TEXT_PADDING_PX:I

    return-void
.end method

.method private static blacklist convertDipToPixels(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private blacklist drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p4, 0x0

    cmpl-float p4, p7, p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget p7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float p7, p7

    invoke-virtual {p4, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p8, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p8, p5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p6, p5}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private blacklist drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;
    .locals 14

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    instance-of v4, v3, Landroid/widget/ListView;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    move v3, v11

    :goto_0
    iput v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v3, v10

    invoke-direct {v4, v1, v3, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_3
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v11, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v12, v4, v5

    const/4 v4, 0x0

    cmpl-float v5, p3, v4

    const-string v6, "SemSweepTranslationFilter"

    if-lez v5, :cond_6

    iput v11, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    const-string/jumbo v0, "mSweepConfiguration.drawableLeftToRight is null"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v4, Landroid/graphics/Rect;

    move/from16 v5, p2

    float-to-int v13, v5

    invoke-direct {v4, v11, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v7, v7, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    add-int/2addr v3, v7

    invoke-direct {v5, v6, v11, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v2, v10, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5, v11, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorLeftToRight:I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorLeftToRight:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v6, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v7, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v8, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    move-object v2, v4

    const/16 v4, 0xff

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    float-to-int v4, v12

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v7, v7, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_6
    cmpg-float v4, p3, v4

    if-gez v4, :cond_9

    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v4, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    const-string/jumbo v0, "mSweepConfiguration.drawableRightToLeft is null"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v5, Landroid/graphics/Rect;

    float-to-int v3, v3

    sub-int v13, v9, v3

    invoke-direct {v5, v13, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v5

    new-instance v5, Landroid/graphics/Rect;

    sub-int v4, v9, v4

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int/2addr v9, v6

    invoke-direct {v5, v4, v11, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v2, v10, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5, v11, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-eqz v2, :cond_8

    iget v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorRightToLeft:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v4, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorRightToLeft:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    move-object v2, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v6, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v7, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v8, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xff

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    float-to-int v4, v12

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v7, v7, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    :cond_9
    return-object v1
.end method

.method private blacklist drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    if-eqz p4, :cond_1

    iget v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget p4, p4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v5, v5, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int/2addr p4, v5

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    :goto_0
    int-to-float p4, p4

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    add-int/2addr p4, v1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_2
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float/2addr v4, v1

    add-float/2addr v0, v4

    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput-boolean v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    :cond_3
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist drawTextToCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p3, v2, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr p0, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr p0, v1

    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

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

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object p0
.end method


# virtual methods
.method public blacklist createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    move v0, v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SemSweepTranslationFilter : createActionUpAnimator() : Math.abs(adjustedVelocityX) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemSweepTranslationFilter"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "SemSweepTranslationFilter : createActionUpAnimator() : scaledTouchSlop * 23 = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 p3, p3, 0x17

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float p3, p3

    cmpl-float p3, v3, p3

    const-wide/16 v5, 0x258

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x44160000    # 600.0f

    const/4 v9, 0x1

    if-lez p3, :cond_2

    if-eqz p5, :cond_2

    const-string p3, "SemSweepTranslationFilter : createActionUpAnimator() : kick in animation with given velocity, point #1"

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v1

    sub-float/2addr v3, p3

    mul-float/2addr v3, v8

    float-to-int p3, v3

    int-to-long p3, p3

    cmp-long p5, p3, v5

    if-lez p5, :cond_1

    move-wide p3, v5

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p2, v1

    move v3, v7

    move v7, p2

    goto :goto_0

    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, v1, p2

    cmpl-float p2, v2, p2

    if-lez p2, :cond_3

    const-string p2, "SemSweepTranslationFilter : createActionUpAnimator() : Greater than a half of the width, point #2"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, v1

    sub-float/2addr v3, p2

    mul-float/2addr v3, v8

    float-to-int p2, v3

    int-to-long p2, p2

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result p4

    mul-float/2addr p4, v1

    move v3, v7

    move v7, p4

    move-wide p3, p2

    goto :goto_0

    :cond_3
    const-string p2, "SemSweepTranslationFilter : createActionUpAnimator() : Not far enough - animate it back, point #3"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, v8

    div-float/2addr p2, v1

    float-to-int p2, p2

    int-to-long p3, p2

    iput-boolean v9, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mIsAnimationBack:Z

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-gez p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v5, p3

    :goto_1
    iput v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p2, v9, [F

    const/4 p3, 0x0

    aput v3, p2, p3

    invoke-static {p0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p4, v9, [F

    aput v7, p4, p3

    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, p4, p3

    aput-object p2, p4, v9

    invoke-static {p1, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public blacklist doMoveAction(Landroid/view/View;FI)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {p1, p3, v0, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public blacklist doRefresh()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mIsAnimationBack:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->removeCachedBitmap()V

    return-void
.end method

.method public blacklist doUpActionWhenAnimationUpdate(IF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, v1, v0, p2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public blacklist getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

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

    iget p0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    return p0
.end method

.method public blacklist getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSweepBitmapDrawable : mDrawSweepBitmapDrawable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSweepTranslationFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public blacklist initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0

    iput-object p4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    return-void
.end method

.method public bridge synthetic blacklist isAnimationBack()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result p0

    return p0
.end method

.method public blacklist removeCachedBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public blacklist setForegroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    return-void
.end method

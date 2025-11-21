.class public Landroid/view/RoundScrollbarRenderer;
.super Ljava/lang/Object;
.source "RoundScrollbarRenderer.java"


# static fields
.field public static final blacklist BLUECHIP_ENABLED_SYSPROP:Ljava/lang/String; = "persist.cw_build.bluechip.enabled"

.field private static final greylist-max-o DEFAULT_THUMB_COLOR:I = -0x393939

.field private static final greylist-max-o DEFAULT_TRACK_COLOR:I = -0xd0cecf

.field private static final blacklist GAP_BETWEEN_TRACK_AND_THUMB_DP:F = 3.0f

.field private static final blacklist MAX_SCROLLBAR_ANGLE_SWIPE:F = 20.16f

.field private static final blacklist MIN_SCROLLBAR_ANGLE_SWIPE:F = 8.64f

.field private static final blacklist OUTER_PADDING_DP:F = 2.0f

.field private static final blacklist RESIZING_RATE:F = 0.8f

.field private static final blacklist RESIZING_THRESHOLD_PX:I = 0x14

.field private static final blacklist SCROLLBAR_ANGLE_RANGE:F = 28.8f


# instance fields
.field private blacklist mCurrentScrollDiff:F

.field private blacklist mDrawToLeft:Z

.field private final blacklist mGapBetweenThumbAndTrackPx:F

.field private blacklist mGapBetweenTrackAndThumbAsDegrees:F

.field private final blacklist mInset:F

.field private blacklist mMaxScrollDiff:F

.field private final greylist-max-o mParent:Landroid/view/View;

.field private blacklist mPreviousCurrentScroll:F

.field private blacklist mPreviousMaxScroll:F

.field private final greylist-max-o mRect:Landroid/graphics/RectF;

.field private final greylist-max-o mThumbPaint:Landroid/graphics/Paint;

.field private blacklist mThumbStrokeWidthAsDegrees:F

.field private final greylist-max-o mTrackPaint:Landroid/graphics/Paint;

.field private final blacklist mUseRefactoredRoundScrollbar:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x10500e9

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x10503fd

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v4}, Landroid/view/RoundScrollbarRenderer;->dpToPx(F)F

    move-result v4

    iput v4, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenThumbAndTrackPx:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float v0, v3

    add-float/2addr p1, v0

    iput p1, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    invoke-static {}, Landroid/view/flags/Flags;->useRefactoredRoundScrollbar()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "persist.cw_build.bluechip.enabled"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/view/RoundScrollbarRenderer;->mUseRefactoredRoundScrollbar:Z

    return-void
.end method

.method private static greylist-max-o applyAlpha(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private blacklist applyThumbColor(F)V
    .locals 1

    const v0, -0x393939

    invoke-static {v0, p1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result p1

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private blacklist applyTrackColor(F)V
    .locals 1

    const v0, -0xd0cecf

    invoke-static {v0, p1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result p1

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private static greylist-max-o clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private blacklist computeScrollExtent(FF)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, -0x40800000    # -1.0f

    if-gtz v1, :cond_1

    iget-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    cmpg-float p0, p2, p1

    if-gtz p0, :cond_2

    return v2

    :cond_2
    return p1
.end method

.method private blacklist computeStartAngle(FFFF)F
    .locals 0

    const p0, 0x41e66666    # 28.8f

    sub-float/2addr p0, p2

    mul-float/2addr p1, p0

    sub-float/2addr p3, p4

    div-float/2addr p1, p3

    const p0, 0x41666666    # 14.4f

    sub-float/2addr p1, p0

    const p3, -0x3e99999a    # -14.4f

    sub-float/2addr p0, p2

    invoke-static {p1, p3, p0}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method private blacklist computeSweepAngle(FF)F
    .locals 0

    div-float/2addr p1, p2

    const p0, 0x41e66666    # 28.8f

    mul-float/2addr p1, p0

    const p0, 0x410a3d71    # 8.64f

    const p2, 0x41a147ae    # 20.16f

    invoke-static {p1, p0, p2}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method private blacklist dpToPx(F)F
    .locals 0

    iget-object p0, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x43200000    # 160.0f

    div-float/2addr p1, p0

    return p1
.end method

.method private blacklist draw(Landroid/graphics/Canvas;FFF)V
    .locals 3

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    const v1, -0x3e99999a    # -14.4f

    sub-float/2addr v1, v0

    sub-float v0, p2, v0

    iget v2, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    sub-float/2addr v0, v2

    invoke-direct {p0, p1, v1, v0, p4}, Landroid/view/RoundScrollbarRenderer;->drawTrack(Landroid/graphics/Canvas;FFF)V

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    add-float/2addr p2, p3

    iget p3, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    add-float/2addr p2, p3

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    add-float/2addr p2, v0

    const v0, 0x41666666    # 14.4f

    add-float/2addr p3, v0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/RoundScrollbarRenderer;->drawTrack(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private blacklist drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 11

    iget-boolean v1, p0, Landroid/view/RoundScrollbarRenderer;->mDrawToLeft:Z

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v4, v0, p2

    neg-float v5, p3

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v6, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    move-object v5, p1

    move v7, p2

    move v8, p3

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist drawRoundScrollbars(Landroid/graphics/Canvas;FFF)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/RoundScrollbarRenderer;->mUseRefactoredRoundScrollbar:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/RoundScrollbarRenderer;->draw(Landroid/graphics/Canvas;FFF)V

    return-void

    :cond_0
    invoke-direct {p0, p4}, Landroid/view/RoundScrollbarRenderer;->applyTrackColor(F)V

    const p4, 0x41e66666    # 28.8f

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    const v1, -0x3e99999a    # -14.4f

    invoke-direct {p0, p1, v1, p4, v0}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    iget-object p4, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist drawTrack(Landroid/graphics/Canvas;FFF)V
    .locals 4

    sub-float/2addr p3, p2

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    sub-float v2, p3, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    add-float/2addr p2, v0

    iget-object p3, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    div-float v0, p3, v1

    add-float/2addr p2, v0

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v0, p3}, Landroid/view/RoundScrollbarRenderer;->getKiteEdge(FF)F

    move-result p3

    mul-float/2addr v1, p3

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr p4, v0

    const/high16 v2, 0x800000

    :goto_0
    invoke-direct {p0, p4}, Landroid/view/RoundScrollbarRenderer;->applyTrackColor(F)V

    iget-object p4, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, v2, p3}, Landroid/view/RoundScrollbarRenderer;->drawArc(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private static blacklist getKiteEdge(FF)F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    float-to-double v1, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v1, p0

    double-to-float p0, v1

    return p0
.end method

.method private static blacklist getVertexAngle(FF)F
    .locals 1

    mul-float/2addr p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    mul-float/2addr p1, p1

    sub-float p1, p0, p1

    div-float/2addr p1, p0

    invoke-static {p1}, Landroid/util/MathUtils;->acos(F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private blacklist resizeGradually(FF)V
    .locals 4

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    sub-float v0, p1, v0

    add-float/2addr v3, v0

    iput v3, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    iget v3, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    sub-float v3, p2, v3

    add-float/2addr v0, v3

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    :cond_0
    iput p1, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    iput p2, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    iget p1, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_2

    iget p1, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iput v2, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    return-void

    :cond_2
    :goto_0
    iget p1, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iget p1, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    return-void
.end method

.method private blacklist updateBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    sub-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v4, p0, Landroid/view/RoundScrollbarRenderer;->mInset:F

    sub-float/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v0

    invoke-static {p1, v1}, Landroid/view/RoundScrollbarRenderer;->getVertexAngle(FF)F

    move-result p1

    iput p1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbStrokeWidthAsDegrees:F

    iget-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    iget v0, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenThumbAndTrackPx:F

    invoke-static {p1, v0}, Landroid/view/RoundScrollbarRenderer;->getVertexAngle(FF)F

    move-result p1

    iput p1, p0, Landroid/view/RoundScrollbarRenderer;->mGapBetweenTrackAndThumbAsDegrees:F

    return-void
.end method


# virtual methods
.method public blacklist drawRoundScrollbars(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Z)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2, v1}, Landroid/view/RoundScrollbarRenderer;->computeScrollExtent(FF)F

    move-result v2

    cmpg-float v4, v2, v0

    if-gez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v3}, Landroid/view/RoundScrollbarRenderer;->resizeGradually(FF)V

    iget v4, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    sub-float/2addr v1, v4

    iget v4, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    sub-float/2addr v3, v4

    invoke-direct {p0, p2}, Landroid/view/RoundScrollbarRenderer;->applyThumbColor(F)V

    invoke-direct {p0, v2, v1}, Landroid/view/RoundScrollbarRenderer;->computeSweepAngle(FF)F

    move-result v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0, v4, v1, v2}, Landroid/view/RoundScrollbarRenderer;->computeStartAngle(FFFF)F

    move-result v0

    invoke-direct {p0, p3}, Landroid/view/RoundScrollbarRenderer;->updateBounds(Landroid/graphics/Rect;)V

    iput-boolean p4, p0, Landroid/view/RoundScrollbarRenderer;->mDrawToLeft:Z

    invoke-direct {p0, p1, v0, v4, p2}, Landroid/view/RoundScrollbarRenderer;->drawRoundScrollbars(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method blacklist getRoundVerticalScrollBarBounds(Landroid/graphics/Rect;)V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/view/RoundScrollbarRenderer;->dpToPx(F)F

    move-result v0

    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mRight:I

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mBottom:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollX:I

    float-to-int v0, v0

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget p0, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr p0, v2

    sub-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

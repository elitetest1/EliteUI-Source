.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private greylist-max-o mFromX:F

.field private greylist-max-o mFromXData:I

.field private greylist-max-o mFromXType:I

.field private greylist-max-o mFromY:F

.field private greylist-max-o mFromYData:I

.field private greylist-max-o mFromYType:I

.field private greylist-max-o mPivotX:F

.field private greylist-max-o mPivotXType:I

.field private greylist-max-o mPivotXValue:F

.field private greylist-max-o mPivotY:F

.field private greylist-max-o mPivotYType:I

.field private greylist-max-o mPivotYValue:F

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private greylist-max-o mToX:F

.field private greylist-max-o mToXData:I

.field private greylist-max-o mToXType:I

.field private greylist-max-o mToY:F

.field private greylist-max-o mToYData:I

.field private greylist-max-o mToYType:I


# direct methods
.method public constructor whitelist <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method public constructor whitelist <init>(FFFFFF)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor whitelist <init>(FFFFIFIF)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    goto :goto_0

    :cond_0
    iget v4, v2, Landroid/util/TypedValue;->type:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    :cond_1
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    if-eqz v2, :cond_3

    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_2

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    goto :goto_1

    :cond_2
    iget v4, v2, Landroid/util/TypedValue;->type:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    :cond_3
    :goto_1
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    if-eqz v2, :cond_5

    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_4

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    goto :goto_2

    :cond_4
    iget v4, v2, Landroid/util/TypedValue;->type:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    :cond_5
    :goto_2
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    if-eqz v2, :cond_7

    iget v1, v2, Landroid/util/TypedValue;->type:I

    if-ne v1, v3, :cond_6

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    goto :goto_3

    :cond_6
    iget v1, v2, Landroid/util/TypedValue;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v1, v2, Landroid/util/TypedValue;->data:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    :cond_7
    :goto_3
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object p1

    iget v0, p1, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget p1, p1, Landroid/view/animation/Animation$Description;->value:F

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method private greylist-max-o initializePivotPoint()V
    .locals 1

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v0

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    :goto_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v4, v3, v2

    if-nez v4, :cond_2

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_3

    :cond_2
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    :cond_3
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr p2, v0

    iget p0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v0, p0

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method public whitelist initialize(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p0

    iput p0, v0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v1, v0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v2, v0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v3, v0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p0

    iput p0, v0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v1, v0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v2, v0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v3, v0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p0

    iput p0, v0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v1, v0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v2, v0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v3, v0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p0

    iput p0, v0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget p0, v0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget p2, v0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {v0, p0, p2, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result p0

    iput p0, v0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    iget p0, v0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget p1, v0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {v0, p0, p1, v4, v5}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result p0

    iput p0, v0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method greylist-max-o resolveScale(FIIII)F
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    int-to-float p0, p4

    int-to-float p1, p5

    invoke-static {p3, p0, p1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p5, 0x5

    if-ne p2, p5, :cond_2

    iget-object p0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p0

    :goto_0
    if-nez p4, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    int-to-float p1, p4

    div-float/2addr p0, p1

    return p0

    :cond_2
    return p1
.end method

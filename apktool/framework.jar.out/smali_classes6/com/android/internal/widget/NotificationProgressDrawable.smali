.class public final Lcom/android/internal/widget/NotificationProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationProgressDrawable$State;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;,
        Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NotifProgressDrawable"


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

.field private blacklist mEndDotColor:I

.field private final blacklist mFillPaint:Landroid/graphics/Paint;

.field private blacklist mMutated:Z

.field private final blacklist mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPointRectF:Landroid/graphics/RectF;

.field private final blacklist mSegRectF:Landroid/graphics/RectF;

.field private blacklist mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smscaleFromDensity(FII)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->scaleFromDensity(FII)F

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    return-void
.end method

.method private blacklist applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    sget-object v1, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private blacklist inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    :cond_0
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "segments"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-static {p1, p4, p3, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "points"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-static {p1, p4, p3, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad element under NotificationProgressDrawable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotifProgressDrawable"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    return-void
.end method

.method static blacklist resolveDensity(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    if-nez p1, :cond_1

    const/16 p0, 0xa0

    return p0

    :cond_1
    return p1
.end method

.method private static blacklist scaleFromDensity(FII)F
    .locals 0

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private static blacklist scaleFromDensity(IIIZ)I
    .locals 0

    if-eqz p0, :cond_4

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p2, p0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    if-nez p3, :cond_1

    float-to-int p0, p2

    return p0

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, -0x1

    :cond_4
    :goto_0
    return p0
.end method

.method private blacklist updateLocalState()V
    .locals 0

    return-void
.end method

.method private blacklist updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    return-void
.end method

.method private blacklist updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist clearMutated()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-float v4, v2, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    if-ge v5, v3, :cond_4

    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    iget v8, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    add-float/2addr v8, v1

    iget v9, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    add-float/2addr v9, v1

    instance-of v10, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v10, :cond_2

    check-cast v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    cmpl-float v10, v8, v9

    if-lez v10, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v7}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v10, v10, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v10, v10, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    :goto_1
    div-float/2addr v10, v6

    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v6, v6, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget-object v11, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v7, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mColor:I

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    sub-float v11, v2, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    instance-of v6, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v6, :cond_3

    check-cast v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v8, v4, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v6, v6, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    iget-object v8, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v8, v8, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    iget-object v9, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v7, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->mColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v8, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v1, v1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    div-float/2addr v1, v6

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v4, v4, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v1, v1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v2, v2, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public whitelist getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    return p0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    return-object p0
.end method

.method public whitelist getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getPointRadius()F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    return p0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/NotificationProgressDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;->onDrawableBoundsChanged()V

    :cond_0
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public blacklist setBoundsChangeListener(Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public blacklist setParts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public varargs blacklist setParts([Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    return-void
.end method

.method public blacklist updateEndDotColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

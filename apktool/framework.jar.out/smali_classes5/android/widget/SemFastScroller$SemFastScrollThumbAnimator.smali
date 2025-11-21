.class Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;
.super Ljava/lang/Object;
.source "SemFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemFastScrollThumbAnimator"
.end annotation


# static fields
.field private static final blacklist DEFAULT_SCROLL_BAR_VALUE:F = 0.0f

.field private static final blacklist FAST_SCROLL_BAR_VALUE:F = 1.0f


# instance fields
.field private final blacklist mActivatedColor:I

.field private blacklist mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

.field private final blacklist mColorAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mDefaultColor:I

.field private blacklist mIsDragging:Z

.field private final blacklist mMaxWidthPx:F

.field private final blacklist mMinWidthPx:F

.field private final blacklist mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBgDrawable(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)Landroid/widget/SemFastScrollerBgDrawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxWidthPx(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)F
    .locals 0

    iget p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMaxWidthPx:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinWidthPx(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)F
    .locals 0

    iget p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMinWidthPx:F

    return p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mIsDragging:Z

    const v0, 0x102068d

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/widget/SemFastScrollerBgDrawable;

    iput-object p2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10504af

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMinWidthPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mMaxWidthPx:F

    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->getPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v1, :cond_0

    const v1, 0x1060539

    goto :goto_0

    :cond_0
    const v1, 0x1060538

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/16 v1, 0xff

    invoke-direct {p0, p1, v1}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    const/16 v1, 0x99

    invoke-direct {p0, v0, v1}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mActivatedColor:I

    iget-object v1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    invoke-virtual {v1, p2}, Landroid/widget/SemFastScrollerBgDrawable;->setValue(F)V

    iget-object p2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SemFastScrollerBgDrawable;->setArgb(I)V

    iget-object p2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mBgDrawable:Landroid/widget/SemFastScrollerBgDrawable;

    invoke-virtual {p2}, Landroid/widget/SemFastScrollerBgDrawable;->invalidateSelf()V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$1;

    invoke-direct {v3, p0}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$1;-><init>(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v6, v6, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;

    invoke-direct {p2, p0}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator$2;-><init>(Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist getPrimaryColor(Landroid/content/Context;)I
    .locals 3

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010433

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method private blacklist isLightTheme(Landroid/content/Context;)Z
    .locals 2

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010590

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist setAlphaComponent(II)I
    .locals 0

    if-ltz p2, :cond_0

    const/16 p0, 0xff

    if-gt p2, p0, :cond_0

    const p0, 0xffffff

    and-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public blacklist setDragging(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mIsDragging:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mIsDragging:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    iget v1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mActivatedColor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mActivatedColor:I

    iget v1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mDefaultColor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :goto_0
    iget-object p1, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.class public Landroid/view/animation/GridLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "GridLayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final whitelist DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final whitelist DIRECTION_HORIZONTAL_MASK:I = 0x1

.field public static final whitelist DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final whitelist DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final whitelist DIRECTION_TOP_TO_BOTTOM:I = 0x0

.field public static final whitelist DIRECTION_VERTICAL_MASK:I = 0x2

.field public static final whitelist PRIORITY_COLUMN:I = 0x1

.field public static final whitelist PRIORITY_NONE:I = 0x0

.field public static final whitelist PRIORITY_ROW:I = 0x2


# instance fields
.field private greylist-max-o mColumnDelay:F

.field private greylist-max-o mDirection:I

.field private greylist-max-o mDirectionPriority:I

.field private greylist-max-o mRowDelay:F


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/internal/R$styleable;->GridLayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v1, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object p1

    iget p1, p1, Landroid/view/animation/Animation$Description;->value:F

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    const/4 p1, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/animation/Animation;FF)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method private greylist-max-o getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    :cond_1
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v0, v1

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    sub-int/2addr v0, v2

    :goto_0
    iget p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    iget p0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr p0, v1

    sub-int/2addr p0, v0

    return p0

    :cond_3
    return v0
.end method

.method private greylist-max-o getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    :cond_1
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    int-to-float v0, v0

    iget-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v0, v2

    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    sub-int/2addr v0, v3

    :goto_0
    iget p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    iget p0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr p0, v2

    sub-int/2addr p0, v0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public whitelist getColumnDelay()F
    .locals 0

    iget p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return p0
.end method

.method protected whitelist getDelayForView(Landroid/view/View;)J
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p1, p1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v1

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    iget v5, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    long-to-float v3, v3

    mul-float/2addr v5, v3

    iget v4, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    mul-float/2addr v4, v3

    iget-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    iget v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    int-to-float v0, v0

    mul-float/2addr v0, v5

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-long v0, v0

    int-to-float p1, p1

    mul-float/2addr p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr p1, v2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-long v0, v0

    int-to-float v3, p1

    mul-float/2addr v3, v5

    mul-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v5

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    mul-float/2addr v1, v4

    mul-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    int-to-float v3, v2

    mul-float/2addr v3, v4

    mul-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, v4

    :goto_0
    add-float/2addr p1, v3

    :goto_1
    long-to-float v0, v0

    div-float/2addr v0, p1

    iget-object p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method public whitelist getDirection()I
    .locals 0

    iget p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return p0
.end method

.method public whitelist getDirectionPriority()I
    .locals 0

    iget p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return p0
.end method

.method public whitelist getRowDelay()F
    .locals 0

    iget p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return p0
.end method

.method public whitelist setColumnDelay(F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return-void
.end method

.method public whitelist setDirection(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return-void
.end method

.method public whitelist setDirectionPriority(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return-void
.end method

.method public whitelist setRowDelay(F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method public whitelist willOverlap()Z
    .locals 2

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget p0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    cmpg-float p0, p0, v1

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

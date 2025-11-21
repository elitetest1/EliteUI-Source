.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final greylist-max-o DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final greylist-max-o DEFAULT_MAX_TANGENT:F

.field private static final greylist-max-o DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private greylist-max-o mMaximumAngle:F

.field private greylist-max-o mMaximumTangent:F

.field private greylist-max-o mMinimumHorizontalAngle:F

.field private greylist-max-o mMinimumHorizontalTangent:F

.field private greylist-max-o mMinimumVerticalAngle:F

.field private greylist-max-o mMinimumVerticalTangent:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v2, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    sget-object v2, Lcom/android/internal/R$styleable;->ArcMotion:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static greylist-max-o toTangent(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arc must be between 0 and 90 degrees"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getMaximumAngle()F
    .locals 0

    iget p0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    return p0
.end method

.method public whitelist getMinimumHorizontalAngle()F
    .locals 0

    iget p0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return p0
.end method

.method public whitelist getMinimumVerticalAngle()F
    .locals 0

    iget p0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    return p0
.end method

.method public whitelist getPath(FFFF)Landroid/graphics/Path;
    .locals 14

    move/from16 v1, p2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v3, p3, p1

    sub-float v4, p4, v1

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    add-float v6, p1, p3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v8, v1, p4

    div-float/2addr v8, v7

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v9, v5

    cmpl-float v10, v1, p4

    if-lez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    cmpl-float v12, v4, v11

    const/high16 v13, 0x3f000000    # 0.5f

    if-nez v12, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v13

    iget v4, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v8

    move v4, v3

    move v3, v6

    :goto_1
    move v10, v11

    goto :goto_5

    :cond_1
    cmpl-float v12, v3, v11

    if-nez v12, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v13

    iget v4, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    move v4, v8

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    mul-float/2addr v4, v7

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-eqz v10, :cond_3

    add-float v3, p4, v3

    move v4, v3

    move/from16 v3, p3

    goto :goto_2

    :cond_3
    add-float/2addr v3, v1

    move v4, v3

    move v3, p1

    :goto_2
    iget v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    goto :goto_4

    :cond_4
    mul-float/2addr v3, v7

    div-float/2addr v5, v3

    if-eqz v10, :cond_5

    add-float v3, p1, v5

    move v4, v1

    goto :goto_3

    :cond_5
    sub-float v3, p3, v5

    move/from16 v4, p4

    :goto_3
    iget v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    :goto_4
    mul-float v10, v9, v5

    mul-float/2addr v10, v5

    :goto_5
    sub-float v5, v6, v3

    sub-float v12, v8, v4

    mul-float/2addr v5, v5

    mul-float/2addr v12, v12

    add-float/2addr v5, v12

    iget p0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v9, p0

    mul-float/2addr v9, p0

    cmpl-float p0, v5, v11

    if-eqz p0, :cond_6

    cmpg-float p0, v5, v10

    if-gez p0, :cond_6

    goto :goto_6

    :cond_6
    cmpl-float p0, v5, v9

    if-lez p0, :cond_7

    move v10, v9

    goto :goto_6

    :cond_7
    move v10, v11

    :goto_6
    cmpl-float p0, v10, v11

    if-eqz p0, :cond_8

    div-float/2addr v10, v5

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float p0, v9

    sub-float/2addr v3, v6

    mul-float/2addr v3, p0

    add-float/2addr v3, v6

    sub-float/2addr v4, v8

    mul-float/2addr p0, v4

    add-float v4, v8, p0

    :cond_8
    add-float p0, p1, v3

    div-float/2addr p0, v7

    add-float v0, v1, v4

    div-float/2addr v0, v7

    add-float v3, v3, p3

    div-float/2addr v3, v7

    add-float v4, v4, p4

    div-float/2addr v4, v7

    move-object v1, v2

    move v2, v0

    move-object v0, v1

    move v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method

.method public whitelist setMaximumAngle(F)V
    .locals 0

    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public whitelist setMinimumHorizontalAngle(F)V
    .locals 0

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    return-void
.end method

.method public whitelist setMinimumVerticalAngle(F)V
    .locals 0

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    return-void
.end method

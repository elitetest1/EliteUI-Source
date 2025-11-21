.class Lcom/android/internal/app/PlatLogoActivity$Starfield;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Starfield"
.end annotation


# static fields
.field private static final blacklist NUM_PLANES:I = 0x4

.field private static final blacklist NUM_STARS:I = 0x80

.field private static final blacklist ROTATION:F = 45.0f

.field private static final blacklist sSrgbExt:Landroid/graphics/ColorSpace;


# instance fields
.field private blacklist mBuffer:F

.field private blacklist mDt:J

.field private blacklist mRadius:F

.field private final blacklist mRng:Ljava/util/Random;

.field private final blacklist mSize:F

.field private final blacklist mStarPaint:Landroid/graphics/Paint;

.field private final blacklist mStars:[F

.field private blacklist mVx:F

.field private blacklist mVy:F

.field private blacklist mWarp:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->sSrgbExt:Landroid/graphics/ColorSpace;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Random;F)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static blacklist packHdrColor(FF)J
    .locals 1

    sget-object v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->sSrgbExt:Landroid/graphics/ColorSpace;

    invoke-static {p0, p0, p0, p1, v0}, Landroid/graphics/Color;->valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->pack()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    mul-float/2addr v3, v2

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v3, v4

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    mul-float/2addr v5, v2

    mul-float/2addr v5, v4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v2

    const/4 v7, 0x1

    if-lez v4, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v8, v9

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v8, v11

    const/high16 v12, -0x1000000

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v9

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v12, 0x42340000    # 45.0f

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    iget-wide v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_3

    const-wide/16 v14, 0x3e8

    cmp-long v12, v12, v14

    if-gez v12, :cond_3

    iget-object v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    iget v13, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v13, v2

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v13

    iget v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v14, v2

    mul-float/2addr v13, v14

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0x80

    if-ge v12, v13, :cond_3

    int-to-float v13, v12

    const/high16 v14, 0x43000000    # 128.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v13, v7

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v15, v12, 0x4

    add-int/lit8 v16, v15, 0x2

    aget v17, v14, v16

    int-to-float v13, v13

    mul-float v18, v3, v13

    add-float v17, v17, v18

    add-float v17, v17, v8

    rem-float v17, v17, v10

    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float v17, v17, v6

    aput v17, v14, v16

    add-int/lit8 v17, v15, 0x3

    aget v19, v14, v17

    mul-float v20, v5, v13

    add-float v19, v19, v20

    add-float v19, v19, v8

    rem-float v19, v19, v10

    sub-float v19, v19, v6

    aput v19, v14, v17

    if-eqz v4, :cond_1

    aget v16, v14, v16

    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v6, v3

    mul-float/2addr v6, v13

    sub-float v16, v16, v6

    goto :goto_2

    :cond_1
    const v16, -0x39e3c000    # -10000.0f

    :goto_2
    aput v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    if-eqz v4, :cond_2

    aget v6, v14, v17

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v7, v5

    mul-float/2addr v7, v13

    sub-float/2addr v6, v7

    goto :goto_3

    :cond_2
    const v6, -0x39e3c000    # -10000.0f

    :goto_3
    aput v6, v14, v15

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    array-length v3, v3

    const/4 v5, 0x4

    div-int/2addr v3, v5

    div-int/2addr v3, v5

    mul-int/2addr v3, v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_5

    int-to-float v7, v6

    add-float/2addr v7, v2

    div-float/2addr v7, v11

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-static {v7, v2}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->packHdrColor(FF)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Paint;->setColor(J)V

    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    add-int/lit8 v10, v6, 0x1

    int-to-float v12, v10

    mul-float/2addr v8, v12

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v4, :cond_4

    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int v8, v6, v3

    iget-object v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v3, v12}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_4
    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/2addr v6, v3

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v6, v3, v8}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    move v6, v10

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v0

    invoke-static {v9, v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->packHdrColor(FF)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(J)V

    :cond_6
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getWarp()F
    .locals 0

    iget p0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    return p0
.end method

.method public whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr p1, v1

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v2, p1, 0x4

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    mul-float/2addr v3, v4

    sub-float/2addr v3, v4

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v5

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v4, v2, 0x2

    aget v5, v0, v2

    aput v5, v0, v4

    add-int/lit8 v2, v2, 0x3

    aget v3, v0, v3

    aput v3, v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 0

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public blacklist setVelocity(FF)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    return-void
.end method

.method public blacklist setWarp(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    return-void
.end method

.method public blacklist update(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    return-void
.end method

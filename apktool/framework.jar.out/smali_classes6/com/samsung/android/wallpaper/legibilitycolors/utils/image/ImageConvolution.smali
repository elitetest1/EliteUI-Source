.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;
.source "ImageConvolution.java"


# instance fields
.field public blacklist mFactor:D

.field public blacklist mOffset:D


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    return-void
.end method

.method public constructor blacklist <init>([IIILandroid/graphics/Bitmap$Config;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;-><init>([IIILandroid/graphics/Bitmap$Config;)V

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    return-void
.end method


# virtual methods
.method public blacklist computeConvolution([[D)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mPixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->computeConvolution([[D[I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->setPixels([I)V

    return-void
.end method

.method public blacklist computeConvolution([[D[I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mImageWidth:I

    iget v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mImageHeight:I

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    iget-object v5, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mPixels:[I

    array-length v6, v5

    array-length v7, v1

    mul-int v8, v7, v7

    div-int/lit8 v9, v7, 0x2

    iget-wide v10, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iget-wide v14, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    div-double/2addr v12, v14

    new-array v0, v8, [D

    new-array v14, v8, [I

    new-array v15, v8, [I

    const/16 v16, 0x0

    move-object/from16 p0, v0

    move/from16 v0, v16

    :goto_0
    if-ge v0, v8, :cond_0

    div-int v17, v0, v7

    rem-int v18, v0, v7

    aget-object v19, v1, v17

    aget-wide v19, v19, v18

    aput-wide v19, p0, v0

    sub-int v18, v18, v9

    aput v18, v14, v0

    sub-int v17, v17, v9

    aput v17, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_1
    if-ge v0, v6, :cond_c

    rem-int v1, v0, v2

    div-int v7, v0, v2

    const/4 v9, 0x0

    move/from16 v17, v0

    move/from16 p1, v1

    move/from16 v18, v2

    move-object/from16 v19, v5

    move v0, v9

    move v1, v0

    move/from16 v2, v16

    :goto_2
    if-ge v2, v8, :cond_5

    aget v20, v14, v2

    add-int v5, p1, v20

    if-gez v5, :cond_1

    move/from16 v5, v16

    goto :goto_3

    :cond_1
    if-le v5, v4, :cond_2

    move v5, v4

    :cond_2
    :goto_3
    aget v20, v15, v2

    move/from16 v21, v2

    add-int v2, v7, v20

    if-gez v2, :cond_3

    move/from16 v2, v16

    goto :goto_4

    :cond_3
    if-le v2, v3, :cond_4

    move v2, v3

    :cond_4
    :goto_4
    mul-int v2, v2, v18

    add-int/2addr v5, v2

    aget v2, v19, v5

    aget-wide v22, p0, v21

    move/from16 v20, v3

    move v5, v4

    float-to-double v3, v9

    shr-int/lit8 v9, v2, 0x10

    move-wide/from16 v24, v3

    const/16 v3, 0xff

    and-int/lit16 v4, v9, 0xff

    int-to-double v3, v4

    mul-double v3, v3, v22

    add-double v3, v24, v3

    double-to-float v9, v3

    float-to-double v3, v0

    shr-int/lit8 v0, v2, 0x8

    move-wide/from16 v24, v3

    const/16 v3, 0xff

    and-int/2addr v0, v3

    int-to-double v3, v0

    mul-double v3, v3, v22

    add-double v3, v24, v3

    double-to-float v0, v3

    float-to-double v3, v1

    const/16 v1, 0xff

    and-int/2addr v1, v2

    int-to-double v1, v1

    mul-double v1, v1, v22

    add-double/2addr v3, v1

    double-to-float v1, v3

    add-int/lit8 v2, v21, 0x1

    move v4, v5

    move/from16 v3, v20

    goto :goto_2

    :cond_5
    move/from16 v20, v3

    move v5, v4

    float-to-double v2, v9

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    double-to-int v3, v2

    if-gez v3, :cond_6

    move/from16 p1, v16

    goto :goto_5

    :cond_6
    const/16 v2, 0xff

    if-le v3, v2, :cond_7

    move/from16 p1, v2

    goto :goto_5

    :cond_7
    move/from16 p1, v3

    :goto_5
    float-to-double v2, v0

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    double-to-int v3, v2

    if-gez v3, :cond_8

    move/from16 v3, v16

    const/16 v2, 0xff

    goto :goto_6

    :cond_8
    const/16 v2, 0xff

    if-le v3, v2, :cond_9

    move v3, v2

    :cond_9
    :goto_6
    float-to-double v0, v1

    mul-double/2addr v0, v12

    add-double/2addr v0, v10

    double-to-int v0, v0

    if-gez v0, :cond_a

    move/from16 v0, v16

    goto :goto_7

    :cond_a
    if-le v0, v2, :cond_b

    move v0, v2

    :cond_b
    :goto_7
    aget v1, v19, v17

    ushr-int/lit8 v1, v1, 0x18

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    aput v0, p2, v17

    add-int/lit8 v0, v17, 0x1

    move v4, v5

    move/from16 v2, v18

    move-object/from16 v5, v19

    move/from16 v3, v20

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;
.super Ljava/lang/Object;
.source "BitmapImageProcessing.java"


# instance fields
.field protected blacklist mConfig:Landroid/graphics/Bitmap$Config;

.field protected final blacklist mImageHeight:I

.field protected final blacklist mImageWidth:I

.field protected blacklist mPixels:[I


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    mul-int v0, v3, v7

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public constructor blacklist <init>([IIILandroid/graphics/Bitmap$Config;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iput p3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    iput-object p4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    array-length p2, p1

    new-array p2, p2, [I

    const/4 p3, 0x0

    array-length p4, p1

    invoke-static {p1, p3, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    return-void
.end method


# virtual methods
.method public blacklist convertToBrightness()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToBrightness([I)V

    return-void
.end method

.method public blacklist convertToBrightness([I)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x2

    aget v3, v1, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToGoogleLuminosity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToGoogleLuminosity([I)V

    return-void
.end method

.method public blacklist convertToGoogleLuminosity([I)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity([I)V

    return-void
.end method

.method public blacklist convertToLuminosity([I)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity2([I)V

    return-void
.end method

.method public blacklist convertToLuminosity2([I)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v3, 0x2

    aget v3, v1, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist convertToLuminosity3()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->convertToLuminosity3([I)V

    return-void
.end method

.method public blacklist convertToLuminosity3([I)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist createBitmapFromCurrent()Landroid/graphics/Bitmap;
    .locals 11

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    iget-object v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    iget v6, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    const/4 v8, 0x0

    iget v10, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v3
.end method

.method public blacklist getAverageColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getAverageColor([I)I

    move-result p0

    return p0
.end method

.method public blacklist getAverageColor([I)I
    .locals 13

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    array-length v0, p1

    array-length v1, p1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    const v8, 0xff00

    const/high16 v9, 0xff0000

    if-ge p0, v1, :cond_1

    aget v10, p1, p0

    and-int/2addr v9, v10

    int-to-long v11, v9

    add-long/2addr v2, v11

    and-int/2addr v8, v10

    int-to-long v8, v8

    add-long/2addr v4, v8

    and-int/lit16 v8, v10, 0xff

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    int-to-long p0, v0

    div-long/2addr v2, p0

    long-to-int v0, v2

    and-int/2addr v0, v9

    div-long/2addr v4, p0

    long-to-int v1, v4

    and-int/2addr v1, v8

    div-long/2addr v6, p0

    long-to-int p0, v6

    and-int/lit16 p0, p0, 0xff

    const/high16 p1, -0x1000000

    or-int/2addr p1, v0

    or-int/2addr p1, v1

    or-int/2addr p0, p1

    return p0
.end method

.method public blacklist getAverageValueFromRed()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getAverageValueFromRed([I)F

    move-result p0

    return p0
.end method

.method public blacklist getAverageValueFromRed([I)F
    .locals 4

    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    int-to-float v2, v1

    mul-float/2addr v0, v2

    aget v3, p1, v1

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p0, 0x3b808081

    mul-float/2addr v0, p0

    return v0
.end method

.method public blacklist getCopiedPixels()[I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public blacklist getDifferentialValueFromRed(F)F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->getDifferentialValueFromRed([IF)F

    move-result p0

    return p0
.end method

.method public blacklist getDifferentialValueFromRed([IF)F
    .locals 4

    array-length p0, p1

    float-to-int p2, p2

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    if-le v3, p2, :cond_0

    sub-int/2addr v3, p2

    goto :goto_1

    :cond_0
    sub-int v3, p2, v3

    :goto_1
    int-to-float v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float p0, p0

    div-float/2addr v1, p0

    const p0, 0x3b808081

    mul-float/2addr v1, p0

    return v1
.end method

.method public blacklist getImageHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageHeight:I

    return p0
.end method

.method public blacklist getImageWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mImageWidth:I

    return p0
.end method

.method public blacklist getPixelsReference()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    return-object p0
.end method

.method public blacklist setPixels([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapImageProcessing;->mPixels:[I

    return-void
.end method

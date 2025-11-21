.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# static fields
.field static blacklist TAG:Ljava/lang/String;

.field static blacklist mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field static blacklist mCompressQuality:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    const-string v0, "BitmapHelper"

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createCroppedImageKeepingRatio(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float v4, v2, v3

    cmpl-float v5, p1, v4

    const/4 v6, 0x0

    if-lez v5, :cond_0

    div-float/2addr v4, p1

    mul-float/2addr v3, v4

    float-to-int p1, v3

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v6, v1, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    cmpg-float v3, p1, v4

    if-gez v3, :cond_1

    div-float/2addr p1, v4

    mul-float/2addr v2, p1

    float-to-int p1, v2

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, v6, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fineScaleOptionValueBySquareRootSize(III)I
    .locals 2

    mul-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    int-to-double v0, p2

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static blacklist fineScaleValueBySquareRootSize(III)F
    .locals 2

    mul-int/2addr p0, p1

    int-to-double p1, p2

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-float p0, p1

    return p0
.end method

.method public static blacklist getAverageColor([I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result p0

    return p0
.end method

.method public static blacklist getAverageColorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageColor([I)I

    move-result p0

    return p0
.end method

.method public static blacklist getAverageHSV([I)[F
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageHSV([I)[F

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAverageHSVFromBitmap(Landroid/graphics/Bitmap;)[F
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageHSV([I)[F

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static blacklist getBitmapRectForCenterCrop(Landroid/graphics/Bitmap;F)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float v1, v0, p0

    cmpl-float v2, v1, p1

    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v2, :cond_0

    mul-float/2addr p1, p0

    new-instance v1, Landroid/graphics/Rect;

    mul-float/2addr v0, v3

    mul-float/2addr p1, v3

    sub-float v2, v0, p1

    float-to-int v2, v2

    mul-float/2addr p0, v3

    sub-float v3, p0, p0

    float-to-int v3, v3

    add-float/2addr v0, p1

    float-to-int p1, v0

    add-float/2addr p0, p0

    float-to-int p0, p0

    invoke-direct {v1, v2, v3, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_0
    cmpg-float v1, v1, p1

    if-gez v1, :cond_1

    div-float p1, v0, p1

    new-instance v1, Landroid/graphics/Rect;

    mul-float/2addr v0, v3

    sub-float v2, v0, v0

    float-to-int v2, v2

    mul-float/2addr p0, v3

    mul-float/2addr p1, v3

    sub-float v3, p0, p1

    float-to-int v3, v3

    add-float/2addr v0, v0

    float-to-int v0, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v1, v2, v3, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int p0, p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static blacklist getBoarderPixels(Landroid/graphics/Bitmap;I)[I
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-static {v2, p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getBoarderPixels([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBoarderPixels(Ljava/nio/IntBuffer;II)[I
    .locals 9

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    div-int v1, v0, p1

    if-ge p1, p2, :cond_1

    move p2, p1

    :cond_1
    if-ge v1, p2, :cond_2

    move p2, v1

    :cond_2
    add-int v2, p2, p2

    sub-int v3, p1, v2

    sub-int v2, v1, v2

    mul-int/2addr v3, v2

    sub-int/2addr v0, v3

    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_4

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_3

    add-int/lit8 v6, v4, 0x1

    mul-int v7, v3, p1

    add-int/2addr v7, v5

    invoke-virtual {p0, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    aput v7, v0, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int v3, v1, p2

    move v5, p2

    :goto_2
    if-ge v5, v3, :cond_6

    move v6, v2

    :goto_3
    if-ge v6, p2, :cond_5

    add-int/lit8 v7, v4, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    invoke-virtual {p0, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    aput v8, v0, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, p2

    :goto_4
    if-ge v5, v3, :cond_8

    sub-int v6, p1, p2

    :goto_5
    if-ge v6, p1, :cond_7

    add-int/lit8 v7, v4, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    invoke-virtual {p0, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    aput v8, v0, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    if-ge v3, v1, :cond_a

    move p2, v2

    :goto_7
    if-ge p2, p1, :cond_9

    add-int/lit8 v5, v4, 0x1

    mul-int v6, v3, p1

    add-int/2addr v6, p2

    invoke-virtual {p0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    aput v6, v0, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v5

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    return-object v0

    :cond_b
    :goto_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getBoarderPixels([III)[I
    .locals 9

    if-eqz p0, :cond_b

    array-length v0, p0

    if-gtz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    array-length v0, p0

    div-int/2addr v0, p1

    if-ge p1, p2, :cond_1

    move p2, p1

    :cond_1
    if-ge v0, p2, :cond_2

    move p2, v0

    :cond_2
    array-length v1, p0

    add-int v2, p2, p2

    sub-int v3, p1, v2

    sub-int v2, v0, v2

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_4

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_3

    add-int/lit8 v6, v4, 0x1

    mul-int v7, v3, p1

    add-int/2addr v7, v5

    aget v7, p0, v7

    aput v7, v1, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int v3, v0, p2

    move v5, p2

    :goto_2
    if-ge v5, v3, :cond_6

    move v6, v2

    :goto_3
    if-ge v6, p2, :cond_5

    add-int/lit8 v7, v4, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, p2

    :goto_4
    if-ge v5, v3, :cond_8

    sub-int v6, p1, p2

    :goto_5
    if-ge v6, p1, :cond_7

    add-int/lit8 v7, v4, 0x1

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    aget v8, p0, v8

    aput v8, v1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    if-ge v3, v0, :cond_a

    move p2, v2

    :goto_7
    if-ge p2, p1, :cond_9

    add-int/lit8 v5, v4, 0x1

    mul-int v6, v3, p1

    add-int/2addr v6, p2

    aget v6, p0, v6

    aput v6, v1, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v5

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    return-object v1

    :cond_b
    :goto_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getCompressedFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static blacklist getCompressedQuality()I
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    return v0
.end method

.method public static blacklist getImageSizeFromFile(Ljava/lang/String;)[I
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getImageSizeFromResource(Landroid/content/res/Resources;I)[I
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0

    :goto_4
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_5
    throw p0
.end method

.method public static blacklist saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->saveBitmapAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist setCompressedFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public static blacklist setCompressedQuality(I)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->mCompressQuality:I

    return-void
.end method

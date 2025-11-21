.class public Lcom/samsung/vekit/Common/Util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImageUtil"

.field private static blacklist height:I

.field private static blacklist orientation:I

.field private static blacklist sampleSize:I

.field private static blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateInSampleSize(IIII)I
    .locals 3

    const/4 v0, 0x1

    if-gt p0, p2, :cond_0

    if-gt p1, p3, :cond_0

    return v0

    :cond_0
    move v1, p0

    move v2, p1

    :goto_0
    if-gt v1, p2, :cond_2

    if-le v2, p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sampleSize : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tempWidth : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tempHeight : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    div-int v1, p0, v0

    div-int v2, p1, v0

    goto :goto_0
.end method

.method private static blacklist convert(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public static blacklist decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filePath : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetHeight :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lcom/samsung/vekit/Common/Util/ImageUtil;->decodeImageBySkia(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "can\'t decode image file"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    sget p0, Lcom/samsung/vekit/Common/Util/ImageUtil;->orientation:I

    const/high16 p1, 0x43870000    # 270.0f

    const/high16 p2, 0x42b40000    # 90.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {v7, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v7, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :pswitch_5
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {v7, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_6
    invoke-virtual {v7, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :pswitch_7
    move-object p0, v2

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    if-nez p0, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/vekit/Common/Util/ImageUtil;->convert(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/vekit/Common/Util/ImageUtil;->convert(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist decodeImageBySkia(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1, p2}, Lcom/samsung/vekit/Common/Util/ImageUtil;->calculateInSampleSize(IIII)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sput p1, Lcom/samsung/vekit/Common/Util/ImageUtil;->sampleSize:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "decodeImageBySkia: inSampleSize = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getExif(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExif failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImageUtil"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getHeight()I
    .locals 1

    sget v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->height:I

    return v0
.end method

.method public static blacklist getOrientation()I
    .locals 1

    sget v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->orientation:I

    return v0
.end method

.method public static blacklist getSampleSize()I
    .locals 1

    sget v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->sampleSize:I

    return v0
.end method

.method public static blacklist getWidth()I
    .locals 1

    sget v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->width:I

    return v0
.end method

.method public static blacklist parseImage(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/ImageInfo;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filepath : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/vekit/Common/Util/ImageUtil;->getExif(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "ImageWidth"

    invoke-static {v0, v2}, Lcom/samsung/vekit/Common/Util/ImageUtil;->getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/vekit/Common/Util/ImageUtil;->width:I

    const-string v2, "ImageLength"

    invoke-static {v0, v2}, Lcom/samsung/vekit/Common/Util/ImageUtil;->getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/vekit/Common/Util/ImageUtil;->height:I

    const-string v2, "Orientation"

    invoke-static {v0, v2}, Lcom/samsung/vekit/Common/Util/ImageUtil;->getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->orientation:I

    :cond_0
    sget v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->width:I

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->height:I

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sput p0, Lcom/samsung/vekit/Common/Util/ImageUtil;->width:I

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sput p0, Lcom/samsung/vekit/Common/Util/ImageUtil;->height:I

    const/4 p0, 0x0

    sput p0, Lcom/samsung/vekit/Common/Util/ImageUtil;->orientation:I

    :cond_2
    new-instance p0, Lcom/samsung/vekit/Common/Object/ImageInfo;

    sget v0, Lcom/samsung/vekit/Common/Util/ImageUtil;->width:I

    sget v2, Lcom/samsung/vekit/Common/Util/ImageUtil;->height:I

    sget v3, Lcom/samsung/vekit/Common/Util/ImageUtil;->orientation:I

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/vekit/Common/Object/ImageInfo;-><init>(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "width : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/vekit/Common/Util/ImageUtil;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/vekit/Common/Util/ImageUtil;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation :  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/vekit/Common/Util/ImageUtil;->orientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

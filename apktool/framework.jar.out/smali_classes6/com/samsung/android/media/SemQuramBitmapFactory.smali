.class public Lcom/samsung/android/media/SemQuramBitmapFactory;
.super Ljava/lang/Object;
.source "SemQuramBitmapFactory.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DEC_CANCELED:I = 0x6

.field public static final blacklist DEC_FAIL:I = 0x0

.field public static final blacklist DEC_PROGRESS:I = 0x4

.field public static final blacklist DEC_SUCCESS:I = 0x1

.field public static final blacklist LENGTH_OF_MID_POINTER:I = 0x44

.field public static final blacklist Quram_JPEG:Ljava/lang/String; = "Quram_JPEG"

.field private static final blacklist TAG:Ljava/lang/String; = "SemQuramBitmapFactory"

.field protected static final blacklist USE_AUTO_BUFFERMODE:I = 0x2

.field protected static final blacklist USE_AUTO_FILEMODE:I = 0x0

.field public static final blacklist USE_FULLSIZE_BUFFER:I = 0x0

.field public static final blacklist USE_ITERSIZE_BUFFER:I = 0x1

.field public static final blacklist USE_MAKE_REGIONMAP:I = 0x2

.field protected static final blacklist USE_POWER_PROCESS:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const-string v0, "SemQuramBitmapFactory"

    :try_start_0
    const-string v1, " start loadLibrary "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "imagecodec.media.quram"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, " end loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load library fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist CompareJPEG(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;IIJJJI)D
.end method

.method public static blacklist CompareJPEGs(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;IIJJJI)D
    .locals 0

    const-string p3, "QURAM"

    const-wide/16 p4, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    return-wide p4

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "fileName = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p4

    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "bm1 = "

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", bm2 = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p4
.end method

.method public static native blacklist DecodeCancel(J)V
.end method

.method public static native blacklist DecodeJPEGThumbnail(JLandroid/graphics/Bitmap;III)I
.end method

.method static native blacklist DecodeJPEGThumbnailToNativeBuffer(J[JII)I
.end method

.method public static native blacklist PDecodeJPEGFromFile(JLandroid/graphics/Bitmap;III)I
.end method

.method public static native blacklist RegionMapCancel(J)V
.end method

.method public static native blacklist asyncTest(I)V
.end method

.method public static blacklist compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BII)I
    .locals 1

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p2, p3, p4, p1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static blacklist compressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 6

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static blacklist compressToFile(Landroid/graphics/Bitmap;[BLjava/lang/String;Ljava/lang/String;ILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 8

    if-eqz p1, :cond_0

    array-length p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeEncodeFile2(Landroid/graphics/Bitmap;[BILjava/lang/String;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static blacklist compressToFile([BLjava/lang/String;Ljava/lang/String;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 1

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object p1, p0

    invoke-static/range {p1 .. p6}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static blacklist decodeByteArray([BIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-ltz p1, :cond_1

    if-lez p2, :cond_1

    array-length v0, p0

    add-int v1, p2, p1

    if-lt v0, v1, :cond_1

    invoke-virtual {p5}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p5, p4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, p1, p2, p5}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeByteArray2([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist decodeByteArray([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-ltz p1, :cond_1

    if-lez p2, :cond_1

    array-length v0, p0

    add-int v1, p2, p1

    if-lt v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeByteArray2([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist decodeFile(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/16 v4, 0x8

    if-le v0, v4, :cond_3

    iget v0, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    iput v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeFile2(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getWidth()I

    move-result v4

    if-lt v4, v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHeight()I

    move-result v4

    if-ge v4, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v1, v4

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    int-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {p0, v1, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput v0, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeFile2(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return-object v1
.end method

.method public static blacklist decodeFile(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeFile2(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return-object p0
.end method

.method public static blacklist decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    invoke-direct {v0}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/media/SemQuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string v0, ""

    const-string v1, "SemQuramBitmapFactory"

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "option Fail"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-array v6, v5, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v4

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v7

    move v5, p0

    :goto_1
    move-object v6, v4

    :goto_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    invoke-static {v6, p0, v5, p2}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeByteArray2([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object p0

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static blacklist decodeFileFromThumbnail(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeFile2(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return-object p0
.end method

.method public static blacklist decodeFileToBuffer(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;II)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemQuramBitmapFactory;->decodeFileToBuffer(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;III)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist decodeFileToBuffer(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;III)Ljava/nio/ByteBuffer;
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    return-object v0

    :cond_0
    iget p4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v1, 0x7

    if-ne p4, v1, :cond_1

    mul-int p4, p2, p3

    mul-int/lit8 p4, p4, 0x4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    :cond_1
    iget p4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v1, 0x2

    if-nez p4, :cond_2

    mul-int p4, p2, p3

    mul-int/2addr p4, v1

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    :cond_2
    iget p4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    if-ne p4, v1, :cond_4

    mul-int p4, p2, p3

    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, p3, 0x1

    shr-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr p4, v4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    :goto_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, p4, p1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object p4

    :cond_4
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return-object v0
.end method

.method public static blacklist decodeImageToBuffer(Ljava/lang/String;IILcom/samsung/android/media/SemQrBitmapFactory$Options;Lcom/samsung/android/media/SemQuramImageBufferData;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, p3, v1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    new-array v1, p0, [J

    invoke-virtual {p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v5

    invoke-static {v5, v6, v1, p1, p2}, Lcom/samsung/android/media/SemQuramBitmapFactory;->DecodeJPEGThumbnailToNativeBuffer(J[JII)I

    move-result v2

    if-ne v2, p0, :cond_1

    sget-object p0, Lcom/samsung/android/media/SemQuramImageBufferData$Type;->HANDLE:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput-object p0, p4, Lcom/samsung/android/media/SemQuramImageBufferData;->type:Lcom/samsung/android/media/SemQuramImageBufferData$Type;

    iput p1, p4, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    iput p2, p4, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    aget-wide p0, v1, v0

    iput-wide p0, p4, Lcom/samsung/android/media/SemQuramImageBufferData;->handle:J

    :cond_1
    move p0, v2

    :cond_2
    invoke-virtual {p3, v3, v4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static blacklist decodeStream(Ljava/io/InputStream;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "SemQuramBitmapFactory"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "inputstream is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_1

    const-string p0, "inpustream open fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-array v3, v2, [B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v4, -0x1

    if-ne p0, v4, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_3

    const-string/jumbo p0, "option Fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {p4, p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p4, p2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    const/4 p0, 0x0

    invoke-static {v3, p0, v2, p3, p4}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeByteArray3([BIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static blacklist decodeStream(Ljava/io/InputStream;IILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "SemQuramBitmapFactory"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "inputstream is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_1

    const-string p0, "inpustream open fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-array v3, v2, [B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v4, -0x1

    if-ne p0, v4, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_3

    const-string/jumbo p0, "option Fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {p3, p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p3, p2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    const/4 p0, 0x0

    invoke-static {v3, p0, v2, p3}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeByteArray2([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static blacklist decodeThumbnailByteArrayToBuffer([BIILcom/samsung/android/media/SemQuramImageBufferData;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 10

    const/4 v0, 0x0

    if-ltz p1, :cond_7

    if-lez p2, :cond_7

    array-length v1, p0

    add-int v2, p2, p1

    if-lt v1, v2, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0, p1, p2, p4}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result v1

    iget v2, p4, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x1

    if-nez v2, :cond_1

    iput v5, p4, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    :cond_1
    invoke-virtual {p4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getWidth()I

    move-result v2

    iget v6, p4, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-static {v2}, Lcom/samsung/android/media/SemQuramBitmapFactory;->round(F)I

    move-result v2

    invoke-virtual {p4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHeight()I

    move-result v6

    iget v7, p4, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v6}, Lcom/samsung/android/media/SemQuramBitmapFactory;->round(F)I

    move-result v6

    if-nez v1, :cond_2

    invoke-virtual {p4, v3, v4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return v0

    :cond_2
    iget v1, p4, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v7, 0x7

    if-ne v1, v7, :cond_3

    mul-int v1, v2, v6

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    iget v1, p4, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v7, 0x2

    if-nez v1, :cond_4

    mul-int v1, v2, v6

    mul-int/2addr v1, v7

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_4
    iget v1, p4, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    if-ne v1, v7, :cond_6

    mul-int v1, v2, v6

    add-int/lit8 v8, v2, 0x1

    shr-int/2addr v8, v5

    add-int/lit8 v9, v6, 0x1

    shr-int/2addr v9, v5

    mul-int/2addr v8, v9

    mul-int/2addr v8, v7

    add-int/2addr v1, v8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    :goto_0
    iget-object v1, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p4, v6}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    iget-object v1, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p0, v1, p1, p2, p4}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    iget-object p0, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getWidth()I

    move-result p0

    iput p0, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->width:I

    invoke-virtual {p4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHeight()I

    move-result p0

    iput p0, p3, Lcom/samsung/android/media/SemQuramImageBufferData;->height:I

    invoke-virtual {p4, v3, v4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return v5

    :cond_6
    invoke-virtual {p4, v3, v4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    :cond_7
    :goto_1
    return v0
.end method

.method public static blacklist getExifData(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeGetExifData(Ljava/lang/String;JLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setExif(J)V

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getICCProfile(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeGetICCProfile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static native blacklist nativeCreateDecBufferInfo([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeCreateDecFileInfo(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;I)I
.end method

.method public static native blacklist nativeDecodeByteArray2([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native blacklist nativeDecodeByteArray3([BIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native blacklist nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeDecodeFile2(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native blacklist nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeDecodeJPEG(JLandroid/graphics/Bitmap;III)I
.end method

.method public static native blacklist nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeEncodeFile2(Landroid/graphics/Bitmap;[BILjava/lang/String;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeGetExifData(Ljava/lang/String;JLcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeGetICCProfile(Ljava/lang/String;)[B
.end method

.method public static native blacklist nativeGetImageInfoFromBuffer([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeGetImageInfoFromFile(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativePartialDecodeByteArray([BIIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native blacklist nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativePartialDecodeFile(Ljava/lang/String;IIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native blacklist nativeResizeEncodeByteArray(Landroid/graphics/Bitmap;[BIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeResizeEncodeFD(Landroid/graphics/Bitmap;Ljava/io/FileDescriptor;IIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeResizeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist nativeResizeEncodeFile2(Landroid/graphics/Bitmap;[BILjava/lang/String;IIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static blacklist partialDecodeByteArray([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 7

    iget v0, p3, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    if-ltz p1, :cond_5

    if-lez p2, :cond_5

    array-length v2, p0

    add-int v3, p2, p1

    if-lt v2, v3, :cond_5

    invoke-virtual {p3}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p3, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput v2, p3, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_1
    iget v2, p3, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    iput v3, p3, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    :cond_2
    :goto_0
    sub-int/2addr p5, p4

    sub-int/2addr p7, p6

    move v6, p7

    move-object p7, p3

    move p3, p4

    move p4, p6

    move p6, v6

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativePartialDecodeByteArray([BIIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p7, v4, v5}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    invoke-virtual {p7}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getWidth()I

    move-result p1

    invoke-virtual {p7}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHeight()I

    move-result p2

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    iget p3, p7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-ge p3, v0, :cond_4

    iget p3, p7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr p1, p3

    div-int/2addr p1, v0

    iget p3, p7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr p2, p3

    div-int/2addr p2, v0

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    iput v0, p7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    return-object p1

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static blacklist partialDecodeByteArrayToBuffer([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;IIIILcom/samsung/android/media/SemQuramImageBufferData;)I
    .locals 14

    move-object/from16 v8, p3

    move-object/from16 v9, p8

    const/4 v10, 0x0

    if-ltz p1, :cond_8

    if-lez p2, :cond_8

    array-length v0, p0

    add-int v1, p2, p1

    if-lt v0, v1, :cond_8

    invoke-virtual {v8}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-nez v0, :cond_8

    iget v0, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_8

    iget v0, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-ltz v0, :cond_8

    if-nez v9, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x1

    if-nez v0, :cond_1

    iput v13, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-le v0, v1, :cond_2

    iput v1, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    :cond_2
    :goto_0
    invoke-static/range {p0 .. p3}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result v0

    invoke-virtual {v8}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getWidth()I

    move-result v1

    iget v2, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Lcom/samsung/android/media/SemQuramBitmapFactory;->round(F)I

    move-result v1

    invoke-virtual {v8}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHeight()I

    move-result v2

    iget v3, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Lcom/samsung/android/media/SemQuramBitmapFactory;->round(F)I

    move-result v2

    if-nez v0, :cond_3

    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    return v10

    :cond_3
    iget v0, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    mul-int v0, v1, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    iget v0, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x2

    if-nez v0, :cond_5

    mul-int v0, v1, v2

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    iget v0, v8, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    if-ne v0, v3, :cond_7

    mul-int v0, v1, v2

    add-int/lit8 v4, v1, 0x1

    shr-int/2addr v4, v13

    add-int/lit8 v5, v2, 0x1

    shr-int/2addr v5, v13

    mul-int/2addr v4, v5

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v0, v9, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {v8, v2}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHeight(I)V

    iget-object v1, v9, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sub-int v6, p5, p4

    sub-int v7, p7, p6

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p6

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    iget-object p0, v9, Lcom/samsung/android/media/SemQuramImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_6

    return v10

    :cond_6
    return v13

    :cond_7
    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    :cond_8
    :goto_2
    return v10
.end method

.method public static blacklist partialDecodeFile(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 7

    iget v0, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHandle()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget v1, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput v1, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/16 v5, 0x8

    if-le v1, v5, :cond_2

    iput v5, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    :cond_2
    :goto_0
    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    move v6, p5

    move-object p5, p1

    move p1, p2

    move p2, p4

    move p4, v6

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativePartialDecodeFile(Ljava/lang/String;IIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p5, v3, v4}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->setHandle(J)V

    if-nez p0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p5}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getWidth()I

    invoke-virtual {p5}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->getHeight()I

    iget p1, p5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-ge p1, v0, :cond_4

    iget p1, p5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    div-int/2addr p3, p1

    iget p1, p5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    div-int p1, p4, p1

    iget p2, p5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr p3, p2

    div-int/2addr p3, v0

    iget p2, p5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr p1, p2

    div-int/2addr p1, v0

    const/4 p2, 0x0

    invoke-static {p0, p3, p1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    iput v0, p5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    return-object p1

    :cond_4
    return-object p0
.end method

.method public static native blacklist recycleNativeBuffer(J)V
.end method

.method public static blacklist resizeCompressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BIIIII)I
    .locals 8

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeResizeEncodeByteArray(Landroid/graphics/Bitmap;[BIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static blacklist resizeCompressToFD(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/FileDescriptor;IIII)I
    .locals 7

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeResizeEncodeFD(Landroid/graphics/Bitmap;Ljava/io/FileDescriptor;IIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static blacklist resizeCompressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 9

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeResizeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static blacklist resizeCompressToFile(Landroid/graphics/Bitmap;[BLjava/lang/String;Ljava/lang/String;IIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Quram_JPEG"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeResizeEncodeFile2(Landroid/graphics/Bitmap;[BILjava/lang/String;IIIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result v0

    return v0
.end method

.method public static blacklist resizeCompressToURI(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;IIII)I
    .locals 9

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "w"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/media/SemQuramBitmapFactory;->nativeResizeEncodeFD(Landroid/graphics/Bitmap;Ljava/io/FileDescriptor;IIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static blacklist round(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

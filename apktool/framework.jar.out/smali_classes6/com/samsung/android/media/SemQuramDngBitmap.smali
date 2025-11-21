.class public Lcom/samsung/android/media/SemQuramDngBitmap;
.super Ljava/lang/Object;
.source "SemQuramDngBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemQuramDngBitmap$UseInfoType;
    }
.end annotation


# instance fields
.field blacklist decodedSize:I

.field blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "imagecodec.media.quram"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemQuramDngBitmap;->size:I

    iput v0, p0, Lcom/samsung/android/media/SemQuramDngBitmap;->decodedSize:I

    return-void
.end method

.method public static native blacklist DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist DecodeDNGImageJNI(Ljava/lang/String;Landroid/graphics/Bitmap;[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist DecodeDNGPreviewFileJNI(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist DecodeDNGPreviewImageBufferJNI([BLandroid/graphics/Bitmap;ILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static blacklist SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    iget-object v6, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v6, v6, v1

    aget-object v6, v6, v4

    array-length v6, v6

    invoke-static {p0, v2, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    array-length v5, v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    iget-object v6, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v6, v6, v1

    aget-object v6, v6, v4

    array-length v6, v6

    invoke-static {v5, v0, p0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    array-length v5, v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist cancelDecoding(Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/media/SemQuramDngBitmap;->cancelDecodingDNGImageBufferJNI(Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-gez p0, :cond_0

    const-string p0, "QURAM_DNG"

    const-string v0, "cancelDecoding fail "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static native blacklist cancelDecodingDNGImageBufferJNI(Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static blacklist decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 8

    or-int v0, p1, p2

    if-ltz v0, :cond_2

    array-length v0, p0

    add-int/2addr p1, p2

    if-lt v0, p1, :cond_2

    new-instance v6, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x100

    new-array v4, v0, [D

    iget-object v0, v6, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {p0, p2, v4, v0, v6}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result v0

    const/4 v7, 0x0

    if-gez v0, :cond_0

    return-object v7

    :cond_0
    invoke-static {v4, v6}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget v0, v6, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v1, v6, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, v6, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v4, v6}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    move-object v1, p0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-gez p0, :cond_1

    return-object v7

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static blacklist decodeByteArray([BIIIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    or-int v0, p1, p2

    if-ltz v0, :cond_10

    array-length v0, p0

    add-int/2addr p1, p2

    if-lt v0, p1, :cond_10

    if-nez p5, :cond_0

    new-instance p5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    const/4 p1, 0x0

    invoke-direct {p5, p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    :cond_0
    move-object v5, p5

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p5, 0x100

    new-array v3, p5, [D

    iget-object p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {p0, p2, v3, p5, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p5

    const/4 v6, 0x0

    if-gez p5, :cond_1

    return-object v6

    :cond_1
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    if-nez p5, :cond_5

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    if-nez p5, :cond_5

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    if-nez p5, :cond_5

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    if-ltz p5, :cond_3

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    goto :goto_0

    :cond_3
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    :goto_0
    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    if-ltz p5, :cond_4

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    goto :goto_1

    :cond_4
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    :goto_1
    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    goto :goto_3

    :cond_5
    :goto_2
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    if-ge p5, v0, :cond_f

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    if-lt p5, v0, :cond_6

    goto/16 :goto_6

    :cond_6
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    sub-int/2addr p5, v0

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    sub-int/2addr p5, v0

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    if-nez p5, :cond_7

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    if-eqz p5, :cond_8

    :cond_7
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr p5, v0

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr p5, v0

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr p5, v0

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr p5, v0

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    :cond_8
    :goto_3
    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outWidth:I

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    iput p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outHeight:I

    iget-boolean p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p5, :cond_f

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    if-lez p5, :cond_f

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    if-gtz p5, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget p5, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {p5, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-gez p0, :cond_a

    return-object v6

    :cond_a
    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x1

    if-nez p0, :cond_b

    iput p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_4

    :cond_b
    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-gez p0, :cond_c

    return-object v6

    :cond_c
    :goto_4
    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    if-ne p3, p0, :cond_e

    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    if-eq p4, p0, :cond_d

    goto :goto_5

    :cond_d
    return-object v1

    :cond_e
    :goto_5
    invoke-static {v1, p3, p4, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_6
    return-object v6

    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static blacklist decodeByteArray([BIILcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    or-int v0, p1, p2

    if-ltz v0, :cond_f

    array-length v0, p0

    add-int/2addr p1, p2

    if-lt v0, p1, :cond_f

    if-nez p3, :cond_0

    new-instance p3, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    const/4 p1, 0x0

    invoke-direct {p3, p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    :cond_0
    move-object v5, p3

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p3, 0x100

    new-array v3, p3, [D

    iget-object p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {p0, p2, v3, p3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p3

    const/4 v6, 0x0

    if-gez p3, :cond_1

    return-object v6

    :cond_1
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    if-nez p3, :cond_5

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    if-nez p3, :cond_5

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    if-nez p3, :cond_5

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    if-ltz p3, :cond_3

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    goto :goto_0

    :cond_3
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    :goto_0
    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    if-ltz p3, :cond_4

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    goto :goto_1

    :cond_4
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    :goto_1
    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    goto :goto_3

    :cond_5
    :goto_2
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    if-ge p3, v0, :cond_e

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    if-lt p3, v0, :cond_6

    goto/16 :goto_5

    :cond_6
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    sub-int/2addr p3, v0

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    sub-int/2addr p3, v0

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    if-nez p3, :cond_7

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    if-eqz p3, :cond_8

    :cond_7
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr p3, v0

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr p3, v0

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr p3, v0

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr p3, v0

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    :cond_8
    :goto_3
    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outWidth:I

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outHeight:I

    iget-boolean p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p3, :cond_e

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    if-lez p3, :cond_e

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    if-gtz p3, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {p3, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-gez p0, :cond_a

    return-object v6

    :cond_a
    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    int-to-float p0, p0

    iget p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    int-to-float p1, p1

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 p3, 0x1

    if-nez p2, :cond_b

    iput p3, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_4

    :cond_b
    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-gez p2, :cond_c

    return-object v6

    :cond_c
    :goto_4
    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-eq p3, p2, :cond_d

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float p2, p2

    div-float/2addr p0, p2

    float-to-int p0, p0

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {v1, p0, p1, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v1

    :cond_e
    :goto_5
    return-object v6

    :cond_f
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static blacklist decodeFile(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    :cond_0
    const/16 v1, 0x100

    new-array v1, v1, [D

    iget-object v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {p0, v1, v2, p1}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageJNI(Ljava/lang/String;[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_1

    return-object v3

    :cond_1
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    if-nez v2, :cond_5

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    if-nez v2, :cond_5

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    if-nez v2, :cond_5

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    if-ltz v2, :cond_3

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    goto :goto_0

    :cond_3
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    :goto_0
    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    if-ltz v2, :cond_4

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    goto :goto_1

    :cond_4
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    :goto_1
    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    goto :goto_3

    :cond_5
    :goto_2
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    if-ge v2, v4, :cond_d

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    if-lt v2, v4, :cond_6

    goto/16 :goto_5

    :cond_6
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    sub-int/2addr v2, v4

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    sub-int/2addr v2, v4

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    if-nez v2, :cond_7

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    :cond_8
    :goto_3
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outWidth:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    iput v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outHeight:I

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    if-lez v2, :cond_d

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    if-lez v2, :cond_d

    iget-boolean v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v2, :cond_d

    invoke-static {v1, p1}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {v2, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v1, p1}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    invoke-static {p0, v0, v1, v2, p1}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageJNI(Ljava/lang/String;Landroid/graphics/Bitmap;[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-gez p0, :cond_9

    return-object v3

    :cond_9
    iget p0, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    int-to-float p0, p0

    iget v1, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    int-to-float v1, v1

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x1

    if-nez v2, :cond_a

    iput v4, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_4

    :cond_a
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_b

    return-object v3

    :cond_b
    :goto_4
    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-eq v4, v2, :cond_c

    iget v2, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float/2addr p0, v2

    float-to-int p0, p0

    iget p1, p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p0, p1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v0

    :cond_d
    :goto_5
    return-object v3
.end method

.method public static blacklist decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v2, v4, [B

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    const/4 v8, 0x0

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v8

    :cond_0
    :try_start_1
    new-instance v7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    invoke-direct {v7, p0}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x100

    new-array v5, v0, [D

    iget-object v0, v7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v2, v4, v5, v0, v7}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v8

    :cond_1
    :try_start_2
    invoke-static {v5, v7}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget v0, v7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v3, v7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {v0, v3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v6, v7, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v5, v7}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez p0, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v8

    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static blacklist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    const/4 v6, 0x0

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p2, :cond_1

    new-instance p2, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    invoke-direct {p2, p0}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    :cond_1
    move-object v5, p2

    const/16 p0, 0x100

    new-array v3, p0, [D

    iget-object p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, p0, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p0, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_2
    :try_start_2
    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {p0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1

    :cond_3
    :try_start_3
    iget-object v4, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gez p0, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_4
    :try_start_4
    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    int-to-float p0, p0

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    int-to-float p2, p2

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iput v2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_5
    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gez v0, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_6
    :goto_0
    :try_start_5
    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-eq v2, v0, :cond_7

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-int p0, p0

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {v1, p0, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static blacklist decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    const/4 v6, 0x0

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p2, :cond_1

    new-instance p2, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    invoke-direct {p2, p1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    :cond_1
    move-object v5, p2

    const/16 p1, 0x100

    new-array v3, p1, [D

    iget-object p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, p1, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p1

    if-gez p1, :cond_2

    return-object v6

    :cond_2
    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-gez p0, :cond_4

    return-object v6

    :cond_4
    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    int-to-float p0, p0

    iget p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    int-to-float p1, p1

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    if-nez p2, :cond_5

    iput v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_5
    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-gez p2, :cond_6

    return-object v6

    :cond_6
    :goto_0
    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-eq v0, p2, :cond_7

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float p2, p2

    div-float/2addr p0, p2

    float-to-int p0, p0

    iget p2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {v1, p0, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    return-object v1
.end method

.method public static blacklist decodeStream(Ljava/io/InputStream;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/media/SemQrBitmapFactory$Options;

    invoke-direct {p1, v1}, Lcom/samsung/android/media/SemQrBitmapFactory$Options;-><init>(I)V

    :cond_1
    move-object v5, p1

    const/16 p1, 0x100

    new-array v3, p1, [D

    iget-object p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, p1, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p1

    if-gez p1, :cond_2

    return-object v6

    :cond_2
    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetFileBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    iget p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    iget v1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    invoke-static {p1, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->SetUserBlackLevel([DLcom/samsung/android/media/SemQrBitmapFactory$Options;)V

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I

    move-result p0

    if-gez p0, :cond_4

    return-object v6

    :cond_4
    iget p0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->width:I

    int-to-float p0, p0

    iget p1, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->height:I

    int-to-float p1, p1

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iput v2, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_5
    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_6

    return-object v6

    :cond_6
    :goto_0
    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    if-eq v2, v0, :cond_7

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-int p0, p0

    iget v0, v5, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {v1, p0, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    return-object v1
.end method

.method public static blacklist dumpXMPfromFile(Ljava/lang/String;Lcom/samsung/android/media/SemQuramDngJavaExif;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [J

    new-array v0, v0, [I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int p0, v2

    :try_start_0
    new-array v2, p0, [B

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3, p0}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v5, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-direct {v5}, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;-><init>()V

    invoke-static {v2, p0, v1, v0, v5}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseXMPBufferJNI([BI[J[ILcom/samsung/android/media/SemQuramDngJavaExifPrimitive;)I

    move-result p0

    if-gez p0, :cond_0

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {p1, v5}, Lcom/samsung/android/media/SemQuramDngJavaExif;->buildExif(Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;)V

    aget p0, v0, v3

    new-array p0, p0, [B

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    aget-wide v1, v1, v3

    invoke-virtual {v4, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    aget p1, v0, v3

    invoke-virtual {v4, p0, v3, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static native blacklist finalizeRegionDecoderHandle(Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static blacklist getDNGPreviewImage(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/media/SemQuramDngBitmap;->nativeGetDNGPreviewImageFromFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDNGPreviewImage([BII)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemQuramDngBitmap;->nativeGetDNGPreviewImageFromByteArray([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDNGPrivateData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/media/SemQuramDngBitmap;->nativeGetDNGPrivateDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDNGPrivateData([BII)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemQuramDngBitmap;->nativeGetDNGPrivateDataFromByteArray([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExifInfoFromFile(Ljava/lang/String;Lcom/samsung/android/media/SemQuramDngJavaExif;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int p0, v0

    :try_start_0
    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return v3

    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-direct {v1}, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/samsung/android/media/SemQuramDngBitmap;->parseExifInfoJNI([BILcom/samsung/android/media/SemQuramDngJavaExifPrimitive;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p0, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return v3

    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/media/SemQuramDngJavaExif;->buildExif(Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static blacklist getSECDngVersionFromFile(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int p0, v0

    :try_start_0
    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return v3

    :cond_0
    :try_start_1
    invoke-static {v0, p0}, Lcom/samsung/android/media/SemQuramDngBitmap;->getSECDngVersionJNI([BI)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static native blacklist getSECDngVersionJNI([BI)I
.end method

.method public static native blacklist nativeGetDNGPreviewImageFromByteArray([BII)[B
.end method

.method public static native blacklist nativeGetDNGPreviewImageFromFile(Ljava/lang/String;)[B
.end method

.method public static native blacklist nativeGetDNGPrivateDataFromByteArray([BII)Ljava/lang/String;
.end method

.method public static native blacklist nativeGetDNGPrivateDataFromFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native blacklist parseDNGImageBufferJNI([BI[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist parseDNGImageJNI(Ljava/lang/String;[D[DLcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist parseDNGPreviewFileJNI(Ljava/lang/String;Lcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist parseDNGPreviewImageBufferJNI([BILcom/samsung/android/media/SemQrBitmapFactory$Options;)I
.end method

.method public static native blacklist parseExifInfoJNI([BILcom/samsung/android/media/SemQuramDngJavaExifPrimitive;)I
.end method

.method public static native blacklist parseMetadataJNI([BILcom/samsung/android/media/SemQuramDngJavaMetadataPrimitive;Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;)I
.end method

.method public static native blacklist parseXMPBufferJNI([BI[J[ILcom/samsung/android/media/SemQuramDngJavaExifPrimitive;)I
.end method

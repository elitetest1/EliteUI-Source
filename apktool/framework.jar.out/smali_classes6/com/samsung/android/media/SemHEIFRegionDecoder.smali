.class public Lcom/samsung/android/media/SemHEIFRegionDecoder;
.super Ljava/lang/Object;
.source "SemHEIFRegionDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "15.0"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemHEIFRegionDecoder"

.field private static blacklist mLibraryLoaded:Z = false


# instance fields
.field private blacklist mHeight:I

.field private blacklist mNativeBitmapRegionDecoder:J

.field private final blacklist mNativeLock:Ljava/lang/Object;

.field private blacklist mRecycled:Z

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->loadLibrary()V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private blacklist checkRecycled(Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist loadLibrary()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "heifregiondec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load the native library : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHEIFRegionDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static native blacklist nativeClean(J)V
.end method

.method private static native blacklist nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeGetHeight(J)I
.end method

.method private static native blacklist nativeGetWidth(J)I
.end method

.method private static native blacklist nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
.end method

.method private static native blacklist nativeNewInstance([BII)Lcom/samsung/android/media/SemHEIFRegionDecoder;
.end method

.method public static whitelist newInstance(Ljava/io/FileDescriptor;Z)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-static {v0, p1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "fd is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist newInstance(Ljava/io/InputStream;Z)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    array-length v0, p0

    invoke-static {p0, v4, v0, p1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->newInstance([BIIZ)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist newInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "pathName is null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist newInstance([BIIZ)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    or-int p3, p1, p2

    if-ltz p3, :cond_0

    array-length p3, p0

    add-int v0, p1, p2

    if-lt p3, v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeNewInstance([BII)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "data is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_3

    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    :cond_0
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    div-int/2addr v3, v0

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    div-int/2addr v4, v0

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v4, :cond_2

    :cond_1
    const-string p0, "SemHEIFRegionDecoder"

    const-string p1, "RegionDecode Input Bitmap error"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object p0

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, p0, v0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, p0, p1

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rectangle is outside the image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist getHeight()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getHeight called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    if-lez v1, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetHeight(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist getWidth()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getWidth called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    if-lez v1, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetWidth(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final whitelist isRecycled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    return p0
.end method

.method public whitelist recycle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeClean(J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

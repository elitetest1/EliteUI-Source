.class public Lcom/samsung/android/media/SemAgifDecoder;
.super Ljava/lang/Object;
.source "SemAgifDecoder.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemAgifDecoder"


# instance fields
.field private blacklist mHandle:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/media/SemAgifDecoder;->loadLib()V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "SemAgifDecoder"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    if-gtz p2, :cond_0

    const-string p0, "inpustream open fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-array v1, p2, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    invoke-direct {p0, p0, v1, p2}, Lcom/samsung/android/media/SemAgifDecoder;->nativeInitByteArrayHandle(Lcom/samsung/android/media/SemAgifDecoder;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "IOException happens"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "SemAgifDecoder"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/high16 v2, 0x10000

    :try_start_3
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "buffer is Null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    invoke-direct {p0, p0, v2, v3}, Lcom/samsung/android/media/SemAgifDecoder;->nativeInitByteArrayHandle(Lcom/samsung/android/media/SemAgifDecoder;[BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p1, :cond_3

    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz p1, :cond_2

    :try_start_b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "IOException happens"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    const-string v0, "SemAgifDecoder"

    if-nez p1, :cond_0

    const-string p0, "inputstream is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_1

    const-string p0, "inpustream open fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    new-array v0, v1, [B

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    array-length p1, v0

    invoke-direct {p0, p0, v0, p1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeInitByteArrayHandle(Lcom/samsung/android/media/SemAgifDecoder;[BI)V

    :goto_2
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    if-eqz p1, :cond_0

    invoke-direct {p0, p0, p1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeInitHandle(Lcom/samsung/android/media/SemAgifDecoder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor greylist <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-direct {p0, p0, p1, v0}, Lcom/samsung/android/media/SemAgifDecoder;->nativeInitByteArrayHandle(Lcom/samsung/android/media/SemAgifDecoder;[BI)V

    :cond_0
    return-void
.end method

.method public static greylist loadLib()V
    .locals 4

    const-string v0, "SemAgifDecoder"

    :try_start_0
    const-string v1, "agifcodec.media.quram"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "Load library success : "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
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

.method private native blacklist nativeDecodeFrame(JLandroid/graphics/Bitmap;)I
.end method

.method private native blacklist nativeFinish(J)Z
.end method

.method private native blacklist nativeGetDelay(J)I
.end method

.method private native blacklist nativeGetHeight(J)I
.end method

.method private native blacklist nativeGetNumOfFrame(J)I
.end method

.method private native blacklist nativeGetWidth(J)I
.end method

.method private native blacklist nativeInitByteArrayHandle(Lcom/samsung/android/media/SemAgifDecoder;[BI)V
.end method

.method private native blacklist nativeInitHandle(Lcom/samsung/android/media/SemAgifDecoder;Ljava/lang/String;)V
.end method


# virtual methods
.method public greylist decodeFrame(Landroid/graphics/Bitmap;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeDecodeFrame(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public greylist finish()Z
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeFinish(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    return v0
.end method

.method public greylist getDelay()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeGetDelay(J)I

    move-result p0

    return p0
.end method

.method public greylist getHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeGetHeight(J)I

    move-result p0

    return p0
.end method

.method public greylist getNumOfFrame()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeGetNumOfFrame(J)I

    move-result p0

    return p0
.end method

.method public greylist getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifDecoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifDecoder;->nativeGetWidth(J)I

    move-result p0

    return p0
.end method

.class public Lcom/samsung/android/media/SemAgifEncoder;
.super Ljava/lang/Object;
.source "SemAgifEncoder.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemAgifEncoder"


# instance fields
.field private blacklist mHandle:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/media/SemAgifEncoder;->loadLib()V

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, p0}, Lcom/samsung/android/media/SemAgifEncoder;->nativeInitHandle(Lcom/samsung/android/media/SemAgifEncoder;)V

    return-void
.end method

.method public static greylist loadLib()V
    .locals 4

    const-string v0, "SemAgifEncoder"

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

.method private native blacklist nativeAddFrame(JLandroid/graphics/Bitmap;)Z
.end method

.method private native blacklist nativeAddFrameMP(JLandroid/graphics/Bitmap;)Z
.end method

.method private native blacklist nativeAddFrameTP(JLandroid/graphics/Bitmap;)Z
.end method

.method private native blacklist nativeFinish(J)Z
.end method

.method private native blacklist nativeFinishByteArray(J)[B
.end method

.method private native blacklist nativeInitHandle(Lcom/samsung/android/media/SemAgifEncoder;)V
.end method

.method private static native blacklist nativeMakeContactBuffer([BIII)Ljava/io/ByteArrayOutputStream;
.end method

.method private static native blacklist nativeMakeContactImage(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native blacklist nativeMakeContactImageRect(Ljava/lang/String;Ljava/lang/String;IIII)I
.end method

.method private static native blacklist nativeMakeContactRectBuffer([BIIIIII)Ljava/io/ByteArrayOutputStream;
.end method

.method private static native blacklist nativeMakeContactRectResizeBuffer([BIIIIIIII)Ljava/io/ByteArrayOutputStream;
.end method

.method private static native blacklist nativeMakeContactResizeImageRect(Ljava/lang/String;Ljava/lang/String;IIIIII)I
.end method

.method private native blacklist nativeSetDelay(JI)V
.end method

.method private native blacklist nativeSetDispose(JI)V
.end method

.method private native blacklist nativeSetFrameRate(JF)V
.end method

.method private native blacklist nativeSetGlobalSize(JII)V
.end method

.method private native blacklist nativeSetMaxResolution(JI)V
.end method

.method private native blacklist nativeSetMaxTask(JI)V
.end method

.method private native blacklist nativeSetMaxTaskTP(JI)V
.end method

.method private native blacklist nativeSetPosition(JII)V
.end method

.method private native blacklist nativeSetQuality(JI)V
.end method

.method private native blacklist nativeSetRepeat(JI)V
.end method

.method private native blacklist nativeSetSize(JII)V
.end method

.method private native blacklist nativeSetThreshold(JI)V
.end method

.method private native blacklist nativeSetTransPair(JI)V
.end method

.method private native blacklist nativeSetTransparent(JI)V
.end method

.method private native blacklist nativeSetWriteFunc(JI)V
.end method

.method private native blacklist nativeStart(JLjava/lang/String;)Z
.end method

.method private native blacklist nativeStartByteArray(J)Z
.end method

.method private native blacklist nativeStartFD(JLjava/io/FileDescriptor;)Z
.end method

.method private native blacklist nativeTest(Ljava/lang/String;)V
.end method


# virtual methods
.method public greylist addFrame(Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->setSize(II)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeAddFrame(JLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public greylist addFrameMP(Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->setSize(II)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeAddFrameMP(JLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public greylist addFrameTP(Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->setSize(II)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeAddFrameTP(JLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public greylist finish()Z
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeFinish(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    return v0
.end method

.method public greylist finishByteArray()[B
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeFinishByteArray(J)[B

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    return-object v0
.end method

.method public greylist finishFileDescriptor(Ljava/io/FileDescriptor;)Z
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeFinishByteArray(J)[B

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist finishURI(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeFinishByteArray(J)[B

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "rw"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public native blacklist nativeSetDither(JI)V
.end method

.method public greylist setDelay(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetDelay(JI)V

    return-void
.end method

.method public greylist setDispose(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetDispose(JI)V

    return-void
.end method

.method public greylist setDither(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetDither(JI)V

    return-void
.end method

.method public greylist setFrameRate(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetFrameRate(JF)V

    return-void
.end method

.method public greylist setGlobalSize(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetGlobalSize(JII)V

    return-void
.end method

.method public greylist setMaxResolution(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetMaxResolution(JI)V

    return-void
.end method

.method public greylist setMaxTask(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetMaxTask(JI)V

    return-void
.end method

.method public greylist setMaxTaskTP(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetMaxTaskTP(JI)V

    return-void
.end method

.method public greylist setPosition(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetPosition(JII)V

    return-void
.end method

.method public greylist setRepeat(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetRepeat(JI)V

    return-void
.end method

.method public greylist setSize(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetSize(JII)V

    return-void
.end method

.method public greylist setThreshold(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetThreshold(JI)V

    return-void
.end method

.method public greylist setTransPair(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetTransPair(JI)V

    return-void
.end method

.method public greylist setTransparent(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetTransparent(JI)V

    return-void
.end method

.method public greylist setWriteFunc(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeSetWriteFunc(JI)V

    return-void
.end method

.method public greylist start(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeStart(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist startByteArray()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeStartByteArray(J)Z

    move-result p0

    return p0
.end method

.method public greylist startFD(Ljava/io/FileDescriptor;)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAgifEncoder;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/media/SemAgifEncoder;->nativeStartFD(JLjava/io/FileDescriptor;)Z

    move-result p0

    return p0
.end method

.class public Lcom/samsung/android/motionphoto/core/MPSurfaceReader;
.super Ljava/lang/Object;
.source "MPSurfaceReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/core/MPSurfaceReader$HandlerExecutor;,
        Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;,
        Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
    }
.end annotation


# static fields
.field private static final blacklist ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final blacklist ACQUIRE_NO_BUFS:I = 0x1

.field private static final blacklist ACQUIRE_SUCCESS:I = 0x0

.field private static final blacklist MAX_BUFFER_CONSUMER_SIZE:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "MPSurfaceReader"


# instance fields
.field private final blacklist availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist closeLock:Ljava/lang/Object;

.field private final blacklist dataSpace:I

.field private final blacklist dropImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist format:I

.field private final blacklist height:I

.field private blacklist isReaderValid:Z

.field private blacklist listener:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

.field private blacklist listenerExecutor:Ljava/util/concurrent/Executor;

.field private blacklist listenerHandler:Landroid/os/Handler;

.field private final blacklist listenerLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field private final blacklist maxImages:I

.field public blacklist surface:Landroid/view/Surface;

.field private final blacklist usage:J

.field private final blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "secmm.sum.junit-test"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string/jumbo v0, "motionphoto_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeClassInit()V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dataSpace:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->closeLock:Ljava/lang/Object;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private constructor blacklist <init>(IIIIJ)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dataSpace:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->closeLock:Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "MPSurfaceReader: w=%d, h=%d, fmt=0x%x, maxImages=%d, usg=0x%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->width:I

    iput p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->height:I

    iput p3, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->format:I

    iput p4, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->maxImages:I

    iput-wide p5, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->usage:J

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeInit(Ljava/lang/Object;IIIIIJ)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->isReaderValid:Z

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->format:I

    return p0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->width:I

    return p0
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->height:I

    return p0
.end method

.method private blacklist acquireNextMPSurfaceImage(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I
    .locals 3

    const-string v0, "Unknown MPSurfaceReader_nativeImageSetup return code "

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeImageSetup(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    :goto_0
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist acquireNextMPSurfaceImageNoThrowException()Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
    .locals 1

    new-instance v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;-><init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->acquireNextMPSurfaceImage(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist dropImageIfRequired()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->maxImages:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropOldestImage()V

    :cond_0
    return-void
.end method

.method private blacklist dropOldestImage()V
    .locals 3

    new-instance v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;-><init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeImageSetup(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->releaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to drop oldest image on availCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dropCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic blacklist lambda$postEventFromNative$0(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;->onImageAvailable(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V

    return-void
.end method

.method private static native blacklist nativeClassInit()V
.end method

.method private native blacklist nativeClose()V
.end method

.method private native blacklist nativeGetSurface()Landroid/view/Surface;
.end method

.method private native blacklist nativeImageSetup(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I
.end method

.method private native blacklist nativeInit(Ljava/lang/Object;IIIIIJ)V
.end method

.method private native blacklist nativeReleaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V
.end method

.method public static blacklist of(IIIIJ)Lcom/samsung/android/motionphoto/core/MPSurfaceReader;
    .locals 7

    new-instance v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;-><init>(IIIIJ)V

    return-object v0
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;)V
    .locals 4

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listener:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->closeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->isReaderValid:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->availImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropImageIfRequired()V

    new-instance v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method


# virtual methods
.method public blacklist acquireLatestImage()Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->acquireNextImage()Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->acquireNextMPSurfaceImageNoThrowException()Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->close()V

    :cond_2
    throw p0
.end method

.method public blacklist acquireNextImage()Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
    .locals 3

    new-instance v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;-><init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->acquireNextMPSurfaceImage(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown MPSurfaceReader_nativeImageSetup return code "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->maxImages:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dropImageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    const-string v0, "failed to acquire image unless there is no dropped image"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public whitelist test-api close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    const-string v1, "close MPSurfaceReader...E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->setOnImageAvailableListener(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->isReaderValid:Z

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeClose()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "close MPSurfaceReader...X"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public blacklist releaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeReleaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V

    return-void
.end method

.method public blacklist setOnImageAvailableListener(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, p2, :cond_4

    :cond_1
    invoke-static {p2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$HandlerExecutor;

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    invoke-direct {p2, v1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler is null but the current thread is not a looper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerExecutor:Ljava/util/concurrent/Executor;

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listener:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

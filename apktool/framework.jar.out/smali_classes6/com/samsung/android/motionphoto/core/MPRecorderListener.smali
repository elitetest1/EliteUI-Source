.class public Lcom/samsung/android/motionphoto/core/MPRecorderListener;
.super Ljava/lang/Object;
.source "MPRecorderListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

.field private blacklist mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "secmm.sum.junit-test"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->native_init()V

    :cond_1
    const-string v0, "MPRecorderListener"

    sput-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string v1, "MPRecorderListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private native blacklist native_finalize()V
.end method

.method private static native blacklist native_init()V
.end method

.method private native blacklist native_setup(Ljava/lang/Object;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "postEventFromNative: %d, %d, %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->native_finalize()V

    return-void
.end method

.method public blacklist setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public blacklist setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method public blacklist setToken(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->mEventHandler:Lcom/samsung/android/motionphoto/core/MPClientEventHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->setToken(I)V

    :cond_0
    return-void
.end method

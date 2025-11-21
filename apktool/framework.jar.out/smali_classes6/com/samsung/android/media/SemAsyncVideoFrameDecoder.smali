.class public Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
.super Ljava/lang/Object;
.source "SemAsyncVideoFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;,
        Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;
    }
.end annotation


# static fields
.field private static final blacklist DECODING_COMPLETED:I = 0xca

.field private static final blacklist ERROR:I = 0x64

.field public static final whitelist HW_CODEC:I = 0x1

.field private static final blacklist INFO:I = 0xc8

.field private static final blacklist INIT_COMPLETED:I = 0xc9

.field public static final blacklist MEDIA_ERROR_CODEC_DIED:I = 0x65

.field public static final blacklist MEDIA_ERROR_EXTRACTOR_DIED:I = 0x64

.field public static final whitelist MEDIA_ERROR_IO:I = -0x3ec

.field public static final whitelist MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final whitelist MEDIA_ERROR_RESOURCE_OVERSPEC:I = -0x1389

.field public static final whitelist MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final whitelist MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final whitelist OPTION_CLOSEST:I = 0x3

.field public static final whitelist OPTION_CLOSEST_SYNC:I = 0x2

.field public static final whitelist OPTION_NEXT_SYNC:I = 0x1

.field public static final whitelist OPTION_PREVIOUS_SYNC:I = 0x0

.field public static final whitelist SW_CODEC:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemAsyncVideoFrameDecoder"

.field private static final blacklist VIDEO_FRAME:I = 0x1


# instance fields
.field private blacklist mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

.field private blacklist mNativeContext:J

.field private blacklist mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

.field private blacklist mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

.field private blacklist mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

.field private blacklist mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

.field private blacklist mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "videoframedec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->native_init()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;-><init>(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;-><init>(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private native blacklist _init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _init(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _release()V
.end method

.method private native blacklist _reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _setFrameTime(Landroid/os/Parcel;)V
.end method

.method private native blacklist _setOutputColorFormat(Landroid/graphics/Bitmap$Config;)V
.end method

.method private native blacklist _setOutputImageSize(IIZ)V
.end method

.method private native blacklist _setPreferredCodec(I)V
.end method

.method private native blacklist _setSeekOption(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _start(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private blacklist getCurrentVideoCodecUsage()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getVideoFrameRate()I

    move-result v3

    const/16 v4, 0x78

    if-lt v3, v4, :cond_2

    const/high16 v3, 0x40800000    # 4.0f

    goto :goto_1

    :cond_2
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    const/16 v4, 0xf

    if-gt v3, v4, :cond_4

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    int-to-float v1, v1

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getVideoWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getVideoHeight()I

    move-result v2

    mul-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private blacklist init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object v1, p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object p1, p3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "init failed with file scheme"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final native blacklist native_finalize()V
.end method

.method private static final native blacklist native_init()V
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 2

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v0, "SemAsyncVideoFrameDecoder"

    if-nez p0, :cond_0

    const-string/jumbo p0, "vfd is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    if-nez v1, :cond_1

    const-string/jumbo p0, "vfd.mEventHandler is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->native_finalize()V

    return-void
.end method

.method public whitelist init(Ljava/io/FileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public whitelist init(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_init(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public whitelist init(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_release()V

    return-void
.end method

.method public whitelist reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_reset()V

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mEventHandler:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public whitelist setOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnDecodingCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    return-void
.end method

.method public whitelist setOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnErrorListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    return-void
.end method

.method public whitelist setOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnInitCompleteListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    return-void
.end method

.method public whitelist setOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mOnVideoFrameListener:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    return-void
.end method

.method public whitelist setOutputColorFormat(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setOutputColorFormat(Landroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public whitelist setOutputImageSize(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setOutputImageSize(IIZ)V

    return-void
.end method

.method public whitelist setPreferredCodec(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Illegal option for setPreferredCodec :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setPreferredCodec(I)V

    return-void
.end method

.method public whitelist setSeekOption(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setSeekOption(I)V

    return-void
.end method

.method public whitelist setTargetFrameTimeList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abnormal frame time. timeMsList["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_setFrameTime(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "there\'s no time request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public whitelist start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMaxVideoCapacity()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->getCurrentVideoCodecUsage()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_start(II)V

    return-void
.end method

.method public whitelist stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->_stop()V

    return-void
.end method

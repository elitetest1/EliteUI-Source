.class public Lcom/samsung/android/media/codec/SemVideoTranscodingService;
.super Ljava/lang/Object;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;,
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;,
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;
    }
.end annotation


# static fields
.field public static final blacklist KEY_INPUT_PATH:Ljava/lang/String; = "input-path"

.field public static final blacklist KEY_OUTPUT_PATH:Ljava/lang/String; = "output-path"

.field public static final blacklist KEY_PLAYBACK_SPEED_CHANGES:Ljava/lang/String; = "playback-speed-changes"

.field private static final blacklist TAG:Ljava/lang/String; = "SemVideoTranscodingService"

.field public static final blacklist TRANSCODING_MODE_BOOMERANG:I = 0xca

.field public static final whitelist TRANSCODING_MODE_HDR_TO_SDR:I = 0x0

.field public static final blacklist TRANSCODING_MODE_HLG_TO_SDR:I = 0x2

.field public static final blacklist TRANSCODING_MODE_INSTANT_SLOW_MOTION:I = 0xc8

.field public static final blacklist TRANSCODING_MODE_INSTANT_SLOW_MOTION_WITH_HDR2SDR:I = 0xc9

.field public static final blacklist TRANSCODING_MODE_P3_TO_SRGB:I = 0x64

.field public static final whitelist TRANSCODING_MODE_SLOW_MOTION_TO_NORMAL:I = 0x1


# instance fields
.field private blacklist mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemVideoTranscodingService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    return-void
.end method


# virtual methods
.method public whitelist createClient(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") in("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") out("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "input-path"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "output-path"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p4}, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->createClient(ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createClient(ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemVideoTranscodingService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p0, "IVideoTranscodingService is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p3}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->register(ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string p0, "id is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_1
    new-instance v4, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    iget-object v5, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    invoke-virtual {v4}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->isValid()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported mode ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    return-object v4

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Exception createClient()"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

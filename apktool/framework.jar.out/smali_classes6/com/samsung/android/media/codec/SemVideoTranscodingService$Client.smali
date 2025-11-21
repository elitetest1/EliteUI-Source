.class public Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
.super Ljava/lang/Object;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/SemVideoTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field private final blacklist mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->setClient(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)V

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x64

    if-ne p3, v0, :cond_1

    new-instance v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iput-object v1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    return-void

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    const/16 p1, 0xc8

    if-eq v5, p1, :cond_3

    const/16 p1, 0xc9

    if-eq v5, p1, :cond_3

    const/16 p1, 0xca

    if-ne v5, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    return-void

    :cond_3
    :goto_0
    new-instance v2, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iput-object v2, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    return-void

    :cond_4
    :goto_1
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    new-instance v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iput-object v2, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    return-void
.end method


# virtual methods
.method public blacklist isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist start()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    invoke-virtual {p0}, Lcom/samsung/android/media/codec/client/ClientImpl;->start()V

    return-void
.end method

.method public whitelist stop()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    invoke-virtual {p0}, Lcom/samsung/android/media/codec/client/ClientImpl;->stop()V

    return-void
.end method

.method public blacklist transcode()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    invoke-virtual {p0}, Lcom/samsung/android/media/codec/client/ClientImpl;->transcode()V

    return-void
.end method

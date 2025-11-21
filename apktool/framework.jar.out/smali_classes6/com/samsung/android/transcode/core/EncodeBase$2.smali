.class Lcom/samsung/android/transcode/core/EncodeBase$2;
.super Landroid/media/MediaCodec$Callback;
.source "EncodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/transcode/core/EncodeBase;->setVideoDecoderAsyncCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/transcode/core/EncodeBase;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/transcode/core/EncodeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    const-string p1, "TranscodeLib"

    const-string/jumbo p2, "video Decoder has error"

    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    iget-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object p1, p1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object p0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object p1, p1, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-static {p1}, Lcom/samsung/android/transcode/core/EncodeBase;->access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->sendVideoToDecoder(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    iget-object p1, p1, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-static {p1}, Lcom/samsung/android/transcode/core/EncodeBase;->access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/transcode/core/EncodeBase$2;->this$0:Lcom/samsung/android/transcode/core/EncodeBase;

    invoke-static {p0, p2, p3}, Lcom/samsung/android/transcode/core/EncodeBase;->access$300(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "video decoder: onOutputFormatChanged "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranscodeLib"

    invoke-static {p1, p0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;
.super Landroid/os/Handler;
.source "SemAsyncVideoFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "SemAsyncVideoFrameDecoder"

    if-nez v0, :cond_0

    const-string p0, "VideoFrameDecoder went away with unhandled events"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message type "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_2

    const-string p1, "INIT_COMPLETED"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-interface {p1, p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;->onInitCompleted(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)V

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xca

    if-ne v0, v2, :cond_6

    const-string v0, "DECODING_COMPLETED"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;->onDecodingCompleted(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;I)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v4, v5}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;->onError(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;II)Z

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Error is not handled("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "VIDEO_FRAME"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, p0, v0, v2, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;->onVideoFrame(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/graphics/Bitmap;II)V

    :cond_6
    return-void
.end method

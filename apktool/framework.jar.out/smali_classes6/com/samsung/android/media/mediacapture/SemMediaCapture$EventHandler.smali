.class Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmNativeContext(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "SemMediaCapture"

    if-nez v0, :cond_0

    const-string/jumbo p0, "mediacapture went away with unhandled events"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x64

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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;->onError(Lcom/samsung/android/media/mediacapture/SemMediaCapture;II)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingUpdatedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingUpdatedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;->onUpdated(Lcom/samsung/android/media/mediacapture/SemMediaCapture;I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRenderingStartedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRenderingStartedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {p1, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;->onRenderingStarted(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {p1, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;->onRecordingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPlaybackCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPlaybackCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {p1, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;->onPlaybackCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnDecodingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {p1, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;->onDecodingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-$$Nest$fgetmOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {p1, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;->onPrepared(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    :cond_8
    return-void
.end method

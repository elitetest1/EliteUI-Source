.class Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;
.super Ljava/lang/Object;
.source "SemMediaCaptureClient.java"

# interfaces
.implements Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->transcode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPrepared(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPrepared() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemVideoTranscodingService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-static {p1}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->-$$Nest$fgetmCapture(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->startCapture()V

    new-instance p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$CaptureThread;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$1;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-direct {p1, p0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$CaptureThread;-><init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$CaptureThread;->start()V

    return-void
.end method

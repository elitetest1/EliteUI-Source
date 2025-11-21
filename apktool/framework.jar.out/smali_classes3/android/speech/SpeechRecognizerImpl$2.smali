.class Landroid/speech/SpeechRecognizerImpl$2;
.super Landroid/speech/IRecognitionServiceManagerCallback$Stub;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bind to system recognition service failed with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmListener(Landroid/speech/SpeechRecognizerImpl;)Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    return-void
.end method

.method public blacklist onSuccess(Landroid/speech/IRecognitionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fputmService(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/IRecognitionService;)V

    :goto_0
    iget-object p1, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizerImpl;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$2;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizerImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

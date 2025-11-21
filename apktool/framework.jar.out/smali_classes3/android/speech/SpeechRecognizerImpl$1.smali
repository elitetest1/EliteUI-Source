.class Landroid/speech/SpeechRecognizerImpl$1;
.super Landroid/os/Handler;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleDestroy(Landroid/speech/SpeechRecognizerImpl;)V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object v0, p1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mIntent:Landroid/content/Intent;

    iget-object v1, p1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-static {p0, v0, v1, p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object v0, p1, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    iget-object v1, p1, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-static {p0, v0, v1, p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizerImpl;Landroid/content/ComponentName;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/speech/RecognitionListener;

    invoke-static {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/RecognitionListener;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizerImpl;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizerImpl;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$1;->this$0:Landroid/speech/SpeechRecognizerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->-$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

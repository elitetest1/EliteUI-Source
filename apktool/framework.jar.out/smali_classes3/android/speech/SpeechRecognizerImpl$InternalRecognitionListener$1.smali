.class Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onLanguageDetection(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/speech/RecognitionListener;->onEndOfSegmentedSession()V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, v0, p1}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    return-void

    :pswitch_9
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    return-void

    :pswitch_a
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    return-void

    :pswitch_b
    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

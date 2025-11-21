.class Lcom/samsung/android/speech/SemSpeechRecognizer$1;
.super Landroid/os/Handler;
.source "SemSpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$1;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio is halt without stopRecognition()"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$1;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-virtual {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->stopRecognition()V

    return-void
.end method

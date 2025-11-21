.class Landroid/view/translation/Translator$ServiceBinderReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinderReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
    }
.end annotation


# instance fields
.field private blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mSessionId:I

.field private final blacklist mTranslator:Landroid/view/translation/Translator;


# direct methods
.method constructor blacklist <init>(Landroid/view/translation/Translator;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/translation/Translator;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/Translator;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    iput-object p2, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method blacklist getSessionStateResult()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    iget p0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mSessionId:I

    return p0

    :cond_0
    :try_start_1
    new-instance p0, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;

    const-string v1, "Session not created in 60000ms"

    invoke-direct {p0, v1, v0}, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;-><init>(Ljava/lang/String;Landroid/view/translation/Translator-IA;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;

    const-string v1, "Session not created because interrupted"

    invoke-direct {p0, v1, v0}, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;-><init>(Ljava/lang/String;Landroid/view/translation/Translator-IA;)V

    throw p0
.end method

.method public blacklist send(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo p1, "sessionId"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mSessionId:I

    const-string p1, "binder"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "Translator"

    const-string p1, "No binder extra result"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    invoke-static {p1, v1}, Landroid/view/translation/Translator;->-$$Nest$msetServiceBinder(Landroid/view/translation/Translator;Landroid/os/IBinder;)V

    iget-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

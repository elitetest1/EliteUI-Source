.class Lcom/samsung/android/bio/iris/SemIrisManager$4;
.super Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/iris/SemIrisManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(JI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_0

    const-string v0, "BioPrompt onAcquired 1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$4$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$4$1;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "BioPrompt onAcquired 2"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationFailed(J)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const-string p2, "Bio.SemIrisManager"

    if-eqz p1, :cond_0

    const-string p1, "BioPrompt onAuthenticationFailed 1"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/bio/iris/SemIrisManager$4$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/bio/iris/SemIrisManager$4$3;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p1, "BioPrompt onAuthenticationFailed 2"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const-string p2, "Bio.SemIrisManager"

    if-eqz p1, :cond_0

    const-string p1, "BioPrompt onAuthenticationSucceeded 1"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;

    invoke-direct {p2, p0, p3, p4}, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;Lcom/samsung/android/camera/iris/Iris;[B)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p1, "BioPrompt onAuthenticationSucceeded 2"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x6b

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onEnrollResult(JIII)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/iris/Iris;

    const/4 v1, 0x0

    move-wide v4, p1

    move v3, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/iris/Iris;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 p1, 0x64

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p5, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onError(JI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_0

    const-string v0, "BioPrompt onError 1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$4$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$4$4;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "BioPrompt onError 2"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x68

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onIRImage(J[BII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x6a

    invoke-virtual {p0, p1, p4, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRemoved(JII)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x69

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

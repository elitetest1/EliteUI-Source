.class Lcom/samsung/android/media/codec/VideoTranscodingService$1;
.super Landroid/os/Handler;
.source "VideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/VideoTranscodingService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/VideoTranscodingService;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmTaskLock(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$mprintTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmStartingTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmStartingTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    invoke-virtual {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getState()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VideoTranscodingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has been started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->start()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {v0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmStartingTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {p0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmTaskLock(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-void

    :goto_4
    iget-object p0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;->this$0:Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {p0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->-$$Nest$fgetmTaskLock(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

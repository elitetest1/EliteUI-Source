.class Landroid/net/LowLatencyModeManager$1;
.super Landroid/os/Handler;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LowLatencyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LowLatencyModeManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/LowLatencyModeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "slotId"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get latency done, error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get latency settings from modem, ul:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-byte v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",dl:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",prio:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, v0, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",ets:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-byte v8, v0, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    new-instance v1, Landroid/net/LowLatencyModeManager$LatencyResult;

    aget-byte v5, v0, v6

    aget-byte v8, v0, v3

    aget-byte v4, v0, v4

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    aget-byte v0, v0, v7

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    invoke-direct {v1, v5, v8, v4, v3}, Landroid/net/LowLatencyModeManager$LatencyResult;-><init>(IIZZ)V

    iget-object v0, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-static {v0}, Landroid/net/LowLatencyModeManager;->-$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-static {v0}, Landroid/net/LowLatencyModeManager;->-$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/LowLatencyModeManager$LatencyCallback;->onGetLatencyDone(Landroid/net/LowLatencyModeManager$LatencyResult;)V

    iget-object v0, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/LowLatencyModeManager;->-$$Nest$fputmCallback(Landroid/net/LowLatencyModeManager;Landroid/net/LowLatencyModeManager$LatencyCallback;)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p0, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    const-string p1, "get latency wrong result format"

    invoke-static {p0, p1}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_4
    iget-object p0, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/net/LowLatencyModeManager;->-$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V

    return-void

    :cond_7
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set latency done, error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/net/LowLatencyModeManager;->-$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V

    return-void
.end method

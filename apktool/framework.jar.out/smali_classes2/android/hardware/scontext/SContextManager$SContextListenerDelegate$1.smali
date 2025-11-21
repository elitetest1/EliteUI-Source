.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;
.super Landroid/os/Handler;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

.field final synthetic blacklist val$this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iput-object p3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->val$this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmDereisgeredListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/scontext/SContextEvent;

    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmIsHistoryData(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z

    move-result v1

    const-string v2, "SContextManager"

    if-eqz v1, :cond_1

    const-string v1, "Data is received so remove listener related HistoryData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    iget-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object p1, p1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {p0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v0, v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v0, p1}, Landroid/hardware/scontext/SContextManager;->-$$Nest$mcheckHistoryMode(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {p0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v0, v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v0}, Landroid/hardware/scontext/SContextManager;->-$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object v0, v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {v0}, Landroid/hardware/scontext/SContextManager;->-$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-static {v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/scontext/SContextListener;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Listener is already registered and history data is sent to Application"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-static {p0}, Landroid/hardware/scontext/SContextManager;->-$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

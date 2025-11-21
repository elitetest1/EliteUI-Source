.class Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerEventHandler"
.end annotation


# instance fields
.field private blacklist controller:Lcom/samsung/vekit/Control/VEController;

.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage : msg.what : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {p0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage :Invalid callback msg "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-static {p0, v0, p1}, Lcom/samsung/vekit/Control/VEController;->access$300(Lcom/samsung/vekit/Control/VEController;ILjava/util/HashMap;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/vekit/Control/VEController;->access$200(Lcom/samsung/vekit/Control/VEController;III)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/vekit/Control/VEController;->access$100(Lcom/samsung/vekit/Control/VEController;IILjava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {p0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportPaused()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {p0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportStarted()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onShowCompleted(J)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iput-boolean v2, p1, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {p0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportCompleted()V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iput-boolean v2, p1, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    invoke-interface {p0}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onPlaybackCompleted()V

    :cond_8
    return-void
.end method

.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor blacklist <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message type "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DrmManagerClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/drm/DrmInfo;

    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v1}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/drm/DrmManagerClient;->-$$Nest$m_processDrmInfo(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v1

    const-string v2, "drm_info_status_object"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "drm_info_object"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iget v4, v1, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v2, v4, :cond_1

    new-instance p1, Landroid/drm/DrmEvent;

    iget-object v2, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v2}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v2

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v1, v1, Landroid/drm/DrmInfoStatus;->infoType:I

    invoke-static {v4, v1}, Landroid/drm/DrmManagerClient;->-$$Nest$mgetEventType(Landroid/drm/DrmManagerClient;I)I

    move-result v1

    invoke-direct {p1, v2, v1, v3, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget p1, v1, Landroid/drm/DrmInfoStatus;->infoType:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result p1

    :goto_0
    new-instance v1, Landroid/drm/DrmErrorEvent;

    iget-object v2, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v2}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v2

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v4, p1}, Landroid/drm/DrmManagerClient;->-$$Nest$mgetErrorType(Landroid/drm/DrmManagerClient;I)I

    move-result p1

    invoke-direct {v1, v2, p1, v3, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object p1, v1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/drm/DrmManagerClient;->-$$Nest$m_removeAllRights(Landroid/drm/DrmManagerClient;I)I

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Landroid/drm/DrmEvent;

    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v0

    invoke-direct {p1, v0, v2, v3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    :goto_1
    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/drm/DrmErrorEvent;

    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v0

    const/16 v1, 0x7d7

    invoke-direct {p1, v0, v1, v3}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    :goto_2
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v0, v1, v3}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    :cond_5
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v0

    iget-object p0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v0, p0, p1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    :cond_6
    return-void
.end method

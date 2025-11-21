.class Landroid/media/tv/interactive/TvInteractiveAppService$1;
.super Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;
.source "TvInteractiveAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {p0}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService;->onRegisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    return-void
.end method

.method public blacklist registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {p0}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public blacklist sendAppLinkCommand(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService;->onAppLinkCommand(Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService;->onUnregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {p0}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

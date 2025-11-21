.class Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/infra/AbstractRemoteService;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean p1, p1, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object p1, p1, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v0, "onBindingDied()"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mscheduleUnbind(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean p1, p1, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object p1, p1, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {p1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fgetmDestroyed(Lcom/android/internal/infra/AbstractRemoteService;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {p1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fgetmConnecting(Lcom/android/internal/infra/AbstractRemoteService;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    :try_start_0
    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmServiceExitReason(Lcom/android/internal/infra/AbstractRemoteService;I)V

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmServiceExitSubReason(Lcom/android/internal/infra/AbstractRemoteService;I)V

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mhandleOnConnectedStateChangedInternal(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmServiceDied(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    return-void

    :catch_0
    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {p0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mhandleBinderDied(Lcom/android/internal/infra/AbstractRemoteService;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string p1, "onServiceConnected() was dispatched after unbindService."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean p1, p1, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object p1, p1, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    return-void
.end method

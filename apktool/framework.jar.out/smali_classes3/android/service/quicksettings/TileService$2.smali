.class Landroid/service/quicksettings/TileService$2;
.super Landroid/service/quicksettings/IQSTileService$Stub;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method constructor blacklist <init>(Landroid/service/quicksettings/TileService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0}, Landroid/service/quicksettings/IQSTileService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onClick(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/service/quicksettings/TileService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onStartListening()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist onStopListening()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist onTileAdded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist onTileRemoved()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist onUnlockComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist semGetDetailView()Landroid/widget/RemoteViews;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public blacklist semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public blacklist semGetSettingsIntent()Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public blacklist semIsToggleButtonChecked()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semIsToggleButtonChecked()Z

    move-result p0

    return p0
.end method

.method public blacklist semIsToggleButtonExists()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semIsToggleButtonExists()Z

    move-result p0

    return p0
.end method

.method public blacklist semSetToggleButtonChecked(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/service/quicksettings/TileService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

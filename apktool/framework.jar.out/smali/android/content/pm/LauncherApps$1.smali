.class Landroid/content/pm/LauncherApps$1;
.super Landroid/content/pm/IOnAppsChangedListener$Stub;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/LauncherApps;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/LauncherApps;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-direct {p0}, Landroid/content/pm/IOnAppsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LauncherApps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPackageAdded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LauncherApps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPackageChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LauncherApps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPackageRemoved "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p3, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 2

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnShortcutChanged(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onUserConfigChanged(Landroid/content/pm/LauncherUserInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Landroid/content/pm/LauncherApps;->-$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {v1, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnUserConfigChanged(Landroid/content/pm/LauncherUserInfo;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

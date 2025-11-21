.class Landroid/app/NotificationManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/app/NotificationManager$NotificationChannelQuery;",
        "Ljava/util/List<",
        "Landroid/app/NotificationChannel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/NotificationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$1;->apply(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist apply(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/NotificationManager$1;->this$0:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object p0

    :try_start_0
    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgetcallingPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgettargetPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->-$$Nest$fgetuserId(Landroid/app/NotificationManager$NotificationChannelQuery;)I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Landroid/app/INotificationManager;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist shouldBypassCache(Landroid/app/NotificationManager$NotificationChannelQuery;)Z
    .locals 0

    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "shouldBypassCache called when nm_binder_perf_cache_channels off"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$1;->shouldBypassCache(Landroid/app/NotificationManager$NotificationChannelQuery;)Z

    move-result p0

    return p0
.end method

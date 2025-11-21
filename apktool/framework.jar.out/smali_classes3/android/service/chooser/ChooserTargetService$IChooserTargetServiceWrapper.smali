.class Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
.super Landroid/service/chooser/IChooserTargetService$Stub;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IChooserTargetServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/chooser/ChooserTargetService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/chooser/ChooserTargetService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {p0, p1, p2}, Landroid/service/chooser/ChooserTargetService;->onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    invoke-interface {p3, p0}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    throw p0
.end method

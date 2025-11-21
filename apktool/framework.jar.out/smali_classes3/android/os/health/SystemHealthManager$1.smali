.class Landroid/os/health/SystemHealthManager$1;
.super Landroid/os/ResultReceiver;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/health/SystemHealthManager;->getSupportedPowerMonitors(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/health/SystemHealthManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$onResult:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/health/SystemHealthManager$1;->this$0:Landroid/os/health/SystemHealthManager;

    iput-object p3, p0, Landroid/os/health/SystemHealthManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/os/health/SystemHealthManager$1;->val$onResult:Ljava/util/function/Consumer;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const-string/jumbo p1, "monitors"

    const-class v0, Landroid/os/PowerMonitor;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/PowerMonitor;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iget-object p2, p0, Landroid/os/health/SystemHealthManager$1;->this$0:Landroid/os/health/SystemHealthManager;

    invoke-static {p2}, Landroid/os/health/SystemHealthManager;->-$$Nest$fgetmPowerMonitorsLock(Landroid/os/health/SystemHealthManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroid/os/health/SystemHealthManager$1;->this$0:Landroid/os/health/SystemHealthManager;

    invoke-static {v0, p1}, Landroid/os/health/SystemHealthManager;->-$$Nest$fputmPowerMonitorsInfo(Landroid/os/health/SystemHealthManager;Ljava/util/List;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroid/os/health/SystemHealthManager$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroid/os/health/SystemHealthManager$1;->val$onResult:Ljava/util/function/Consumer;

    new-instance v0, Landroid/os/health/SystemHealthManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/os/health/SystemHealthManager$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/os/health/SystemHealthManager$1;->val$onResult:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

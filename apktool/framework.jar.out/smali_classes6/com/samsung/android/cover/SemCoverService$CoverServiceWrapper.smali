.class Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;
.super Lcom/samsung/android/cover/ICoverService$Stub;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SemCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverServiceWrapper"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lcom/samsung/android/cover/SemCoverService;


# direct methods
.method private constructor greylist <init>(Lcom/samsung/android/cover/SemCoverService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lcom/samsung/android/cover/SemCoverService;Lcom/samsung/android/cover/SemCoverService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;-><init>(Lcom/samsung/android/cover/SemCoverService;)V

    return-void
.end method


# virtual methods
.method public greylist onCoverAppCovered(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/SemCoverService;->getCoverHost()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {p0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    if-eqz p1, :cond_1

    const/16 p0, 0x10

    monitor-exit v0

    return p0

    :cond_1
    const/16 p0, 0x20

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist onSystemReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {p0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {p0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class Landroid/provider/FontsContract$1;
.super Ljava/lang/Object;
.source "FontsContract.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    invoke-static {}, Landroid/provider/FontsContract;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/provider/FontsContract;->-$$Nest$sfgetsThread()Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/provider/FontsContract;->-$$Nest$sfgetsThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/provider/FontsContract;->-$$Nest$sfputsThread(Landroid/os/HandlerThread;)V

    invoke-static {v0}, Landroid/provider/FontsContract;->-$$Nest$sfputsHandler(Landroid/os/Handler;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Landroid/os/PowerManager$WakeLock$1;
.super Landroid/os/IWakeLockCallback$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager$WakeLock;->setStateListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$WakeLockStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$WakeLockStateListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager$WakeLock;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$WakeLockStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/os/PowerManager$WakeLock$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$WakeLock$1;->val$listener:Landroid/os/PowerManager$WakeLockStateListener;

    invoke-direct {p0}, Landroid/os/IWakeLockCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$0(Landroid/os/PowerManager$WakeLockStateListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/os/PowerManager$WakeLockStateListener;->onStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onStateChanged(Z)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/os/PowerManager$WakeLock$1;->val$listener:Landroid/os/PowerManager$WakeLockStateListener;

    new-instance v3, Landroid/os/PowerManager$WakeLock$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/os/PowerManager$WakeLock$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$WakeLockStateListener;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.class Landroid/app/KeyguardManager$2;
.super Lcom/android/internal/policy/IDeviceLockedStateListener$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/internal/policy/IDeviceLockedStateListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceLockedStateChanged$0(Landroid/app/KeyguardManager$DeviceLockedStateListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/KeyguardManager$DeviceLockedStateListener;->onDeviceLockedStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceLockedStateChanged$1(ZLandroid/app/KeyguardManager$DeviceLockedStateListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/app/KeyguardManager$DeviceLockedStateListener;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceLockedStateChanged(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->deviceUnlockListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmDeviceLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    invoke-static {p0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmDeviceLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v1, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

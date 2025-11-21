.class public Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;
.super Ljava/lang/Object;
.source "SemWifiManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbTestConfigSubscription"
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mClosed:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mModule:Ljava/lang/String;

.field private final blacklist mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

.field final synthetic blacklist this$0:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiManager;Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->this$0:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/CloseGuard;

    invoke-direct {p1}, Landroid/util/CloseGuard;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mClosed:Z

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

    iput-object p3, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mModule:Ljava/lang/String;

    const-string p0, "close"

    invoke-virtual {p1, p0}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mClosed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mClosed:Z

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->this$0:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;)V

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v0, "SemWifiManager"

    const-string v1, "Failed to unregister AbTestConfigUpdateObserver."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void

    :goto_0
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbTestConfigSubscription{mObserver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mModule=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;->mModule:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

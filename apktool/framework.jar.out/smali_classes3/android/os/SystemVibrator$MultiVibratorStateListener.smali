.class public Landroid/os/SystemVibrator$MultiVibratorStateListener;
.super Ljava/lang/Object;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiVibratorStateListener"
.end annotation


# instance fields
.field private final blacklist mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInitializedMask:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mVibratingMask:I

.field private final blacklist mVibratorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/SystemVibrator$SingleVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$K2An7Yb63Nm4Tfp2PtkYXTEgdnY(Landroid/os/SystemVibrator$MultiVibratorStateListener;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->lambda$onVibrating$0(IZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    return-void
.end method

.method private synthetic blacklist lambda$onVibrating$0(IZ)V
    .locals 9

    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    iget v3, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget v6, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    if-ne v6, v1, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    shl-int p1, v2, p1

    or-int/2addr v6, p1

    iput v6, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    and-int v8, v3, p1

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    if-eq v8, p2, :cond_3

    xor-int/2addr p1, v3

    iput p1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    :cond_3
    iget p1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    if-ne v6, v1, :cond_5

    move p2, v2

    goto :goto_4

    :cond_5
    move p2, v4

    :goto_4
    if-eq v5, p1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    if-eqz p2, :cond_7

    if-eqz v7, :cond_8

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v2, v4

    :cond_8
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_9

    iget-object p0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {p0, p1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist hasRegisteredListeners()Z
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onVibrating(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibrator$MultiVibratorStateListener;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist register(Landroid/os/VibratorManager;[I)V
    .locals 6

    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget v2, p2, v1

    new-instance v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-direct {v3, p0, v1}, Landroid/os/SystemVibrator$SingleVibratorStateListener;-><init>(Landroid/os/SystemVibrator$MultiVibratorStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    iget-object v5, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5, v3}, Landroid/os/Vibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    iget-object v4, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_3
    const-string p1, "Vibrator"

    const-string v1, "Failed to unregister listener while recovering from a failed register call"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    throw p2

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public blacklist unregister(Landroid/os/VibratorManager;)V
    .locals 4

    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Vibrator;->removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    iget-object v2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

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

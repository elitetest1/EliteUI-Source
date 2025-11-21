.class public Landroid/view/SurfaceControlRegistry;
.super Ljava/lang/Object;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlRegistry$DefaultReporter;,
        Landroid/view/SurfaceControlRegistry$Reporter;,
        Landroid/view/SurfaceControlRegistry$NoOpRegistry;
    }
.end annotation


# static fields
.field static final blacklist APPLY:Ljava/lang/String; = "apply"

.field private static final blacklist DUMP_LIMIT:I = 0x100

.field private static final blacklist MAX_LAYERS_REPORTING_THRESHOLD:I = 0x400

.field private static final blacklist NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

.field private static final blacklist RESET_REPORTING_THRESHOLD:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlRegistry"

.field static blacklist sCallStackDebuggingEnabled:Z

.field static blacklist sCallStackDebuggingInitialized:Z

.field private static blacklist sCallStackDebuggingMatchCall:Ljava/lang/String;

.field private static blacklist sCallStackDebuggingMatchName:Ljava/lang/String;

.field private static final blacklist sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

.field private static final blacklist sLock:Ljava/lang/Object;

.field static blacklist sLogAllTxCallsOnApply:Z

.field private static volatile blacklist sProcessRegistry:Landroid/view/SurfaceControlRegistry;


# instance fields
.field public final blacklist INSETS_LEASH_MAX:I

.field private blacklist mHasReportedExceedingMaxThreshold:Z

.field private blacklist mInsetsLeashNum:I

.field private blacklist mMaxLayersReportingThreshold:I

.field private blacklist mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

.field private blacklist mResetReportingThreshold:I

.field private final blacklist mSurfaceControls:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/SurfaceControlRegistry$NoOpRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$NoOpRegistry;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/SurfaceControlRegistry$DefaultReporter;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$DefaultReporter;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    const/16 v0, 0x100

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    iput-object v2, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    const-string/jumbo v2, "persist.wm.debug.shell.insets_leash.max"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/view/SurfaceControlRegistry;->INSETS_LEASH_MAX:I

    iput v1, p0, Landroid/view/SurfaceControlRegistry;->mInsetsLeashNum:I

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlRegistry-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControlRegistry;-><init>()V

    return-void
.end method

.method public static blacklist createProcessInstance(Landroid/content/Context;)V
    .locals 1

    const-string v0, "android.permission.READ_FRAME_BUFFER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControlRegistry;

    invoke-direct {v0}, Landroid/view/SurfaceControlRegistry;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Expected caller to hold READ_FRAME_BUFFER"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist destroyProcessInstance()V
    .locals 2

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist dump(IZLjava/io/PrintWriter;)V
    .locals 7

    const-string/jumbo v0, "sLogAllTxCallsOnApply="

    const-string/jumbo v1, "sCallStackDebuggingMatchCall="

    const-string/jumbo v2, "sCallStackDebuggingMatchName="

    const-string/jumbo v3, "sCallStackDebuggingEnabled="

    const-string/jumbo v4, "sCallStackDebuggingInitialized="

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->runGcAndFinalizers()V

    :cond_0
    sget-object p1, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v5, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v5, :cond_1

    sget-object v5, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    sget-object v6, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    iget-object v6, v6, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v6, p0, p2}, Landroid/view/SurfaceControlRegistry$DefaultReporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist getProcessInstance()Landroid/view/SurfaceControlRegistry;
    .locals 2

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final blacklist initializeCallStackDebugging()V
    .locals 2

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->updateCallStackDebuggingParams()V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling transaction call stack debugging: matchCall="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " matchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " logCallsWithApply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static final blacklist isCallStackDebuggingEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    return v0
.end method

.method private static blacklist runGcAndFinalizers()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ran gc and finalizers ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist updateCallStackDebuggingParams()V
    .locals 2

    const-string/jumbo v0, "persist.wm.debug.sc.tx.log_match_call"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const-string/jumbo v0, "persist.wm.debug.sc.tx.log_match_name"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const-string v1, "apply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    return-void
.end method


# virtual methods
.method blacklist add(Landroid/view/SurfaceControl;)V
    .locals 5

    const-string v0, "Max of insets leash, num="

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TEMP_TOO_MANY_INSETS_LEASH_BUG_FIX:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isInsetsLeash()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/view/SurfaceControlRegistry;->mInsetsLeashNum:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/view/SurfaceControlRegistry;->mInsetsLeashNum:I

    iget v2, p0, Landroid/view/SurfaceControlRegistry;->INSETS_LEASH_MAX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v2, :cond_0

    :try_start_1
    const-string p1, "/data/log/core/systemui_insets-leash.hprof"

    invoke-static {p1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "SurfaceControlRegistry"

    const-string v4, "Cannot dump for java heapdump: "

    invoke-static {v2, v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/SurfaceControlRegistry;->mInsetsLeashNum:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/view/SurfaceControlRegistry$1;

    invoke-direct {v0, p0, p1}, Landroid/view/SurfaceControlRegistry$1;-><init>(Landroid/view/SurfaceControlRegistry;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControlRegistry$1;->start()V

    :cond_0
    iget-boolean p1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    iget v0, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    if-lt p1, v0, :cond_1

    new-instance p1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p1, v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iget-object v0, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    iget-object v2, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    const/16 v4, 0x100

    invoke-interface {v0, v2, v4, p1}, Landroid/view/SurfaceControlRegistry$Reporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    iput-boolean v3, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method final blacklist checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    return-void
.end method

.method final blacklist checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->updateCallStackDebuggingParams()V

    :cond_0
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_1

    if-nez p5, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v0, ""

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " sc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    const-string v3, "SurfaceControlRegistry"

    if-eqz p5, :cond_6

    if-eqz p2, :cond_4

    iget-object p0, p2, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, " t="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string p0, ","

    if-eqz p4, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", caller="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x6

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string p5, " ("

    if-eqz p4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ") "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_3
    sget-boolean p5, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    const/4 v0, 0x0

    if-eqz p5, :cond_a

    if-eqz p2, :cond_a

    const-string p5, "apply"

    if-ne p1, p5, :cond_8

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    :goto_4
    iget-object p1, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "        "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControlRegistry;->matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz p0, :cond_c

    iget-object p0, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControlRegistry;->matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    :cond_c
    :goto_5
    return-void

    :cond_d
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final blacklist matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    return p2

    :cond_2
    if-nez p1, :cond_3

    return v0

    :cond_3
    sget-object p0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return p2

    :cond_6
    :goto_1
    return v0
.end method

.method blacklist remove(Landroid/view/SurfaceControl;)V
    .locals 3

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TEMP_TOO_MANY_INSETS_LEASH_BUG_FIX:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isInsetsLeash()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/view/SurfaceControlRegistry;->mInsetsLeashNum:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/view/SurfaceControlRegistry;->mInsetsLeashNum:I

    if-gez p1, :cond_0

    iput v2, p0, Landroid/view/SurfaceControlRegistry;->mInsetsLeashNum:I

    :cond_0
    iget-boolean p1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    iget v1, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    if-gt p1, v1, :cond_1

    iput-boolean v2, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setCallStackDebuggingParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const-string p1, "apply"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    return-void
.end method

.method public blacklist setReportingThresholds(IILandroid/view/SurfaceControlRegistry$Reporter;)V
    .locals 2

    const-string v0, "Expected maxLayersReportingThreshold ("

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v1

    if-lez p1, :cond_1

    if-ge p2, p1, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    iput p1, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    iput p2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    iput-object p3, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    monitor-exit v1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected non-null reporter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") to be > 0 and resetReportingThreshold ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") to be < maxLayersReportingThreshold"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

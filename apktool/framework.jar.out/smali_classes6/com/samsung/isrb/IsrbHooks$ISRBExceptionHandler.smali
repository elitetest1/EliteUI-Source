.class Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;
.super Ljava/lang/Object;
.source "IsrbHooks.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/isrb/IsrbHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISRBExceptionHandler"
.end annotation


# instance fields
.field private final blacklist mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final blacklist mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    iput-object p1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;Lcom/samsung/isrb/IsrbHooks-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;)V

    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    iget-boolean v0, v0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "IsrbHooks"

    const-string p1, "Ignored !!!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist handleException(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "IsrbHooks"

    if-nez v1, :cond_1

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isBooting(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "is booting cause crash!"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isChoreographerException(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "is viewroot cause crash!"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isBooting(Ljava/lang/Throwable;)Z
    .locals 5

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smcheckServiceState()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    sub-int/2addr v1, v0

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_5

    array-length v2, p1

    sub-int/2addr v2, v1

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    const-string p1, "IsrbHooks"

    const-string v0, "isBooting---stack to long"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    aget-object v2, p1, v1

    const-string/jumbo v3, "startOtherServices"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "startCoreServices"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    return p0
.end method

.method private blacklist isChoreographerException(Ljava/lang/Throwable;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_6

    array-length v2, p1

    sub-int/2addr v2, v0

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    const-string p1, "IsrbHooks"

    const-string v0, "isChoreographerException---stack to long"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    aget-object v2, p1, v0

    const-string v3, "android.view.Choreographer"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Choreographer.java"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "doFrame"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    const-string/jumbo v3, "onCreate"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "onStart"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "onResume"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "onPause"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "onStop"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "onDestroy"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    :goto_1
    return v1

    :cond_6
    return p0
.end method

.method private blacklist isInHandleMessage(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_4

    array-length v2, p1

    sub-int/2addr v2, v0

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    const-string p1, "IsrbHooks"

    const-string v0, "isInHandleMessage---stack to long"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    aget-object v2, p1, v0

    const-string v3, "handleMessage"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return p0
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmApplicationObject(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const-string v3, "IsrbHooks"

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smcheckServiceState()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checkServiceState is NULL"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    iget-object p0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_e

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v0

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v0

    if-ne v0, v4, :cond_3

    const-string v0, "back to RESCUEPARTY,begin to default handler!"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->useDefaultSetting()V

    iget-object p0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_e

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {v5}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    const-string v0, "Use DefaultHanlder!"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    iget-object p0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const-string p2, "android.bg"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string/jumbo p2, "set NULL to instance"

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->isrbresetInstance()V

    :cond_5
    const-string p2, "WifiHandlerThread"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string/jumbo p2, "set SystemProperties for wifi"

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "sys.isrb.wificrash"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Wifi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Connectivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_8

    :cond_7
    const-string/jumbo p2, "set SystemProperties for networkcrash"

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "sys.isrb.networkcrash"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p2, "android.fg"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "android.ui"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "ActivityManager"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "PackageManager"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "android.anim"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "android.display"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "ObserverHandler"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "android.io"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    if-ne v1, p2, :cond_a

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;-><init>(Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;)V

    const-wide/32 v5, 0x15f90

    invoke-virtual {p2, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_e

    :cond_b
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isInHandleMessage(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "count ++ !"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    :cond_c
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v0

    if-eq v0, v4, :cond_d

    const/4 v0, 0x5

    if-lt v2, v0, :cond_b

    :cond_d
    const-string v0, "back to RESCUEPARTY,call default handler!"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->useDefaultSetting()V

    iget-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_e
    return-void

    :cond_f
    :goto_2
    const-string p0, "android thread loop"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    const-string p0, "Catch Exception in thread again!"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

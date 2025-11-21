.class public abstract Landroid/app/Service;
.super Landroid/content/ContextWrapper;
.source "Service.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Service$StartArgFlags;,
        Landroid/app/Service$StartResult;,
        Landroid/app/Service$StopForegroundSelector;
    }
.end annotation


# static fields
.field public static final whitelist START_CONTINUATION_MASK:I = 0xf

.field public static final whitelist START_FLAG_REDELIVERY:I = 0x1

.field public static final whitelist START_FLAG_RETRY:I = 0x2

.field public static final whitelist START_NOT_STICKY:I = 0x2

.field public static final whitelist START_REDELIVER_INTENT:I = 0x3

.field public static final whitelist START_STICKY:I = 0x1

.field public static final whitelist START_STICKY_COMPATIBILITY:I = 0x0

.field public static final greylist-max-o START_TASK_REMOVED_COMPLETE:I = 0x3e8

.field public static final whitelist STOP_FOREGROUND_DETACH:I = 0x2

.field public static final whitelist STOP_FOREGROUND_LEGACY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STOP_FOREGROUND_REMOVE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Service"

.field private static final blacklist TRACE_TRACK_NAME_FOREGROUND_SERVICE:Ljava/lang/String; = "FGS"

.field private static final blacklist sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/StackTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActivityManager:Landroid/app/IActivityManager;

.field private greylist mApplication:Landroid/app/Application;

.field private greylist mClassName:Ljava/lang/String;

.field private blacklist mForegroundServiceTraceTitle:Ljava/lang/String;

.field private final blacklist mForegroundServiceTraceTitleLock:Ljava/lang/Object;

.field private greylist mStartCompatibility:Z

.field private greylist mThread:Landroid/app/ActivityThread;

.field private greylist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Service;->mStartCompatibility:Z

    iput-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitleLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist clearStartForegroundServiceStackTrace()V
    .locals 1

    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;
    .locals 1

    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StackTrace;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist logForegroundServiceStart(Landroid/content/ComponentName;I)V
    .locals 4

    iget-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    const-wide/16 v2, 0x40

    if-nez v1, :cond_0

    const-string v1, "comp=%s type=%s"

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    const-string p2, "FGS"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v2, v3, p2, p1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "FGS"

    invoke-static {v2, v3, p0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist logForegroundServiceStopIfNecessary()V
    .locals 5

    iget-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "FGS"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

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

.method public static blacklist setStartForegroundServiceStackTrace(Ljava/lang/String;Landroid/app/StackTrace;)V
    .locals 1

    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final greylist attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    iput-object p3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    check-cast p6, Landroid/app/IActivityManager;

    iput-object p6, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/app/Service;->mStartCompatibility:Z

    invoke-virtual {p5}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Service;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    :cond_0
    return-void
.end method

.method public final blacklist callOnTimeLimitExceeded(II)V
    .locals 4

    iget-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const-string v1, "Service"

    if-nez v0, :cond_0

    const-string p0, "Service already destroyed, skipping onTimeLimitExceeded()"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->hasServiceTimeLimitExceeded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service no longer relevant, skipping onTimeLimitExceeded()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    invoke-static {}, Landroid/app/Flags;->introduceNewServiceOntimeoutCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->onTimeout(II)V

    :cond_2
    return-void
.end method

.method public final blacklist callOnTimeout(I)V
    .locals 4

    iget-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const-string v1, "Service"

    if-nez v0, :cond_0

    const-string p0, "Service already destroyed, skipping onTimeout()"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->shouldServiceTimeOut(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service no longer relevant, skipping onTimeout()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Service;->onTimeout(I)V

    invoke-static {}, Landroid/app/Flags;->introduceNewServiceOntimeoutCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->onTimeout(II)V

    :cond_2
    return-void
.end method

.method public final blacklist contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;
    .locals 0

    invoke-static {p1, p2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object p0

    return-object p0
.end method

.method public final greylist-max-o detachAndCleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/app/Service;->logForegroundServiceStopIfNecessary()V

    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string/jumbo p0, "nothing to dump"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final whitelist getApplication()Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method final greylist-max-o getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .locals 0

    return-object p0
.end method

.method public final whitelist getForegroundServiceType()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p0}, Landroid/app/IActivityManager;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public whitelist onCreate()V
    .locals 0

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 0

    return-void
.end method

.method public whitelist onRebind(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onStart(Landroid/content/Intent;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    iget-boolean p0, p0, Landroid/app/Service;->mStartCompatibility:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeout(I)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeout(II)V
    .locals 0

    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final greylist setForeground(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setForeground: ignoring old API call on "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final whitelist startForeground(ILandroid/app/Notification;)V
    .locals 7

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    invoke-direct {p0}, Landroid/app/Service;->clearStartForegroundServiceStackTrace()V

    const/4 p1, -0x1

    invoke-direct {p0, v1, p1}, Landroid/app/Service;->logForegroundServiceStart(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final whitelist startForeground(ILandroid/app/Notification;I)V
    .locals 7

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    invoke-direct {p0}, Landroid/app/Service;->clearStartForegroundServiceStackTrace()V

    invoke-direct {p0, v1, v6}, Landroid/app/Service;->logForegroundServiceStart(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final whitelist stopForeground(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    invoke-direct {p0}, Landroid/app/Service;->logForegroundServiceStopIfNecessary()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final whitelist stopForeground(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method

.method public final whitelist stopSelf()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public final whitelist stopSelf(I)V
    .locals 3

    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p0, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final whitelist stopSelfResult(I)Z
    .locals 4

    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, p0, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

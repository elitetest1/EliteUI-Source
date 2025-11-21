.class Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.super Ljava/lang/Object;
.source "ServiceWatcherImpl.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher;
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TBoundServiceInfo:",
        "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/servicewatcher/ServiceWatcher;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;"
    }
.end annotation


# static fields
.field static final blacklist D:Z

.field private static final blacklist DISCONNECTED_COUNT_BEFORE_MARKED_AS_UNSTABLE:I = 0xa

.field private static final blacklist RECONNECTION_TIMEOUT_THRESHOLD:J = 0x36ee80L

.field static final blacklist RETRY_DELAY_MS:J = 0x3a98L

.field static final blacklist TAG:Ljava/lang/String; = "ServiceWatcher"

.field private static final blacklist UNSTABLE_TIME_PERIOD_MS:J = 0xea60L


# instance fields
.field private blacklist mBindingDiedTime:J

.field private blacklist mComponentName:Ljava/lang/String;

.field private blacklist mConnectedTime:J

.field private blacklist mConnectionCount:I

.field final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisconnectedCount:I

.field private blacklist mDisconnectedService:Ljava/lang/String;

.field private blacklist mDisconnectedStartTime:J

.field private blacklist mDisconnectedTime:J

.field private blacklist mDisconnectionCount:I

.field final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsLocationService:Z

.field private final blacklist mNsHandler:Landroid/os/Handler;

.field private final blacklist mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPrevComponentName:Ljava/lang/String;

.field private blacklist mPrevPackageName:Ljava/lang/String;

.field private blacklist mRegistered:Z

.field private blacklist mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcherImpl<",
            "TTBoundServiceInfo;>.MyServiceConnection;"
        }
    .end annotation
.end field

.field final blacklist mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field final blacklist mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field final blacklist mTag:Ljava/lang/String;

.field private blacklist mUnstableFallbackEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmComponentName(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mComponentName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedService(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedService:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedStartTime(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectionCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsLocationService(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mIsLocationService:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNsHandler(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnstableFallbackEnabled(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mUnstableFallbackEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBindingDiedTime(Lcom/android/server/servicewatcher/ServiceWatcherImpl;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mBindingDiedTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmComponentName(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mComponentName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectedTime(Lcom/android/server/servicewatcher/ServiceWatcherImpl;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectedTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedService(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedService:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedStartTime(Lcom/android/server/servicewatcher/ServiceWatcherImpl;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedStartTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedTime(Lcom/android/server/servicewatcher/ServiceWatcherImpl;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectionCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectionCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPackageName(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevComponentName(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPrevComponentName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevPackageName(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPrevPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendPorxyConnectionInfo(Lcom/android/server/servicewatcher/ServiceWatcherImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->sendPorxyConnectionInfo(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "ServiceWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    iput-object p5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    invoke-direct {p0, p3}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->isLocationService(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mIsLocationService:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->serviceWatcherUnstableFallback()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mUnstableFallbackEnabled:Z

    :cond_0
    iput-object p5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    iput-object p6, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    return-void
.end method

.method private blacklist isLocationService(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "fused"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "network"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "GeocoderProxy"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic blacklist lambda$onServiceChanged$1(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->unbind()V

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->bind()V

    return-void
.end method

.method static synthetic blacklist lambda$runOnBinder$0(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method private blacklist sendPorxyConnectionInfo(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tag"

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "componentName"

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "prevComponentName"

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPrevComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "prevPackageName"

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPrevPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connectedTime"

    iget-wide v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectedTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "connectionCount"

    iget v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "disconnectedTime"

    iget-wide v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "disconnectionCount"

    iget v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectionCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bindingDiedTime"

    iget-wide v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mBindingDiedTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    const-string p1, "location"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public blacklist checkServiceResolves()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->hasMatchingService()Z

    move-result p0

    return p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "target service="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "connected="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onServiceChanged()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized blacklist onServiceChanged(Z)V
    .locals 3

    const-string v0, "["

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v1}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->isConnected()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr p1, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "ServiceWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] chose new implementation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist register()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput-boolean v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V

    invoke-virtual {p0, v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist unregister()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->unregister()V

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

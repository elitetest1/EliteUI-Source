.class public Landroid/app/wearable/WearableSensingManager;
.super Ljava/lang/Object;
.source "WearableSensingManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wearable/WearableSensingManager$StatusCode;
    }
.end annotation


# static fields
.field static final blacklist ALLOW_WEARABLE_SENSING_SERVICE_FILE_READ:J = 0x13b6193aL

.field public static final blacklist CONNECTION_ID_INVALID:I = -0x1

.field private static final blacklist CONNECTION_ID_PLACEHOLDER:I = -0x2

.field public static final blacklist EXTRA_WEARABLE_SENSING_DATA_REQUEST:Ljava/lang/String; = "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

.field public static final whitelist STATUS_ACCESS_DENIED:I = 0x5

.field public static final whitelist STATUS_CHANNEL_ERROR:I = 0x7

.field public static final whitelist STATUS_MAX_CONCURRENT_CONNECTIONS_EXCEEDED:I = 0x9

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingStatusBundleKey"

.field public static final whitelist STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_UNSUPPORTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_UNSUPPORTED_DATA_TYPE:I = 0x8

.field public static final whitelist STATUS_UNSUPPORTED_OPERATION:I = 0x6

.field public static final whitelist STATUS_WEARABLE_UNAVAILABLE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "WearableSensingManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/wearable/IWearableSensingManager;

.field private final blacklist mWearableConnectionIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/wearable/WearableConnection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1N1-ahcdKgRbrJYFjidNq70uN-M(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/wearable/WearableSensingManager;->lambda$provideConnection$0(Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/wearable/WearableSensingManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/wearable/IWearableSensingManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    return-void
.end method

.method private static blacklist createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private blacklist createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;
    .locals 1

    new-instance v0, Landroid/app/wearable/WearableSensingManager$1;

    invoke-direct {v0, p0, p1}, Landroid/app/wearable/WearableSensingManager$1;-><init>(Landroid/app/wearable/WearableSensingManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static whitelist getDataRequestFromIntent(Landroid/content/Intent;)Landroid/app/wearable/WearableSensingDataRequest;
    .locals 2

    const-string v0, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    const-class v1, Landroid/app/wearable/WearableSensingDataRequest;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/wearable/WearableSensingDataRequest;

    return-object p0
.end method

.method static synthetic blacklist lambda$createStatusCallback$1(Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createStatusCallback$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private synthetic blacklist lambda$provideConnection$0(Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Surpassed status callback for removed connection "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->onConnectionAccepted()V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/app/wearable/WearableConnection;->onError(I)V

    return-void
.end method


# virtual methods
.method public whitelist getAvailableConnectionCount()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p0}, Landroid/app/wearable/IWearableSensingManager;->getAvailableConnectionCount()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist provideConnection(Landroid/app/wearable/WearableConnection;Ljava/util/concurrent/Executor;)V
    .locals 4

    new-instance v0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;)V

    invoke-static {p2, v0}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->getConnection()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-interface {p1}, Landroid/app/wearable/WearableConnection;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p2

    invoke-interface {v1, v2, v3, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I

    move-result p2

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist provideConnection(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p0

    invoke-interface {v0, p1, p0, p3}, Landroid/app/wearable/IWearableSensingManager;->provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/SharedMemory;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist provideDataStream(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    const-wide/32 v0, 0x13b6193a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    :try_start_0
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist registerDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist removeAllConnections()V
    .locals 1

    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p0}, Landroid/app/wearable/IWearableSensingManager;->removeAllConnections()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist removeConnection(Landroid/app/wearable/WearableConnection;)V
    .locals 3

    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mWearableConnectionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "The provided connection was never provided or was already removed."

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    :try_start_0
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/app/wearable/IWearableSensingManager;->removeConnection(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to remove connection before provideConnection returns. The connection will not be removed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist startHotwordRecognition(Landroid/content/ComponentName;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/app/wearable/IWearableSensingManager;->startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist stopHotwordRecognition(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-static {p1, p2}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/wearable/IWearableSensingManager;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist unregisterDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object p3

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/wearable/IWearableSensingManager;->unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

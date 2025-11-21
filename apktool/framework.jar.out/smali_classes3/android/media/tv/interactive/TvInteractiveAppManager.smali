.class public final Landroid/media/tv/interactive/TvInteractiveAppManager;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TeletextAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ErrorCode;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$InteractiveAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ServiceState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APP_LINK_COMMAND:Ljava/lang/String; = "android.media.tv.interactive.action.APP_LINK_COMMAND"

.field public static final whitelist APP_LINK_KEY_BACK_URI:Ljava/lang/String; = "back_uri"

.field public static final whitelist APP_LINK_KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final whitelist APP_LINK_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final whitelist APP_LINK_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final whitelist APP_LINK_KEY_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final whitelist ERROR_BLOCKED:I = 0x5

.field public static final whitelist ERROR_ENCRYPTED:I = 0x6

.field public static final whitelist ERROR_NONE:I = 0x0

.field public static final whitelist ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ERROR_RESOURCE_UNAVAILABLE:I = 0x4

.field public static final whitelist ERROR_UNKNOWN:I = 0x1

.field public static final whitelist ERROR_UNKNOWN_CHANNEL:I = 0x7

.field public static final whitelist ERROR_WEAK_SIGNAL:I = 0x3

.field public static final whitelist INTENT_KEY_BI_INTERACTIVE_APP_TYPE:Ljava/lang/String; = "bi_interactive_app_type"

.field public static final whitelist INTENT_KEY_BI_INTERACTIVE_APP_URI:Ljava/lang/String; = "bi_interactive_app_uri"

.field public static final whitelist INTENT_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final whitelist INTENT_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final whitelist INTENT_KEY_INTERACTIVE_APP_SERVICE_ID:Ljava/lang/String; = "interactive_app_id"

.field public static final whitelist INTENT_KEY_TV_INPUT_ID:Ljava/lang/String; = "tv_input_id"

.field public static final whitelist INTERACTIVE_APP_STATE_ERROR:I = 0x3

.field public static final whitelist INTERACTIVE_APP_STATE_RUNNING:I = 0x2

.field public static final whitelist INTERACTIVE_APP_STATE_STOPPED:I = 0x1

.field public static final whitelist SERVICE_STATE_ERROR:I = 0x4

.field public static final whitelist SERVICE_STATE_PREPARING:I = 0x2

.field public static final whitelist SERVICE_STATE_READY:I = 0x3

.field public static final whitelist SERVICE_STATE_UNREALIZED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppManager"

.field public static final whitelist TELETEXT_APP_STATE_ERROR:I = 0x3

.field public static final whitelist TELETEXT_APP_STATE_HIDE:I = 0x2

.field public static final whitelist TELETEXT_APP_STATE_SHOW:I = 0x1


# instance fields
.field private final blacklist mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextSeq:I

.field private final blacklist mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/interactive/TvInteractiveAppManager;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, v0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method private blacklist createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .locals 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    iget-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter p3

    :try_start_0
    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    add-int/lit8 p4, v5, 0x1

    iput p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    iget-object p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {p4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget v6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p3

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist createSession(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager;->createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist getAppLinkInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/AppLinkInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->getAppLinkInfoList(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getTvInteractiveAppServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->getTvInteractiveAppServiceList(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .locals 2

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-direct {v1, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist unregisterCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->getCallback()Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

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

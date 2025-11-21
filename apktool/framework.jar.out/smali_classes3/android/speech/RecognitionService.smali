.class public abstract Landroid/speech/RecognitionService;
.super Landroid/app/Service;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionService$RecognitionServiceBinder;,
        Landroid/speech/RecognitionService$SessionState;,
        Landroid/speech/RecognitionService$Callback;,
        Landroid/speech/RecognitionService$SupportCallback;,
        Landroid/speech/RecognitionService$ModelDownloadArgs;,
        Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;,
        Landroid/speech/RecognitionService$StartListeningArgs;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist DEFAULT_MAX_CONCURRENT_SESSIONS_COUNT:I = 0x1

.field private static final greylist-max-o MSG_CANCEL:I = 0x3

.field private static final blacklist MSG_CHECK_RECOGNITION_SUPPORT:I = 0x5

.field private static final greylist-max-o MSG_RESET:I = 0x4

.field private static final greylist-max-o MSG_START_LISTENING:I = 0x1

.field private static final greylist-max-o MSG_STOP_LISTENING:I = 0x2

.field private static final blacklist MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x6

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.speech.RecognitionService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.speech"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecognitionService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final blacklist mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/speech/RecognitionService$SessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$pi72R5se-QW6gl4Z1BYAcvnKibs(Landroid/speech/RecognitionService;Landroid/content/AttributionSource;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->handleAttributionContextCreation(Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchCancel(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchCheckRecognitionSupport(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchClearCallback(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchClearCallback(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchStartListening(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchStopListening(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchTriggerModelDownload(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    new-instance v0, Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    new-instance v0, Landroid/speech/RecognitionService$1;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$1;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist checkPermissionAndStartDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z
    .locals 4

    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/RecognitionService$Callback;->getAttributionContextForCaller()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v3, v0, v2}, Landroid/content/PermissionChecker;->checkPermissionAndStartDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, v1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fputmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;Z)V

    :cond_1
    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z

    move-result p0

    return p0
.end method

.method private blacklist checkPermissionForPreflightNotHardDenied(Landroid/content/AttributionSource;)Z
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private greylist-max-o dispatchCancel(Landroid/speech/IRecognitionListener;)V
    .locals 2

    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService$SessionState;

    if-nez v0, :cond_0

    const-string p0, "RecognitionService"

    const-string p1, "#cancel received for a listener which has not started a session - ignoring this call."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchClearCallback(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method private blacklist dispatchCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V
    .locals 2

    new-instance v0, Landroid/speech/RecognitionService$SupportCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/speech/RecognitionService$SupportCallback;-><init>(Landroid/speech/IRecognitionSupportCallback;Landroid/speech/RecognitionService-IA;)V

    invoke-virtual {p0, p1, p3, v0}, Landroid/speech/RecognitionService;->onCheckRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/RecognitionService$SupportCallback;)V

    return-void
.end method

.method private blacklist dispatchClearCallback(Landroid/speech/IRecognitionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/speech/RecognitionService$SessionState;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/speech/RecognitionService;->finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V

    invoke-virtual {p1}, Landroid/speech/RecognitionService$SessionState;->reset()V

    :cond_0
    return-void
.end method

.method private blacklist dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 5

    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService$SessionState;

    const-string v1, "RecognitionService"

    if-nez v0, :cond_6

    :try_start_0
    iget-object v2, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/speech/RecognitionService;->getMaxConcurrentSessionsCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/16 p0, 0x8

    invoke-interface {p2, p0}, Landroid/speech/IRecognitionListener;->onError(I)V

    const-string p0, "#startListening received when the service\'s capacity is full - ignoring this call."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "android.speech.extra.AUDIO_SOURCE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p3}, Landroid/speech/RecognitionService;->checkPermissionForPreflightNotHardDenied(Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    new-instance v0, Landroid/speech/RecognitionService$Callback;

    invoke-direct {v0, p0, p2, p3, v3}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;Landroid/speech/RecognitionService-IA;)V

    new-instance p3, Landroid/speech/RecognitionService$SessionState;

    invoke-direct {p3, v0}, Landroid/speech/RecognitionService$SessionState;-><init>(Landroid/speech/RecognitionService$Callback;)V

    iget-object v3, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/speech/RecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    move-object v3, v0

    move-object v0, p3

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Landroid/speech/RecognitionService;->checkPermissionAndStartDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_4
    const/16 p1, 0x9

    invoke-interface {p2, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    iget-object p1, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V

    invoke-virtual {v0}, Landroid/speech/RecognitionService$SessionState;->reset()V

    :cond_5
    const-string p0, "#startListening received from a caller without permission android.permission.RECORD_AUDIO."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 p0, 0x5

    invoke-interface {p2, p0}, Landroid/speech/IRecognitionListener;->onError(I)V

    const-string p0, "#startListening received for a listener which is already in session - ignoring this call."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "#onError call from #startListening failed."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private greylist-max-o dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    .locals 3

    const-string v0, "RecognitionService"

    iget-object v1, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/RecognitionService$SessionState;

    if-nez v1, :cond_0

    const/4 p0, 0x5

    :try_start_0
    invoke-interface {p1, p0}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "#onError call from #stopListening failed."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "#stopListening received for a listener which has not started a session - ignoring this call."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/speech/RecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V

    return-void
.end method

.method private blacklist dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/speech/RecognitionService;->onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;)V

    return-void

    :cond_0
    new-instance v0, Landroid/speech/RecognitionService$2;

    invoke-direct {v0, p0, p3}, Landroid/speech/RecognitionService$2;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IModelDownloadListener;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/speech/RecognitionService;->onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method

.method private blacklist handleAttributionContextCreation(Landroid/content/AttributionSource;)V
    .locals 2

    iget-object p0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService$SessionState;

    invoke-static {v0}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmCallingAttributionSource(Landroid/speech/RecognitionService$Callback;)Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fputmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .locals 3

    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/RecognitionService;->handleAttributionContextCreation(Landroid/content/AttributionSource;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/speech/RecognitionService;)V

    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method blacklist finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V
    .locals 1

    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fputmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;Z)V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object p1

    invoke-virtual {p1}, Landroid/speech/RecognitionService$Callback;->getAttributionContextForCaller()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/content/PermissionChecker;->finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V

    :cond_0
    return-void
.end method

.method public whitelist getMaxConcurrentSessionsCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0}, Landroid/speech/RecognitionService;->onBindInternal()V

    iget-object p0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    return-object p0
.end method

.method public blacklist onBindInternal()V
    .locals 0

    return-void
.end method

.method protected abstract whitelist onCancel(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public whitelist onCheckRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/RecognitionService$SupportCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Landroid/speech/RecognitionService;->onCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/RecognitionService$SupportCallback;)V

    return-void
.end method

.method public whitelist onCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/RecognitionService$SupportCallback;)V
    .locals 0

    const/16 p0, 0xe

    invoke-virtual {p2, p0}, Landroid/speech/RecognitionService$SupportCallback;->onError(I)V

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 2

    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/RecognitionService$SessionState;

    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V

    invoke-virtual {v1}, Landroid/speech/RecognitionService$SessionState;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;->clearReference()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method protected abstract whitelist onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end method

.method protected abstract whitelist onStopListening(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public whitelist onTriggerModelDownload(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/speech/RecognitionService;->onTriggerModelDownload(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/ModelDownloadListener;)V
    .locals 0

    const/16 p0, 0xf

    invoke-interface {p3, p0}, Landroid/speech/ModelDownloadListener;->onError(I)V

    return-void
.end method

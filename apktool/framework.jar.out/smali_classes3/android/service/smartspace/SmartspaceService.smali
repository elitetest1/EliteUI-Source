.class public abstract Landroid/service/smartspace/SmartspaceService;
.super Landroid/app/Service;
.source "SmartspaceService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.smartspace.SmartspaceService"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartspaceService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/smartspace/ISmartspaceService;

.field private final blacklist mSessionCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$X2GHqjIaYN5npavClfuuWaFRXvQ(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$0(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$umKlkaFhpKT5zx747Db8USoKIyQ(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$1(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCreateSmartspaceSession(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRegisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRequestPredictionUpdate(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnregisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/service/smartspace/SmartspaceService$1;

    invoke-direct {v0, p0}, Landroid/service/smartspace/SmartspaceService$1;-><init>(Landroid/service/smartspace/SmartspaceService;)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    return-void
.end method

.method private blacklist doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method private blacklist doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method private blacklist doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to register for updates for unknown session: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartspaceService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;)V

    invoke-direct {p1, p2, v1}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;-><init>(Landroid/app/smartspace/ISmartspaceCallback;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private blacklist doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 1

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    :cond_0
    return-void
.end method

.method private blacklist doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to unregister for updates for unknown session: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartspaceService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method private blacklist findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            ")",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {v0, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->isCallback(Landroid/app/smartspace/ISmartspaceCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$doRegisterSmartspaceUpdates$0(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method private synthetic blacklist lambda$doRegisterSmartspaceUpdates$1(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .locals 2

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract whitelist notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.smartspace.SmartspaceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    invoke-interface {p0}, Landroid/service/smartspace/ISmartspaceService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Tried to bind to wrong intent (should be android.service.smartspace.SmartspaceService: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartspaceService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public abstract whitelist onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public final whitelist updateSmartspaceTargets(Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {p1, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->accept(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

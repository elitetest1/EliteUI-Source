.class public abstract Landroid/service/search/SearchUiService;
.super Landroid/app/Service;
.source "SearchUiService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/search/SearchUiService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.search.SearchUiService"

.field private static final blacklist TAG:Ljava/lang/String; = "SearchUiService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/search/ISearchUiService;

.field private final blacklist mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/search/SearchSessionId;",
            "Ljava/util/ArrayList<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$uZ1fncm-TW0PiUAG9YxHx76WtkU(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->lambda$doRegisterEmptyQueryResultUpdateCallback$0(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v6utYjsz_EzbcbRTja_xrq4HJLE(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->lambda$doRegisterEmptyQueryResultUpdateCallback$1(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/search/SearchUiService;->doDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRegisterEmptyQueryResultUpdateCallback(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->doRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnregisterEmptyQueryResultUpdateCallback(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->doUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/service/search/SearchUiService$1;

    invoke-direct {v0, p0}, Landroid/service/search/SearchUiService$1;-><init>(Landroid/service/search/SearchUiService;)V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    return-void
.end method

.method private blacklist doDestroy(Landroid/app/search/SearchSessionId;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0, p1}, Landroid/service/search/SearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method private blacklist doRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

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

    const-string p1, "SearchUiService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/service/search/SearchUiService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/search/ISearchCallback;)Landroid/service/search/SearchUiService$CallbackWrapper;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/service/search/SearchUiService$CallbackWrapper;

    new-instance v1, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda0;-><init>(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;)V

    invoke-direct {p1, p2, v1}, Landroid/service/search/SearchUiService$CallbackWrapper;-><init>(Landroid/app/search/ISearchCallback;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/service/search/SearchUiService;->onStartUpdateEmptyQueryResult()V

    :cond_1
    return-void
.end method

.method private blacklist doUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

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

    const-string p1, "SearchUiService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/service/search/SearchUiService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/search/ISearchCallback;)Landroid/service/search/SearchUiService$CallbackWrapper;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/service/search/SearchUiService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method

.method private blacklist findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/search/ISearchCallback;)Landroid/service/search/SearchUiService$CallbackWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;",
            "Landroid/app/search/ISearchCallback;",
            ")",
            "Landroid/service/search/SearchUiService$CallbackWrapper;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/search/SearchUiService$CallbackWrapper;

    invoke-virtual {v0, p2}, Landroid/service/search/SearchUiService$CallbackWrapper;->isCallback(Landroid/app/search/ISearchCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/search/SearchUiService$CallbackWrapper;

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$doRegisterEmptyQueryResultUpdateCallback$0(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method

.method private synthetic blacklist lambda$doRegisterEmptyQueryResultUpdateCallback$1(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .locals 2

    iget-object v0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;-><init>(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/service/search/SearchUiService$CallbackWrapper;->destroy()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/service/search/SearchUiService;->onStopUpdateEmptyQueryResult()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.search.SearchUiService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    invoke-interface {p0}, Landroid/service/search/ISearchUiService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Tried to bind to wrong intent (should be android.service.search.SearchUiService: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchUiService"

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

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public greylist onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract whitelist onDestroy(Landroid/app/search/SearchSessionId;)V
.end method

.method public abstract whitelist onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
.end method

.method public abstract whitelist onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Landroid/app/search/Query;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public whitelist onSearchSessionCreated(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .locals 0

    iget-object p0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist onStartUpdateEmptyQueryResult()V
    .locals 0

    return-void
.end method

.method public whitelist onStopUpdateEmptyQueryResult()V
    .locals 0

    return-void
.end method

.method public final whitelist updateEmptyQueryResult(Landroid/app/search/SearchSessionId;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

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

    check-cast p1, Landroid/service/search/SearchUiService$CallbackWrapper;

    invoke-virtual {p1, p2}, Landroid/service/search/SearchUiService$CallbackWrapper;->accept(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

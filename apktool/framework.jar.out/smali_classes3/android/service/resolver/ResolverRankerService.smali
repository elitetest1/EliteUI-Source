.class public abstract Landroid/service/resolver/ResolverRankerService;
.super Landroid/app/Service;
.source "ResolverRankerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;
    }
.end annotation


# static fields
.field public static final whitelist BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_RESOLVER_RANKER_SERVICE"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o HANDLER_THREAD_NAME:Ljava/lang/String; = "RESOLVER_RANKER_SERVICE"

.field public static final whitelist HOLD_PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.resolver.ResolverRankerService"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ResolverRankerService"


# instance fields
.field private volatile greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-o mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/service/resolver/ResolverRankerService;->sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    return-void
.end method

.method private static greylist-max-o sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Landroid/service/resolver/IResolverRankerResult;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p0}, Landroid/service/resolver/IResolverRankerResult;->sendResult(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "failed to send results: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResolverRankerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.resolver.ResolverRankerService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "RESOLVER_RANKER_SERVICE"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    if-nez p1, :cond_2

    new-instance p1, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    invoke-direct {p1, p0, v0}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;-><init>(Landroid/service/resolver/ResolverRankerService;Landroid/service/resolver/ResolverRankerService-IA;)V

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    :cond_2
    iget-object p0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    return-object p0
.end method

.method public whitelist onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public whitelist onPredictSharingProbabilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onTrainRankingModel(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.class Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTask"
.end annotation


# instance fields
.field private final blacklist mDestroyAfterTimeout:Ljava/lang/Runnable;

.field private blacklist mIBinder:Landroid/os/IBinder;

.field private blacklist mOnDestroyTimeout:Z

.field private final blacklist mTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public static synthetic blacklist $r8$lambda$Vx3DOS7p-JdYlu3LYsONTQNRSZ0(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->lambda$handleNext$0(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W41tqMRtm2E8q_i_MnFBu3FZQII(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onDestroyTimeout()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pTnOOPBKfqH_YXKm5tSZeRZf_NU(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p2, v1, v2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "AppWidgetManager"

    const-string p2, "Error connecting to service in connection cache"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist handleNext()V
    .locals 4

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda3;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmTimeOut(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic blacklist lambda$handleNext$0(Landroid/util/Pair;)V
    .locals 1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mIBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist onDestroyTimeout()V
    .locals 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppWidgetManager"

    const-string v2, "Error unbinding the cached connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmActiveConnections(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method blacklist add(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    :cond_0
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mIBinder:Landroid/os/IBinder;

    iget-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

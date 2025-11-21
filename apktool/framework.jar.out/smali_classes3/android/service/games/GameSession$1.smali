.class Landroid/service/games/GameSession$1;
.super Landroid/service/games/IGameSession$Stub;
.source "GameSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/games/GameSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$ecR1o7lGWArXhEpiTPAphvmNGxc(Landroid/service/games/GameSession;)V
    .locals 0

    invoke-static {p0}, Landroid/service/games/GameSession;->-$$Nest$mdoDestroy(Landroid/service/games/GameSession;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/games/GameSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-direct {p0}, Landroid/service/games/IGameSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDestroyed()V
    .locals 2

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onTaskFocusChanged(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    :goto_0
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object p0, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

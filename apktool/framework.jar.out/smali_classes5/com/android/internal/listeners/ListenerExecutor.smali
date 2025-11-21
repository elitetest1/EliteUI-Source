.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor;
.super Ljava/lang/Object;
.source "ListenerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;,
        Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;
    }
.end annotation


# direct methods
.method public static synthetic blacklist lambda$executeSafely$0(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-interface {p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->operate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_2

    invoke-interface {p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onFailure(Ljava/lang/Exception;)V

    if-eqz p3, :cond_1

    invoke-interface {p3, p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;->onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    return-void

    :cond_2
    :try_start_2
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    throw p0
.end method


# virtual methods
.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            "T",
            "ListenerOperation::Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;TT",
            "ListenerOperation;",
            "Lcom/android/internal/listeners/ListenerExecutor$FailureCallback<",
            "TT",
            "ListenerOperation;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPreExecute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    new-instance v2, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {p3, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    :cond_2
    invoke-interface {p3, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    throw p0
.end method

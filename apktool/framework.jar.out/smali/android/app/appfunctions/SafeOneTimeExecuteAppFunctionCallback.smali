.class public Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
.super Ljava/lang/Object;
.source "SafeOneTimeExecuteAppFunctionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SafeOneTimeExecuteApp"


# instance fields
.field private final blacklist mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

.field private final blacklist mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

.field private final blacklist mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

.field private final blacklist mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mUpdateHistoryCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/app/appfunctions/AppFunctionExecutionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;Ljava/util/function/Consumer;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;Ljava/util/function/Consumer;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/IExecuteAppFunctionCallback;",
            "Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appfunctions/AppFunctionExecutionRecord;",
            ">;",
            "Landroid/app/appfunctions/AppFunctionExecutionRecord;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    iput-object p1, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    iput-object p2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    iput-object p3, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    iput-object p4, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    return-void
.end method


# virtual methods
.method public blacklist disable()V
    .locals 1

    iget-object p0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 4

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_0

    const-string p0, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->setError(Landroid/app/appfunctions/AppFunctionException;)V

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;->finalizeOnError(Landroid/app/appfunctions/AppFunctionException;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to invoke the callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public blacklist onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 4

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_0

    const-string p0, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->setResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;->finalizeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to invoke the callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public blacklist setExecutionStartTimeAfterBindMillis(J)V
    .locals 2

    iget-object p0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SafeOneTimeExecuteApp"

    const-string p1, "Ignore subsequent calls to setExecutionStartTimeAfterBindMillis()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

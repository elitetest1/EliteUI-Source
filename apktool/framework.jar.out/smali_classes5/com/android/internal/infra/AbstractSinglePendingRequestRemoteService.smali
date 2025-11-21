.class public abstract Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;
.super Lcom/android/internal/infra/AbstractRemoteService;
.source "AbstractSinglePendingRequestRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected blacklist mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/infra/AbstractRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "hasPendingRequest="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method blacklist handleBindFailure()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending failure to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    :cond_1
    return-void
.end method

.method protected blacklist handleOnDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    :cond_0
    return-void
.end method

.method blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePendingRequestWhileUnBound(): cancelling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    :cond_1
    iput-object p1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    return-void
.end method

.method blacklist handlePendingRequests()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    :cond_0
    return-void
.end method

.class final Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;
.super Ljava/lang/Object;
.source "AppPredictionService.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/AppPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/os/IRemoteCallback;

.field private final blacklist mOnBinderDied:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/os/IRemoteCallback;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IRemoteCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    iput-object p2, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to link to death: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPredictionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error sending result:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPredictionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->accept(Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist binderDied()V
    .locals 1

    invoke-virtual {p0}, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

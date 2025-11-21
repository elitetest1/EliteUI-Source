.class final Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;
.super Ljava/lang/Object;
.source "SavedDatasetsInfoCallbackImpl.java"

# interfaces
.implements Landroid/service/autofill/SavedDatasetsInfoCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private final blacklist mReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/IResultReceiver;

    iput-object p1, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    return-void
.end method

.method private blacklist send(ILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to send onSavedPasswordCountRequest result: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "error"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v0}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public whitelist onSuccess(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/autofill/SavedDatasetsInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/SavedDatasetsInfo;

    iget-object v4, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/service/autofill/SavedDatasetsInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/service/autofill/SavedDatasetsInfo;->getCount()I

    move-result v0

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void
.end method

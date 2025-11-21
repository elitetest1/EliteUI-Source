.class Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;
.super Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
.source "RemoteLockscreenValidationClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

.field final synthetic blacklist val$guess:[B


# direct methods
.method constructor blacklist <init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;[BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$guess:[B

    iput-object p3, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist exec(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$guess:[B

    iget-object p0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-interface {p1, v0, p0}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;->validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V

    return-void
.end method

.method blacklist onError(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-interface {p0, p1}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error while failing validateLockscreenGuess"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

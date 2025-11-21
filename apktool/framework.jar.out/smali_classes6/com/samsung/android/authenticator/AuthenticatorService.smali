.class final Lcom/samsung/android/authenticator/AuthenticatorService;
.super Ljava/lang/Object;
.source "AuthenticatorService.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "SemAuthnrService"

.field private static final blacklist TAG:Ljava/lang/String; = "AS"

.field private static blacklist sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static blacklist checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can not found service"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist deleteFile(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->deleteFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteFile failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method static blacklist getDrkKeyHandle()[B
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getDrkKeyHandle()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDrkKeyHandle failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS"

    invoke-static {v3, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static blacklist getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getFiles failed : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS"

    invoke-static {v1, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static blacklist getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getMatchedFilePaths failed : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS"

    invoke-static {v1, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method private static blacklist getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    if-nez v0, :cond_0

    const-string v0, "SemAuthnrService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :cond_0
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorService;->sService:Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    return-object v0
.end method

.method static blacklist getVersion()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVersion failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, -0x1

    return v0
.end method

.method static blacklist getWrappedObject([B)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->getWrappedObject([B)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWrappedObject failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static blacklist initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initialize failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS"

    invoke-static {p2, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method static blacklist initializeDrk()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeDrk()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initializeDrk failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method static blacklist initializePreloadedTa(I)Z
    .locals 3

    const-string/jumbo v0, "static boolean initializePreloadedTa(int trustedAppType)"

    const-string v1, "AS"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializePreloadedTa(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initializeWithPreloadedTap failed : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method static blacklist initializeWithPreloadedTa()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->initializeWithPreloadedTa()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initializeWithPreloadedTa failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method static blacklist process([B)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->process([B)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "process failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static blacklist processPreloadedTa(I[B)[B
    .locals 3

    const-string/jumbo v0, "static byte[] processPreloadedTa(int trustedAppType, byte[] command)"

    const-string v1, "AS"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->processPreloadedTa(I[B)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processWithPreloadedTap failed : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static blacklist processWithPreloadedTa([BLjava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->processWithPreloadedTa([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processWithPreloadedTa failed : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS"

    invoke-static {v1, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static blacklist readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readFile failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const-string p0, ""

    return-object p0
.end method

.method static blacklist setChallenge([B)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->setChallenge([B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setChallenge failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method static blacklist terminate()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminate()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "terminate failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method static blacklist terminateDrk()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateDrk()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "terminateDrk failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method static blacklist terminatePreloadedTa(I)Z
    .locals 3

    const-string/jumbo v0, "static boolean terminatePreloadedTa(int trustedAppType)"

    const-string v1, "AS"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminatePreloadedTa(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "terminateWithPreloadedTap failed : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method static blacklist terminateWithPreloadedTa()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->terminateWithPreloadedTa()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "terminateWithPreloadedTa failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-static {v2, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method static blacklist writeFile([BLjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getService()Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;->writeFile([BLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "writeFile failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS"

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

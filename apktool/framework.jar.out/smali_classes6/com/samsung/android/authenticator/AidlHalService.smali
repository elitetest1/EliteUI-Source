.class final Lcom/samsung/android/authenticator/AidlHalService;
.super Ljava/lang/Object;
.source "AidlHalService.java"

# interfaces
.implements Lcom/samsung/android/authenticator/XidlHalService;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AHS"


# instance fields
.field private blacklist mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    return-void
.end method

.method private blacklist checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can not found service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist execute(I[B)[B
    .locals 4

    const-string/jumbo v0, "ret: "

    const/4 v1, 0x0

    const-string v2, "AHS"

    if-nez p1, :cond_0

    const-string/jumbo p0, "type can not be 0"

    invoke-static {v2, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/authenticator/AidlHalService;->getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/authenticator/AidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    :try_start_0
    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->execute(I[B)Lvendor/samsung/hardware/authfw/SehResult;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lvendor/samsung/hardware/authfw/SehResult;->status:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length p2, p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    if-eqz p1, :cond_2

    iget-object p1, p0, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length p1, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length p1, p1

    new-array v1, p1, [B

    iget-object p1, p0, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    iget-object p0, p0, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length p0, p0

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "process failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object v1
.end method

.method private declared-synchronized blacklist getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private blacklist load(ILandroid/os/ParcelFileDescriptor;JJ)Z
    .locals 4

    const-string p5, "AHS"

    const/4 p6, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p0, "type can not be 0"

    invoke-static {p5, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p6

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/authenticator/AidlHalService;->getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/authenticator/AidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    new-array v0, p6, [B

    if-eqz p2, :cond_3

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v1, 0x2800

    :try_start_2
    new-array v1, v1, [B

    invoke-virtual {v0, p3, p4}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    cmp-long p3, v2, p3

    if-eqz p3, :cond_1

    const-string p3, "Skipped fewer bytes than requested."

    invoke-static {p5, p3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_2

    invoke-virtual {p2, v1, p6, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, p3

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "save file error. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p6

    :cond_3
    :goto_3
    :try_start_9
    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->load(I[B)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load fail. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    return p6

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initialize failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I
    .locals 0

    sget-object p0, Lcom/samsung/android/authenticator/AidlHalService$1;->$SwitchMap$com$samsung$android$authenticator$TrustedAppAssetType:[I

    invoke-virtual {p1}, Lcom/samsung/android/authenticator/TrustedAppAssetType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x2711

    return p0

    :cond_1
    const/16 p0, 0x2710

    return p0
.end method

.method private blacklist translateTaType(Lcom/samsung/android/authenticator/TrustedAppType;)I
    .locals 0

    sget-object p0, Lcom/samsung/android/authenticator/AidlHalService$1;->$SwitchMap$com$samsung$android$authenticator$TrustedAppType:[I

    invoke-virtual {p1}, Lcom/samsung/android/authenticator/TrustedAppType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private blacklist unload(I)Z
    .locals 4

    const-string/jumbo v0, "unload fail. "

    const/4 v1, 0x0

    const-string v2, "AHS"

    if-nez p1, :cond_0

    const-string/jumbo p0, "type can not be 0"

    invoke-static {v2, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/authenticator/AidlHalService;->getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/authenticator/AidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    :try_start_0
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->terminate(I)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "terminate failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    const-string v0, "AHS"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    return-void
.end method

.method public blacklist execute(Lcom/samsung/android/authenticator/TrustedAppAssetType;[B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authenticator/AidlHalService;->execute(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist execute(Lcom/samsung/android/authenticator/TrustedAppType;[B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppType;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authenticator/AidlHalService;->execute(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAvailable()Z
    .locals 0

    sget-object p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist load(Lcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I

    move-result p1

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/authenticator/AidlHalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result p0

    return p0
.end method

.method public blacklist load(Lcom/samsung/android/authenticator/TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppType;)I

    move-result p1

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/authenticator/AidlHalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result p0

    return p0
.end method

.method public blacklist unload(Lcom/samsung/android/authenticator/TrustedAppAssetType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->unload(I)Z

    move-result p0

    return p0
.end method

.method public blacklist unload(Lcom/samsung/android/authenticator/TrustedAppType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->unload(I)Z

    move-result p0

    return p0
.end method

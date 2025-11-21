.class final Lcom/samsung/android/authenticator/HidlHalService;
.super Ljava/lang/Object;
.source "HidlHalService.java"

# interfaces
.implements Lcom/samsung/android/authenticator/XidlHalService;
.implements Landroid/os/IHwBinder$DeathRecipient;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HHS"


# instance fields
.field private blacklist mResultBytes:[B

.field private blacklist mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;


# direct methods
.method public static synthetic blacklist $r8$lambda$op3Jk43K8SJkfAxLhon29MinJuI(Lcom/samsung/android/authenticator/HidlHalService;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authenticator/HidlHalService;->lambda$execute$0(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    iput-object v0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mResultBytes:[B

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
    .locals 6

    const/4 v0, 0x0

    const-string v1, "HHS"

    if-nez p1, :cond_0

    const-string/jumbo p0, "type can not be 0"

    invoke-static {v1, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/authenticator/HidlHalService;->getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/authenticator/HidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_1

    aget-byte v5, p2, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mResultBytes:[B

    :try_start_0
    new-instance p2, Lcom/samsung/android/authenticator/HidlHalService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/authenticator/HidlHalService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/authenticator/HidlHalService;)V

    invoke-interface {v2, p1, v3, p2}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->execute(ILjava/util/ArrayList;Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$executeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "process failed : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mResultBytes:[B

    return-object p0
.end method

.method private declared-synchronized blacklist getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->getService(Z)Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
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
    iget-object v0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
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

.method private synthetic blacklist lambda$execute$0(ZLjava/util/ArrayList;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ret: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HHS"

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/authenticator/HidlHalService;->mResultBytes:[B

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/authenticator/HidlHalService;->mResultBytes:[B

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist load(ILandroid/os/ParcelFileDescriptor;JJ)Z
    .locals 5

    const/4 p5, 0x0

    const-string p6, "HHS"

    if-nez p1, :cond_0

    const-string/jumbo p0, "type can not be 0"

    invoke-static {p6, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p5

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/authenticator/HidlHalService;->getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/authenticator/HidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x2800

    :try_start_2
    new-array v2, v2, [B

    invoke-virtual {v1, p3, p4}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v3

    cmp-long p3, v3, p3

    if-eqz p3, :cond_1

    const-string p3, "Skipped fewer bytes than requested."

    invoke-static {p6, p3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_2

    invoke-virtual {p2, v2, p5, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    move p4, p5

    :goto_1
    array-length v2, p3

    if-ge p4, v2, :cond_3

    aget-byte v2, p3, p4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
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

    invoke-static {p6, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p5

    :cond_4
    :goto_4
    :try_start_9
    invoke-interface {p0, p1, v0}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->load(ILjava/util/ArrayList;)Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load fail. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    return p5

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

    invoke-static {p6, p1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I
    .locals 0

    sget-object p0, Lcom/samsung/android/authenticator/HidlHalService$1;->$SwitchMap$com$samsung$android$authenticator$TrustedAppAssetType:[I

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

    sget-object p0, Lcom/samsung/android/authenticator/HidlHalService$1;->$SwitchMap$com$samsung$android$authenticator$TrustedAppType:[I

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

    const-string v2, "HHS"

    if-nez p1, :cond_0

    const-string/jumbo p0, "type can not be 0"

    invoke-static {v2, p0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/authenticator/HidlHalService;->getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/authenticator/HidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    :try_start_0
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->terminate(I)Z

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
.method public blacklist execute(Lcom/samsung/android/authenticator/TrustedAppAssetType;[B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authenticator/HidlHalService;->execute(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist execute(Lcom/samsung/android/authenticator/TrustedAppType;[B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppType;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authenticator/HidlHalService;->execute(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAvailable()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/authenticator/HidlHalService;->getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist load(Lcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I

    move-result p1

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/authenticator/HidlHalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result p0

    return p0
.end method

.method public blacklist load(Lcom/samsung/android/authenticator/TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppType;)I

    move-result p1

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/authenticator/HidlHalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result p0

    return p0
.end method

.method public whitelist serviceDied(J)V
    .locals 0

    const-string p1, "HHS"

    const-string/jumbo p2, "service id died"

    invoke-static {p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/authenticator/HidlHalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    return-void
.end method

.method public blacklist unload(Lcom/samsung/android/authenticator/TrustedAppAssetType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppAssetType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->unload(I)Z

    move-result p0

    return p0
.end method

.method public blacklist unload(Lcom/samsung/android/authenticator/TrustedAppType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->translateTaType(Lcom/samsung/android/authenticator/TrustedAppType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/HidlHalService;->unload(I)Z

    move-result p0

    return p0
.end method

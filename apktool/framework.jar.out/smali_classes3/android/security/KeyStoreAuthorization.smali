.class public Landroid/security/KeyStoreAuthorization;
.super Ljava/lang/Object;
.source "KeyStoreAuthorization.java"


# static fields
.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreAuthorization"

.field private static final blacklist sInstance:Landroid/security/KeyStoreAuthorization;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/KeyStoreAuthorization;

    invoke-direct {v0}, Landroid/security/KeyStoreAuthorization;-><init>()V

    sput-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/security/KeyStoreAuthorization;
    .locals 1

    sget-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-object v0
.end method

.method private blacklist getService()Landroid/security/authorization/IKeystoreAuthorization;
    .locals 0

    const-string p0, "android.security.authorization"

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I
    .locals 1

    const-string v0, "addAuthToken"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/security/authorization/IKeystoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    return p0

    :catch_1
    move-exception p0

    const-string p1, "KeyStoreAuthorization"

    const-string v0, "Can not connect to keystore"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public blacklist addAuthToken([B)I
    .locals 0

    invoke-static {p1}, Landroid/security/AuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/security/keymint/HardwareAuthToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/security/KeyStoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I

    move-result p0

    return p0
.end method

.method public blacklist getLastAuthTime(J[I)J
    .locals 2

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->getLastAuthTime(J[I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error getting last auth time: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyStoreAuthorization"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public blacklist onDeviceLocked(I[JZ)I
    .locals 0

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceLocked(I[JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    return p0

    :catch_1
    move-exception p0

    const-string p1, "KeyStoreAuthorization"

    const-string p2, "Can not connect to keystore"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public blacklist onDeviceUnlocked(I[B)I
    .locals 0

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceUnlocked(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    return p0

    :catch_1
    move-exception p0

    const-string p1, "KeyStoreAuthorization"

    const-string p2, "Can not connect to keystore"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

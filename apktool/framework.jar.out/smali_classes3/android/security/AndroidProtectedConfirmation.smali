.class public Landroid/security/AndroidProtectedConfirmation;
.super Ljava/lang/Object;
.source "AndroidProtectedConfirmation.java"


# static fields
.field public static final blacklist ERROR_ABORTED:I = 0x2

.field public static final blacklist ERROR_CANCELED:I = 0x1

.field public static final blacklist ERROR_IGNORED:I = 0x4

.field public static final blacklist ERROR_OK:I = 0x0

.field public static final blacklist ERROR_OPERATION_PENDING:I = 0x3

.field public static final blacklist ERROR_SYSTEM_ERROR:I = 0x5

.field public static final blacklist ERROR_UNIMPLEMENTED:I = 0x6

.field public static final blacklist FLAG_UI_OPTION_INVERTED:I = 0x1

.field public static final blacklist FLAG_UI_OPTION_MAGNIFIED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidProtectedConfirmation"


# instance fields
.field private blacklist mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    return-void
.end method

.method private declared-synchronized blacklist getService()Landroid/security/apc/IProtectedConfirmation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    if-nez v0, :cond_0

    const-string v0, "android.security.apc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/apc/IProtectedConfirmation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    :cond_0
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public blacklist cancelConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;)I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/security/apc/IProtectedConfirmation;->cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    return p0

    :catch_1
    move-exception p0

    const-string p1, "AndroidProtectedConfirmation"

    const-string v0, "Cannot connect to keystore"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x5

    return p0
.end method

.method public blacklist isConfirmationPromptSupported()Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object p0

    invoke-interface {p0}, Landroid/security/apc/IProtectedConfirmation;->isSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "AndroidProtectedConfirmation"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist presentConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Landroid/security/apc/IProtectedConfirmation;->presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    return p0

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string p1, "AndroidProtectedConfirmation"

    const-string p2, "Cannot connect to keystore"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x5

    return p0
.end method

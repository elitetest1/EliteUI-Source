.class public Lcom/samsung/android/knox/dar/ddar/DualDARController;
.super Ljava/lang/Object;
.source "DualDARController.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DUALDAR_AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final blacklist DUALDAR_CONTROLLER_SERVICE:Ljava/lang/String; = "DUALDAR_CONTROLLER_SERVICE"

.field private static final blacklist FEATURE_RESET_PASSWORD:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "DualDAR::DualDARController"

.field private static volatile blacklist mInstance:Lcom/samsung/android/knox/dar/ddar/DualDARController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/DualDARController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/dar/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/dar/ddar/DualDARController;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/dar/ddar/DualDARController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/dar/ddar/DualDARController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDARController;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/dar/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/dar/ddar/DualDARController;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/dar/ddar/DualDARController;->mInstance:Lcom/samsung/android/knox/dar/ddar/DualDARController;

    return-object p0
.end method

.method private blacklist processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/dar/ddar/DualDARController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object p0

    const-string v0, "KNOXCORE_PROXY_AGENT"

    const-string v1, "DUALDAR_CONTROLLER_SERVICE"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private blacklist processCommandAsync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/dar/ddar/DualDARController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object p0

    const-string v0, "KNOXCORE_PROXY_AGENT"

    const-string v1, "DUALDAR_CONTROLLER_SERVICE"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist clearResetPasswordToken(IJ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "dual_dar_response"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "DualDAR::DualDARController"

    const-string p1, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist fetchOuterLayerKey(I)[B
    .locals 3

    const-string v0, "fetchOuterLayerKey()"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "FETCH_OUTERLAYER_KEY"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "OUTER_LAYER_SECRET"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "fetchOuterLayerKey failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    const-string p1, "fetchOuterLayerKey Successful"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist handleBeforeUnlockUser(I)Z
    .locals 3

    const-string v0, "handleBeforeUnlockUser"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ON_BEFORE_UNLOCK_USER"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "dual_dar_response"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "handleBeforeUnlockUser succeeded"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "handleBeforeUnlockUser failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist handleDeviceOwnerProvisioning()Z
    .locals 4

    const-string v0, "handleDeviceOwnerProvisioning"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ON_DEVICE_OWNER_PROVISIONING"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "dual_dar_response"

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handleDeviceOwnerProvisioning - result : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public blacklist handleWorkspaceCreation(I)Z
    .locals 3

    const-string v0, "handleWorkspaceCreation"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ON_WORKSPACE_CREATION"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "dual_dar_response"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "handleWorkspaceCreation succeeded"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "handleWorkspaceCreation failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist isReady(I)Z
    .locals 3

    const-string v0, "isReady()"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "IS_READY"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "dual_dar_response"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p1, "handling isReady failed by KnoxCore"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public blacklist isResetPasswordSupported(I)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "FEATURE"

    const/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "IS_SUPPORTED"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "dual_dar_response"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "DualDAR::DualDARController"

    const-string v0, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method public blacklist onDualDarStateChanged(Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/Event;I)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "PREVIOUS_STATE"

    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CURRENT_STATE"

    invoke-virtual {p2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ON_EVENT"

    invoke-virtual {p3}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ON_DDAR_STATE_CHANGED"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommandAsync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string p2, "dual_dar_response"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "DualDAR::DualDARController"

    const-string p2, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method public blacklist onPassword1Change(IZ)Z
    .locals 2

    const-string/jumbo p1, "onPassword1Change"

    const-string v0, "DualDAR::DualDARController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NEW_PASSWORD"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "ON_PASSWORD1_CHANGE"

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string p2, "dual_dar_response"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Successfully handled user 0 password change"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "Failed to handle user 0 password change"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist onPassword2Auth(I[B)Z
    .locals 4

    const-string/jumbo v0, "onPassword2Auth()"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXISTING_PASSWORD"

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream([B)[B

    move-result-object v3

    if-eqz v3, :cond_0

    move-object p2, v3

    :cond_0
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    const-string/jumbo p2, "user_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ON_PASSWORD2_AUTH"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    const-string v3, "dual_dar_response"

    invoke-virtual {p0, v3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, p1

    goto :goto_0

    :cond_2
    move p0, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    if-nez p0, :cond_3

    const-string p0, "Authentication Failure by dual dar client"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_3
    const-string/jumbo p0, "onPassword2Auth completed sucessfully"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist onPassword2Change(I[B[B)Z
    .locals 4

    const-string/jumbo v0, "onPassword2Change"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    array-length v3, p3

    if-nez v3, :cond_0

    move-object p3, v2

    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-nez v3, :cond_1

    move-object p2, v2

    :cond_1
    const-string v2, "EXISTING_PASSWORD"

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream([B)[B

    move-result-object v3

    if-eqz v3, :cond_2

    move-object p2, v3

    :cond_2
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_3
    const-string/jumbo p2, "user_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "NEW_PASSWORD"

    if-eqz p3, :cond_5

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p3}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream([B)[B

    move-result-object p1

    if-eqz p1, :cond_4

    move-object p3, p1

    :cond_4
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_5
    const-string p1, "ON_PASSWORD2_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    const-string p2, "dual_dar_response"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Authentication Change to DualDAR Client Successful"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_6
    const-string p0, "Authentication Change Failure by dual dar client"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist onUserRemoved(I)V
    .locals 3

    const-string/jumbo v0, "onUserRemoved()"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ON_USER_REMOVED"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommandAsync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "dual_dar_response"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "handling onUserRemoved failed by KnoxCore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "handling onUserRemoved succeeded by KnoxCore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onUserStart(I)V
    .locals 3

    const-string/jumbo v0, "onUserStart()"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ON_USER_START"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommandAsync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "dual_dar_response"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "handling onUserStart failed by KnoxCore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "handling onUserStart succeeded by KnoxCore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onUserStopped(I)V
    .locals 3

    const-string/jumbo v0, "onUserStopped()"

    const-string v1, "DualDAR::DualDARController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ON_USER_STOPPED"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommandAsync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "dual_dar_response"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "handling onUserStopped failed by KnoxCore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "handling onUserStopped succeeded by KnoxCore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist resetPasswordWithToken(I[BJ[B)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "NEW_PASSWORD"

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    const-string p2, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "RESET_PASSWORD_WITH_TOKEN"

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const-string p2, "dual_dar_response"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "DualDAR::DualDARController"

    const-string p2, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1
.end method

.method public blacklist setResetPasswordToken(I[BJ[B)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EXISTING_PASSWORD"

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    const-string p2, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "SET_RESET_PASSWORD_TOKEN"

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const-string p2, "dual_dar_response"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "DualDAR::DualDARController"

    const-string p2, "Some operation on DualDAR platform failed on DualDAR state changed"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1
.end method

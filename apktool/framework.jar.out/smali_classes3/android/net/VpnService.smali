.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Callback;,
        Landroid/net/VpnService$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist FAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.fast"

.field private static final blacklist KNOXGUARD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final whitelist SERVICE_META_DATA_SUPPORTS_ALWAYS_ON:Ljava/lang/String; = "android.net.VpnService.SUPPORTS_ALWAYS_ON"

.field private static final blacklist SYSTEM_VPN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "VpnService"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheck(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckNonPrefixBytes(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/VpnService;->checkNonPrefixBytes(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/net/IVpnManager;
    .locals 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static greylist-max-o check(Ljava/net/InetAddress;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/net/Inet4Address;

    const-string v1, "Bad prefixLength"

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    const/16 p0, 0x20

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_3

    if-ltz p1, :cond_2

    const/16 p0, 0x80

    if-gt p1, p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported family"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist checkNonPrefixBytes(Ljava/net/InetAddress;I)V
    .locals 1

    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p0, p1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getService()Landroid/net/IVpnManager;
    .locals 1

    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isSecureWifiPackage(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "VpnService"

    const-string v0, "Secure Wi-Fi signature mismatched"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    instance-of v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "prepare function with generic vpn context is called for knox vpn profile"

    const-string v2, "VpnService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNState()Z

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->isMetaEnabled()Z

    move-result p0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/net/IVpnManager;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v4

    invoke-interface {v4, v0, p0}, Landroid/net/IVpnManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object v1

    :catch_0
    const-string p0, "Exception occured while trying to prepare knox vpn profile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    invoke-static {p0}, Landroid/net/VpnService;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/net/VpnService;->prepareAndAuthorizeVpnForFast()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, v2, v1, p0}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_4

    return-object v1

    :catch_1
    :cond_4
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist prepareAndAuthorize(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2, v1, p0}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static blacklist prepareAndAuthorizeVpnForFast()Landroid/content/Intent;
    .locals 5

    const-string v0, "com.samsung.android.fast"

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v3, v0, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v4}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addAddress(Ljava/net/InetAddress;I)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/net/IVpnManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final whitelist isAlwaysOn()Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final whitelist isLockdownEnabled()Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/net/VpnService$Callback;

    invoke-direct {p1, p0, v0}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService-IA;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public whitelist onRevoke()V
    .locals 0

    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    return-void
.end method

.method public whitelist protect(I)Z
    .locals 2

    const-string/jumbo p0, "protect is not going to be called for "

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->getChainingEnabledForProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result p0

    return p0

    :cond_0
    sget-boolean p1, Landroid/net/VpnService;->DBG:Z

    if-eqz p1, :cond_1

    const-string p1, "VpnService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist protect(Ljava/net/DatagramSocket;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/VpnService;->protect(I)Z

    move-result p0

    return p0
.end method

.method public whitelist protect(Ljava/net/Socket;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/VpnService;->protect(I)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o removeAddress(Ljava/net/InetAddress;I)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/net/IVpnManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/net/IVpnManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

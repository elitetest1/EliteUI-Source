.class public final Landroid/security/net/config/NetworkSecurityConfigProvider;
.super Ljava/security/Provider;
.source "NetworkSecurityConfigProvider.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "nsconfig"

.field private static final greylist-max-o PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/security/net/config/NetworkSecurityConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Android Network Security Policy Provider"

    const-string v3, "AndroidNSSP"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RootTrustManagerFactorySpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustManagerFactory.PKIX"

    invoke-virtual {p0, v1, v0}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.TrustManagerFactory.X509"

    const-string v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Landroid/security/net/config/NetworkSecurityConfigProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist handleNewApplication(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result v2

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": New config does not match the previously set config."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "nsconfig"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Found multiple conflicting per-domain rules"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/security/net/config/ApplicationConfig;->setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V

    return-void
.end method

.method public static greylist-max-o install(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    invoke-static {v0}, Landroid/security/net/config/ApplicationConfig;->setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V

    new-instance p0, Landroid/security/net/config/NetworkSecurityConfigProvider;

    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfigProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    new-instance p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;

    invoke-direct {p0, v0}, Landroid/security/net/config/ConfigNetworkSecurityPolicy;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    invoke-static {p0}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to install provider as highest priority provider. Provider was installed at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

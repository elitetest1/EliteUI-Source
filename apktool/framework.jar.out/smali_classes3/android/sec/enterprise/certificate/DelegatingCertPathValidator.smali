.class public final Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "DelegatingCertPathValidator.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DelegatingCertPathValidator"


# instance fields
.field private final blacklist mDelegate:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    :try_start_0
    const-string v0, "PKIX"

    const-string v1, "CertPathProvider"

    invoke-static {v0, v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->mDelegate:Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 0

    iget-object p0, p0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->mDelegate:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p0}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-boolean v0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DelegatingCertPathValidator"

    const-string v1, "engineValidate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, p2, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->isChainTrustedByMdm(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    invoke-virtual {v0}, Ljava/security/cert/PKIXRevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/security/cert/PKIXParameters;

    invoke-static {v0, v2}, Landroid/sec/enterprise/certificate/DelegatingCertPathValidatorHelper;->setRevocationChecker(Ljava/security/cert/PKIXRevocationChecker;Ljava/security/cert/PKIXParameters;)V

    :try_start_0
    iget-object p0, p0, Landroid/sec/enterprise/certificate/DelegatingCertPathValidator;->mDelegate:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p0, p1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/16 v2, 0x162

    invoke-static {p1, v2, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "A certificate from chain is not trusted by MDM policy"

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "inappropriate params, must be an instance of PKIXParameters"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

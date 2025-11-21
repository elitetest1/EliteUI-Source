.class public final Landroid/security/keystore/KeyStoreManager;
.super Ljava/lang/Object;
.source "KeyStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreManager$SupplementaryAttestationInfoTagEnum;
    }
.end annotation


# static fields
.field public static final whitelist MODULE_HASH:I = -0x6ffffd2c

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreManager"

.field private static blacklist sInstance:Landroid/security/keystore/KeyStoreManager;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mKeyStore2:Landroid/security/KeyStore2;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/keystore/KeyStoreManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    return-void
.end method

.method private static blacklist createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 3

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object v0
.end method

.method private static blacklist createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;
    .locals 1

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iput p2, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput-wide p0, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const/4 p0, 0x0

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object v0
.end method

.method private static blacklist getCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "KeyStoreManager"

    const-string v1, "Caught an exception parsing the certificate: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getCertificates([B)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const-string v0, "KeyStoreManager"

    if-eqz p0, :cond_1

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Received null certificates from a non-null certificateChain"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Caught an exception parsing the certs: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static blacklist getInstance()Landroid/security/keystore/KeyStoreManager;
    .locals 2

    sget-object v0, Landroid/security/keystore/KeyStoreManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/security/keystore/KeyStoreManager;

    invoke-direct {v1}, Landroid/security/keystore/KeyStoreManager;-><init>()V

    sput-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    :cond_0
    sget-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist getGrantedCertificateChainFromId(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    iget-object p0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    instance-of p1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getCertificate()[B

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->getCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getCertificateChain()[B

    move-result-object p0

    invoke-static {p0}, Landroid/security/keystore/KeyStoreManager;->getCertificates([B)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "keyStoreKey is not of the expected type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyStoreManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getGrantedKeyFromId(J)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;JI)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "No key found by the given alias"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getGrantedKeyPairFromId(J)Ljava/security/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    iget-object p0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSupplementaryAttestationInfo(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-virtual {p0, p1}, Landroid/security/KeyStore2;->getSupplementaryAttestationInfo(I)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist grantKeyAccess(Ljava/lang/String;I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    const/16 v1, 0x104

    invoke-virtual {p0, v0, p2, v1}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, " to uid "

    const/4 v1, 0x4

    const-string v2, "KeyStoreManager"

    if-eqz p0, :cond_1

    iget v3, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide p0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    return-wide p0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received a result outside the grant domain: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain a grant ID for alias "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "Received a null KeyDescriptor from grant"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No ID was returned for the grant request for alias "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "No key found by the given alias"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    throw p0
.end method

.method public whitelist revokeKeyAccess(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStore2;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "No key found by the given alias"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    throw p0
.end method

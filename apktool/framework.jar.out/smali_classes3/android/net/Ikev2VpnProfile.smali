.class public final Landroid/net/Ikev2VpnProfile;
.super Landroid/net/PlatformVpnProfile;
.source "Ikev2VpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Ikev2VpnProfile$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ANDROID_KEYSTORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field public static final blacklist DEFAULT_ALGORITHMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_CERT:Ljava/lang/String; = ""

.field private static final blacklist MISSING_PARAM_MSG_TMPL:Ljava/lang/String; = "Required parameter was not provided: %s"

.field public static final blacklist PREFIX_INLINE:Ljava/lang/String; = "INLINE:"

.field public static final blacklist PREFIX_KEYSTORE_ALIAS:Ljava/lang/String; = "KEYSTORE_ALIAS:"

.field private static final blacklist TAG:Ljava/lang/String; = "Ikev2VpnProfile"


# instance fields
.field private final blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAutomaticIpVersionSelectionEnabled:Z

.field private final blacklist mAutomaticNattKeepaliveTimerEnabled:Z

.field private final blacklist mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private final blacklist mIsBypassable:Z

.field private final blacklist mIsMetered:Z

.field private final blacklist mIsRestrictedToTestNetworks:Z

.field private final blacklist mMaxMtu:I

.field private final blacklist mPassword:Ljava/lang/String;

.field private final blacklist mPresharedKey:[B

.field private final blacklist mProxyInfo:Landroid/net/ProxyInfo;

.field private final blacklist mRsaPrivateKey:Ljava/security/PrivateKey;

.field private final blacklist mServerAddr:Ljava/lang/String;

.field private final blacklist mServerRootCaCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserIdentity:Ljava/lang/String;

.field private final blacklist mUsername:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/Ikev2VpnProfile;->checkBuilderSetter(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateAllowedAlgorithms(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->validateAllowedAlgorithms(Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "cbc(aes)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string/jumbo v1, "rfc3686(ctr(aes))"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "hmac(sha256)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "hmac(sha384)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "hmac(sha512)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string/jumbo v1, "xcbc(aes)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "cmac(aes)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string/jumbo v1, "rfc4106(gcm(aes))"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    const-string/jumbo v1, "rfc7539esp(chacha20,poly1305)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/security/cert/X509Certificate;",
            "Landroid/net/ProxyInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZIZZZ",
            "Landroid/net/ipsec/ike/IkeTunnelConnectionParams;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p11

    move/from16 v1, p12

    move/from16 v2, p16

    move/from16 v3, p17

    invoke-direct {p0, p1, v2, v3}, Landroid/net/PlatformVpnProfile;-><init>(IZZ)V

    const-string p1, "Allowed Algorithms"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Required parameter was not provided: %s"

    invoke-static {p11, v3, p1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    array-length p2, p4

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    iput-object p5, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iput-object p6, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    iput-object p7, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    iput-object p8, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iput-object p9, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    if-nez p10, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/net/ProxyInfo;

    invoke-direct {p1, p10}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    :goto_1
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Vpn must be bypassable if excludeLocalRoutes is set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    move/from16 p1, p13

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    move/from16 p1, p14

    iput p1, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    move/from16 p1, p15

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile;->validate()V

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZLandroid/net/Ikev2VpnProfile-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroid/net/Ikev2VpnProfile;-><init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V

    return-void
.end method

.method private static blacklist addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/net/IpSecAlgorithm;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static blacklist certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static blacklist certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static blacklist checkBuilderSetter(ZLjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be set with IkeTunnelConnectionParams builder"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist checkCert(Ljava/security/cert/X509Certificate;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate could not be encoded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs blacklist checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decodeFromIpsecSecret(Ljava/lang/String;)[B
    .locals 2

    const-string v0, "encoded"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p0, v1, v0}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist encodeForIpsecSecret([B)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "secret"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p0, v1, v0}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_5

    new-instance v0, Landroid/net/Ikev2VpnProfile$Builder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/net/Ikev2VpnProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->getAllowedAlgorithms()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setAllowedAlgorithms(Ljava/util/List;)Landroid/net/Ikev2VpnProfile$Builder;

    iget v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v3, "KEYSTORE_ALIAS:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->getPrivateKeyFromAndroidKeystore(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v3, "INLINE:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Ikev2VpnProfile;->certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Ikev2VpnProfile;->certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/Ikev2VpnProfile$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid RSA private key prefix"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid auth method set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->decodeFromIpsecSecret(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setAuthPsk([B)Landroid/net/Ikev2VpnProfile$Builder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Ikev2VpnProfile;->certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/Ikev2VpnProfile$Builder;->setAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/net/Ikev2VpnProfile$Builder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-direct {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;-><init>(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setProxy(Landroid/net/ProxyInfo;)Landroid/net/Ikev2VpnProfile$Builder;

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setBypassable(Z)Landroid/net/Ikev2VpnProfile$Builder;

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setMetered(Z)Landroid/net/Ikev2VpnProfile$Builder;

    iget v1, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setMaxMtu(I)Landroid/net/Ikev2VpnProfile$Builder;

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile$Builder;->restrictToTestNetworks()Landroid/net/Ikev2VpnProfile$Builder;

    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    if-nez v1, :cond_7

    sget-object v1, Landroid/net/Ikev2VpnProfile;->TAG:Ljava/lang/String;

    const-string v2, "ExcludeLocalRoutes should only be set in the bypassable VPN"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setLocalRoutesExcluded(Z)Landroid/net/Ikev2VpnProfile$Builder;

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setRequiresInternetValidation(Z)Landroid/net/Ikev2VpnProfile$Builder;

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setAutomaticNattKeepaliveTimerEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;

    iget-boolean p0, p0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    invoke-virtual {v0, p0}, Landroid/net/Ikev2VpnProfile$Builder;->setAutomaticIpVersionSelectionEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile$Builder;->build()Landroid/net/Ikev2VpnProfile;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->decodeFromIpsecSecret(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getPrivateKeyFromAndroidKeystore(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    instance-of v0, p0, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/PrivateKey;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected key type returned from android keystore."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load key from android keystore."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist getUserIdentityFromIkeSession(Landroid/net/ipsec/ike/IkeSessionParams;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalIdentification()Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object p0

    instance-of v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    check-cast p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "@#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;->ipv4Address:Ljava/net/Inet4Address;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unspported ASN.1 encoded identities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown IkeIdentification to get user identity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist hasAeadAlgorithms(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "rfc4106(gcm(aes))"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasNormalModeAlgorithms(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "cbc(aes)"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "hmac(sha256)"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "hmac(sha384)"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "hmac(sha512)"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public static blacklist isValidVpnProfile(Lcom/android/internal/net/VpnProfile;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist validate()V
    .locals 3

    iget v0, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    const/16 v1, 0x500

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    const-string v1, "Server Address"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    const-string v1, "User Identity"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    iget v0, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    const-string v1, "User cert"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    const-string v1, "RSA Private key"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid auth method set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    const-string v1, "Preshared Key"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    const-string v1, "Username"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    const-string v1, "Password"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    :cond_4
    :goto_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->validateAllowedAlgorithms(Ljava/util/List;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max MTU must be at least1280"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist validateAllowedAlgorithms(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hmac(md5)"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "hmac(sha1)"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasAeadAlgorithms(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasNormalModeAlgorithms(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Algorithm set missing support for Auth, Crypt or both"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Algorithm not supported for IKEv2 VPN profiles"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/net/Ikev2VpnProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/net/Ikev2VpnProfile;

    iget v0, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    iget v2, p1, Landroid/net/Ikev2VpnProfile;->mType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    iget-boolean v2, p1, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    iget-boolean v2, p1, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    iget v2, p1, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    iget-boolean v2, p1, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    iget-boolean v2, p1, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    iget-boolean v2, p1, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v2, p1, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    iget-boolean v2, p1, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    iget-boolean p1, p1, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getAllowedAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .locals 0

    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-object p0
.end method

.method public whitelist getMaxMtu()I
    .locals 0

    iget p0, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    return p0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPresharedKey()[B
    .locals 2

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist getProxyInfo()Landroid/net/ProxyInfo;
    .locals 0

    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method public whitelist getRsaPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public whitelist getServerAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getServerHostname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getServerRootCaCert()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public whitelist getUserCert()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public whitelist getUserIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->getUserIdentityFromIkeSession(Landroid/net/ipsec/ike/IkeSessionParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/Ikev2VpnProfile;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iget-object v10, v0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    iget-object v11, v0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    iget-object v12, v0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v1, v0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v0, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAutomaticIpVersionSelectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    return p0
.end method

.method public whitelist isAutomaticNattKeepaliveTimerEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    return p0
.end method

.method public whitelist isBypassable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    return p0
.end method

.method public whitelist isMetered()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    return p0
.end method

.method public blacklist isRestrictedToTestNetworks()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IkeV2VpnProfile ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " MaxMtu="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    if-eqz v1, :cond_0

    const-string v1, " Bypassable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    if-eqz v1, :cond_1

    const-string v1, " RequiresInternetValidation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    if-eqz v1, :cond_2

    const-string v1, " RestrictedToTestNetworks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, " AutomaticNattKeepaliveTimerEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean p0, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    if-eqz p0, :cond_4

    const-string p0, " AutomaticIpVersionSelectionEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toVpnProfile()Lcom/android/internal/net/VpnProfile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    iget-boolean v3, p0, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    iget-boolean v4, p0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    iget-object v5, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-boolean v6, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    iget-boolean v7, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    const-string v1, ""

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V

    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    iget v1, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_0

    const/16 p0, 0xa

    iput p0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    return-object v0

    :cond_0
    iget v1, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUserIdentity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    iget v1, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    const/4 v2, 0x6

    const-string v3, ""

    if-eq v1, v2, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INLINE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/Ikev2VpnProfile;->encodeForIpsecSecret([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid auth method set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->encodeForIpsecSecret([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    return-object v0

    :cond_4
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    return-object v0
.end method

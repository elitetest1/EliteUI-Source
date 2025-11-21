.class Lcom/samsung/android/knox/analytics/database/CryptoHandler;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "[KnoxAnalytics] CryptoHandler"


# instance fields
.field private blacklist mKeyCache:Ljavax/crypto/SecretKey;

.field private final blacklist mKeystoreAccessWaitLock:Ljava/lang/Object;

.field private final blacklist mKeystoreGenerateAccessLock:Ljava/lang/Object;

.field private blacklist mLegacyKeyCache:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private blacklist decryptInternal([BZZ)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;,
            Landroid/os/DeadObjectException;,
            Landroid/security/keystore/KeyStoreConnectException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    array-length v1, p1

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {p1, v1, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getGCMKey(ZZ)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string p2, "decryptInternal(): "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist encryptInternal(Ljava/lang/String;Z)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;,
            Landroid/os/DeadObjectException;,
            Landroid/security/keystore/KeyStoreConnectException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getGCMKey(ZZ)Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const/16 p2, 0xc

    new-array v2, p2, [B

    array-length v3, p0

    invoke-static {p0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    array-length p1, p0

    add-int/2addr p1, p2

    new-array p1, p1, [B

    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    invoke-static {v2, v1, p1, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private blacklist encryptInternal([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const/16 v1, 0x10

    new-array v2, v1, [B

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    array-length p1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    array-length v0, p0

    invoke-static {p0, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    invoke-static {v2, v4, p1, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private blacklist generateCBCKeyInternal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "AES"

    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v2, p0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    const-string/jumbo v1, "synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method private blacklist generateGCMKeyInternal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "AES"

    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v2, p0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    const-string/jumbo v1, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method private blacklist getCBCKey()Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "getCBCKey() - synthetic_password_knox.analytics.service.compression.cryptokey is not on Keystore"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "getCBCKey() - null synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getGCMKey(ZZ)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    :goto_0
    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStoreKey(Z)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit p2

    return-object v0

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getKeyStore()Ljava/security/KeyStore;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "CertificateException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "KeyStoreException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method private blacklist getKeyStoreKey(Z)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.analytics.service.cryptokey"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "synthetic_password_knox.analytics.service.cryptokey"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "legacy key"

    goto :goto_1

    :cond_1
    const-string v0, "key"

    :goto_1
    const/4 v1, 0x0

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string p1, "getKeyStore(): null"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "getKeyStoreKey() - "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not on Keystore"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-virtual {p0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez p0, :cond_4

    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string p1, "getKeyStoreKey() - null "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method blacklist decrypt([BZ)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "decrypt(): KeyStoreConnectException"

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decrypt(): isLegacyKey = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptInternal([BZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "decrypt(): DeadObjectException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptInternal([BZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v3, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist decryptBlob([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decryptBlob(): cipherLength: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    array-length v1, p1

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method blacklist decryptBulk([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBlob([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method blacklist deleteAnalyticsLegacyKey()V
    .locals 5

    const-string v0, "com.samsung.android.knox.analytics.service.cryptokey"

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "deleteAnalyticsLegacyKey()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "deleteAnalyticsLegacyKey(): Key already deleted"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void

    :cond_1
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const-string v0, "deleteAnalyticsLegacyKey(): Key deleted. Invalidating cache"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "deleteAnalyticsLegacyKey(): KeyStoreException"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void
.end method

.method blacklist encrypt(Ljava/lang/String;)[B
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encrypt("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): BackendBusyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "encrypt(): Interrupted exception"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_2
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): KeyStoreConnectException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): UnsupportedEncodingException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encrypt(): DeadObjectException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_4 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt()"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): GeneralSecurityException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): InvalidKeyException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist encryptBlob([B)[B
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "encryptBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "encryptBlob(): BackendBusyException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encryptBlob(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_2
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBlob(): GeneralSecurityException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBlob(): InvalidKeyException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist encryptBulk(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "encryptBulk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptBulkInternal(Ljava/util/List;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "encryptBulk(): BackendBusyException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encryptBulk(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_2
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): GeneralSecurityException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): IllegalBlockSizeException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): IOException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): NoSuchPaddingException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): InvalidKeyException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): BadPaddingException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_8
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): NoSuchAlgorithmException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist encryptBulkInternal(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method blacklist generateCBCKey()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateCBCKeyInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateCBCKey(): GeneralSecurityException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateCBCKey(): IOException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method blacklist generateGCMKey()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "generateGCMKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateGCMKeyInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateGCMKey(): GeneralSecurityException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateGCMKey(): IOException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isGCMKeyGenerated()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "isGCMKeyGenerated(): KeyStoreException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

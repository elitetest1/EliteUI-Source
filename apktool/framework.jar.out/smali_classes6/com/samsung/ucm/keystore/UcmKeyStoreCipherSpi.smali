.class public abstract Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "UcmKeyStoreCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesGcmNoPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesCbcIso9797M2;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesCbcNoPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$PKCS1Padding;
    }
.end annotation


# static fields
.field private static final blacklist AES_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final blacklist GCM_MODE:Ljava/lang/String; = "GCM"

.field static final blacklist INVALID_PADDING:I = -0x1

.field static final blacklist ISO9797_M2:I = 0x4

.field private static blacklist KEY_EXTRA_AAD:Ljava/lang/String; = "extra_aad"

.field private static blacklist KEY_EXTRA_IV:Ljava/lang/String; = "extra_iv"

.field private static blacklist KEY_EXTRA_TAG_LEN:Ljava/lang/String; = "extra_tag_length"

.field static final blacklist NO_PADDING:I = 0x1

.field static final blacklist PKCS1_OAEP_PADDING:I = 0x3

.field static final blacklist PKCS1_PADDING:I = 0x2

.field private static final blacklist RSA_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final blacklist TAG:Ljava/lang/String; = "UcmKeyStoreCipherSpi"


# instance fields
.field private blacklist mAAD:[B

.field private final blacklist mAlgorithm:Ljava/lang/String;

.field blacklist mEncrypting:Z

.field private blacklist mIV:[B

.field private blacklist mIsDoFinalCalled:Z

.field private blacklist mTagLength:I

.field private blacklist mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;

    invoke-direct {p2, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    return-void

    :cond_0
    const-string v0, "RSA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;

    invoke-direct {p2, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    :cond_1
    return-void
.end method

.method private blacklist parseDecryptedMessage([B)[B
    .locals 3

    const/4 p0, 0x0

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private blacklist parseEncryptedMessage([B)[B
    .locals 3

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    const/4 p0, 0x2

    invoke-static {p1, p0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p0, v1

    add-int/lit8 v2, v1, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v1, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p0, v2

    new-array v2, p0, [B

    invoke-static {p1, v1, v2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    new-array p0, v0, [B

    return-object p0
.end method

.method private blacklist parseEncryptionMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported opmode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    return-void

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    return-void
.end method

.method private blacklist parseParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    array-length p0, v0

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Caller-provided IV not permitted"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    instance-of v0, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v0, :cond_4

    check-cast p1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result p1

    iput p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mTagLength:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method blacklist doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    return-void
.end method

.method public whitelist test-api engineDoFinal([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object p0

    array-length p1, p0

    add-int/2addr p1, p5

    array-length p2, p4

    if-gt p1, p2, :cond_0

    const/4 p1, 0x0

    array-length p2, p0

    invoke-static {p0, p1, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    return p0

    :cond_0
    new-instance p0, Ljavax/crypto/ShortBufferException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "output buffer is too small "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineDoFinal([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    :cond_0
    iget-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->doFinal()[B

    move-result-object p1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_IV:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GCM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_AAD:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mTagLength:I

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object v1

    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {p2, v1, p1, v3, p3}, Landroid/sec/enterprise/IEDMProxy;->ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object p1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptedMessage([B)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {p2, v1, p1, v3, p3}, Landroid/sec/enterprise/IEDMProxy;->ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object p1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseDecryptedMessage([B)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    iput-boolean v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    return-object p1

    :cond_5
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string/jumbo p1, "output is null"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Remote Exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UcmKeyStoreCipherSpi"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "RemoteException"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "failed to connect ucm service"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineGetBlockSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineGetIV()[B
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIsDoFinalCalled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mEncrypting:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getIV can be supported after performing doFinal"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mIV:[B

    return-object p0
.end method

.method public whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api engineGetOutputSize(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {p0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getModulusSize()I

    move-result p0

    return p0
.end method

.method public whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unknown param type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Algorithm parameters rejected when none supplied"

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method blacklist engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseEncryptionMode(I)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->parseParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->init(Ljava/security/Key;)V

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Key is null"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineSetMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->setPadding(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v0, "wrappedKeyType == "

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object p0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api engineUpdate([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineUpdate([BII)[B

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineUpdate([BII)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->update([BII)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public whitelist test-api engineUpdateAAD([BII)V
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mAAD:[B

    return-void
.end method

.method public whitelist test-api engineWrap(Ljava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->engineDoFinal([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method blacklist isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;->mUcmGenericCipher:Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;

    invoke-virtual {p0}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;->getKey()Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

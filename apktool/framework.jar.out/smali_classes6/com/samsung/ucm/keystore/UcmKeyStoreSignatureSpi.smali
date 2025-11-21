.class public Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "UcmKeyStoreSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA512withECGDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA384withECGDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA256withECGDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA224withECGDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA1withECGDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$NONEwithECGDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA512withECDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA384withECDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA256withECDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA224withECDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA1withECDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$NONEwithECDSA;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA512WithPSSPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA384WithPSSPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA256WithPSSPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA224WithPSSPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA1WithPSSPadding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA512WithPKCS1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA384WithPKCS1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA256WithPKCS1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA224WithPKCS1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA1WithPKCS1Padding;,
        Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$MD5WithPKCS1Padding;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UcmKeyStoreSignatureSpi"


# instance fields
.field private final blacklist mAlgorithm:Ljava/lang/String;

.field private blacklist mIsSigning:Z

.field private blacklist mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

.field private blacklist mStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mIsSigning:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method private blacklist engineUpdateInternal([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private blacklist initInternal(Ljava/security/PrivateKey;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mIsSigning:Z

    check-cast p1, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string/jumbo p1, "not supported key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist isInvalidParameter()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNotInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mIsSigning:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist resetContext()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mIsSigning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->initInternal(Ljava/security/PrivateKey;Z)V

    return-void
.end method

.method public whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->initInternal(Ljava/security/PrivateKey;Z)V

    new-instance p0, Ljava/security/InvalidKeyException;

    const-string/jumbo p1, "verify is not supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineSign()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->isNotInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->isInvalidParameter()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mKey:Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    invoke-virtual {v1}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy;->ucmSign(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->resetContext()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string/jumbo v0, "output is null"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Remote Exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UcmKeyStoreSignatureSpi"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "RemoteException"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "failed to connect ucm service"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "Invalid input data"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "engineSign. not initialized"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineUpdate(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->engineUpdateInternal([BII)V

    return-void
.end method

.method public whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->engineUpdateInternal([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/ProviderException;

    const-string/jumbo v0, "update() failed"

    invoke-direct {p1, v0, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api engineUpdate([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->mIsSigning:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;->engineUpdateInternal([BII)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/ProviderException;

    const-string/jumbo p1, "wrong input. input data size is wrong"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/ProviderException;

    const-string/jumbo p1, "wrong input. input is null"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "Update operation doesn\'t support verify"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineVerify([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "engineVerify unsupported"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

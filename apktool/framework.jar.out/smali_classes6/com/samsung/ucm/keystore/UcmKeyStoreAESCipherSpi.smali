.class public Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;
.source "UcmKeyStoreAESCipherSpi.java"


# instance fields
.field private blacklist mStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;-><init>(I)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public blacklist doFinalInternal(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    const-string v0, "Invalid input data"

    invoke-direct {p1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw p1
.end method

.method public blacklist getModulusSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    .locals 0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    check-cast p1, Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;

    return-object p1
.end method

.method public blacklist isModeSupported(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "CBC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "GCM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isPaddingSupported(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p0, "ISO9797_M2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NOPADDING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist update([BII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreAESCipherSpi;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

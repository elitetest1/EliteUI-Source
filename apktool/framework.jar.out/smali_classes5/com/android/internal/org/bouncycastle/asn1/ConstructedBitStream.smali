.class Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;
.super Ljava/io/InputStream;
.source "ConstructedBitStream.java"


# instance fields
.field private blacklist _currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

.field private blacklist _currentStream:Ljava/io/InputStream;

.field private blacklist _first:Z

.field private final blacklist _octetAligned:Z

.field private blacklist _padBits:I

.field private final blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    return-void
.end method

.method private blacklist getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected octet-aligned bitstring, but found padBits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-eqz v1, :cond_4

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez p0, :cond_3

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    return-object v0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown object encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist getPadBits()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    return p0
.end method

.method public whitelist test-api read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    return v1

    :cond_4
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public whitelist test-api read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_2

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_0
.end method

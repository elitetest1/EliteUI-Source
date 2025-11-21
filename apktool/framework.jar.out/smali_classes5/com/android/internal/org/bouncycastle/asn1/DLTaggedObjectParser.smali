.class Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;
.super Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;
.source "DLTaggedObjectParser.java"


# instance fields
.field private final blacklist _constructed:Z


# direct methods
.method constructor blacklist <init>(IIZLcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_tagClass:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_tagNo:I

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedDL(IIZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedDL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitPrimitive(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseTaggedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;-><init>(IIZLcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method

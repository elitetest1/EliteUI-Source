.class Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field final blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

.field final blacklist _tagClass:I

.field final blacklist _tagNo:I


# direct methods
.method constructor blacklist <init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTagClass()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    return p0
.end method

.method public blacklist getTagNo()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    return p0
.end method

.method public blacklist hasContextTag()Z
    .locals 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasContextTag(I)Z
    .locals 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasTag(II)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasTagClass(I)Z
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedIL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseTaggedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

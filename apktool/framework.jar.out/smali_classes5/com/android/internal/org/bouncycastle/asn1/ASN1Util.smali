.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;
.super Ljava/lang/Object;
.source "ASN1Util.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag but found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static blacklist checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 2

    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag but found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static blacklist getBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTagText(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "]"

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[UNIVERSAL "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[PRIVATE "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[CONTEXT "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[APPLICATION "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;->getTagNumber()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

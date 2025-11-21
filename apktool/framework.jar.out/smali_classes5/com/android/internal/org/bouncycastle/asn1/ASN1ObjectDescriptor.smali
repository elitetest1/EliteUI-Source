.class public final Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectDescriptor.java"


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'baseGraphicString\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct object descriptor from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal object in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->encodedLength(Z)I

    move-result p0

    return p0
.end method

.method public blacklist getBaseGraphicString()Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method

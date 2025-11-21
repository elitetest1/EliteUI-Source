.class Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1ObjectDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method

.method blacklist fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method

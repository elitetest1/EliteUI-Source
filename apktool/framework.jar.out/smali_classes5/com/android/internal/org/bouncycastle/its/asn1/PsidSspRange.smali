.class public Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PsidSspRange.java"


# instance fields
.field private blacklist psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected sequences with one or optionally two items"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getPsid()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public blacklist getSspRange()Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-object p0
.end method

.method public blacklist setPsid(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public blacklist setSspRange(Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-void
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

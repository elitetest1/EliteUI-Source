.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "OCSPResponse.java"


# instance fields
.field blacklist responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

.field blacklist responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 1

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getResponseBytes()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    return-object p0
.end method

.method public blacklist getResponseStatus()Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field private blacklist c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private final blacklist encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field private blacklist p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getPointEncoding()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isPointCompressed()Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    aget-byte p0, p0, v0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

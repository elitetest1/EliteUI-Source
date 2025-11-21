.class public Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RectangularRegion.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;
    .locals 1

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

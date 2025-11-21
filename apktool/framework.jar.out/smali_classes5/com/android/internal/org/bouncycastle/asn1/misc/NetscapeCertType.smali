.class public Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;
.super Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
.source "NetscapeCertType.java"


# static fields
.field public static final blacklist objectSigning:I = 0x10

.field public static final blacklist objectSigningCA:I = 0x1

.field public static final blacklist reserved:I = 0x8

.field public static final blacklist smime:I = 0x20

.field public static final blacklist smimeCA:I = 0x2

.field public static final blacklist sslCA:I = 0x4

.field public static final blacklist sslClient:I = 0x80

.field public static final blacklist sslServer:I = 0x40


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->getPadBits(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public blacklist hasUsages(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->intValue()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetscapeCertType: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

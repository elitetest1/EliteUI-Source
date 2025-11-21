.class public Lcom/android/internal/org/bouncycastle/asn1/DERNull;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

.field private static final blacklist zeroBytes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

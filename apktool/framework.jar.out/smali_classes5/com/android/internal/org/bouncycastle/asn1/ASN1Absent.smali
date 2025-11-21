.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Absent.java"


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Absent;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method blacklist encodeConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

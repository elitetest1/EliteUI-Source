.class Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;
.super Ljava/lang/Object;
.source "LazyConstructionEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private blacklist aIn:Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

.field private blacklist nextObj:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([BZ)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->aIn:Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    return-void
.end method

.method private blacklist readObject()Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->aIn:Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed ASN.1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

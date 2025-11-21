.class abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;
.super Ljava/lang/Object;
.source "ASN1Type.java"


# instance fields
.field final blacklist javaClass:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final blacklist getJavaClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

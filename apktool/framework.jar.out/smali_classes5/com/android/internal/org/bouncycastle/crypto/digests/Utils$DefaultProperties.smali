.class Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultProperties"
.end annotation


# instance fields
.field private final blacklist algorithmName:Ljava/lang/String;

.field private final blacklist bitsOfSecurity:I

.field private final blacklist purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-void
.end method


# virtual methods
.method public blacklist bitsOfSecurity()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    return p0
.end method

.method public blacklist getParams()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPurpose()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

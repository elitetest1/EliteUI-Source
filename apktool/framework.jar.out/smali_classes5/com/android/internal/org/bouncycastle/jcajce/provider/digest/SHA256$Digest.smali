.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA256.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/Digest;)Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA256$Digest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-object v0
.end method

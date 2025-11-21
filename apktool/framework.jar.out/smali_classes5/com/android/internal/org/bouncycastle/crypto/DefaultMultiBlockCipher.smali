.class public abstract Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.super Ljava/lang/Object;
.source "DefaultMultiBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMultiBlockSize()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist processBlocks([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eq v1, p3, :cond_0

    add-int v3, p5, v2

    invoke-virtual {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

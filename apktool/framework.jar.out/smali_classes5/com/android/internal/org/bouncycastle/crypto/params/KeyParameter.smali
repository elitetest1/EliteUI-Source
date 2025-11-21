.class public Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist key:[B


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public blacklist copyTo([BII)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v0, p0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "len"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getKey()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object p0
.end method

.method public blacklist getKeyLength()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length p0, p0

    return p0
.end method

.method public blacklist reverse()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->reverse([B[B)V

    return-object v0
.end method

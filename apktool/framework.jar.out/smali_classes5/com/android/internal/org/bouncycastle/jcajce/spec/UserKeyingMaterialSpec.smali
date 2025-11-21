.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;
.super Ljava/lang/Object;
.source "UserKeyingMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist salt:[B

.field private final blacklist userKeyingMaterial:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B[B)V

    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->salt:[B

    return-void
.end method


# virtual methods
.method public blacklist getSalt()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->salt:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUserKeyingMaterial()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

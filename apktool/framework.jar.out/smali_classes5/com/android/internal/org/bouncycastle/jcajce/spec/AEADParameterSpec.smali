.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
.super Ljavax/crypto/spec/IvParameterSpec;
.source "AEADParameterSpec.java"


# instance fields
.field private final blacklist associatedData:[B

.field private final blacklist macSizeInBits:I


# direct methods
.method public constructor blacklist <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI[B)V

    return-void
.end method

.method public constructor blacklist <init>([BI[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->macSizeInBits:I

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->associatedData:[B

    return-void
.end method


# virtual methods
.method public blacklist getAssociatedData()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->associatedData:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMacSizeInBits()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->macSizeInBits:I

    return p0
.end method

.method public blacklist getNonce()[B
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getIV()[B

    move-result-object p0

    return-object p0
.end method

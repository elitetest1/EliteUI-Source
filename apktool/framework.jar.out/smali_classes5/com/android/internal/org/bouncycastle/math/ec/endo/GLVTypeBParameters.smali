.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final blacklist beta:Ljava/math/BigInteger;

.field protected final blacklist lambda:Ljava/math/BigInteger;

.field protected final blacklist splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-void
.end method


# virtual methods
.method public blacklist getBeta()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getLambda()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-object p0
.end method

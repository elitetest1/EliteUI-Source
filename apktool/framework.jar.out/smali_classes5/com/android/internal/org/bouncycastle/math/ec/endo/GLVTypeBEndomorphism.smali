.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;
.super Ljava/lang/Object;
.source "GLVTypeBEndomorphism.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field protected final blacklist parameters:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

.field protected final blacklist pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXPointMap;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getBeta()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXPointMap;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    return-void
.end method


# virtual methods
.method public blacklist decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->decomposeScalar(Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPointMap()Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    return-object p0
.end method

.method public blacklist hasEfficientPointMap()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

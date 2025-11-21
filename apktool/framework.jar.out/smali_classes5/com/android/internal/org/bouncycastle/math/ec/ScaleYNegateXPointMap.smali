.class public Lcom/android/internal/org/bouncycastle/math/ec/ScaleYNegateXPointMap;
.super Ljava/lang/Object;
.source "ScaleYNegateXPointMap.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final blacklist scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleYNegateXPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public blacklist map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleYNegateXPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleYNegateX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

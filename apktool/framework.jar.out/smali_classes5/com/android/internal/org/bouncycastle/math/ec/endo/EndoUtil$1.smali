.class Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;
.super Ljava/lang/Object;
.source "EndoUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field final synthetic blacklist val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object p0

    if-ne p0, p2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getMappedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .locals 1

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;-><init>()V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setMappedPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    return-object v0
.end method

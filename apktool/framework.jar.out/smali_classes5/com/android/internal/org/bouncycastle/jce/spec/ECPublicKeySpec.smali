.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPublicKeySpec.java"


# instance fields
.field private blacklist q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public blacklist getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

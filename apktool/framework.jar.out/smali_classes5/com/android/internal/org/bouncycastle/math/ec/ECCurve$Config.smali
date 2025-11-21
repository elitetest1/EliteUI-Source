.class public Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;ILcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    return-void
.end method


# virtual methods
.method public blacklist create()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    iput v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    iput-object p0, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "implementation returned current curve"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setCoordinateSystem(I)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    return-object p0
.end method

.method public blacklist setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object p0
.end method

.method public blacklist setMultiplier(Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    return-object p0
.end method

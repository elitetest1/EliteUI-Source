.class public final Landroid/os/VibrationEffect$BasicEnvelopeBuilder;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicEnvelopeBuilder"
.end annotation


# instance fields
.field private blacklist mLastIntensity:F

.field private blacklist mLastSharpness:F

.field private blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/BasicPwleSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastIntensity:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    return-void
.end method


# virtual methods
.method public whitelist addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;
    .locals 8

    iget v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    :cond_0
    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/vibrator/BasicPwleSegment;

    iget v2, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastIntensity:F

    iget v4, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    move v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastIntensity:F

    iput v5, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    return-object p0
.end method

.method public whitelist build()Landroid/os/VibrationEffect;
    .locals 2

    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/BasicPwleSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object p0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Basic envelope effects must end at a zero intensity control point."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "BasicEnvelopeBuilder must have at least one control point to build."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;
    .locals 9

    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/BasicPwleSegment;

    iget-object v1, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/BasicPwleSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getStartIntensity()F

    move-result v3

    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v4

    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v6

    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v7

    move v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

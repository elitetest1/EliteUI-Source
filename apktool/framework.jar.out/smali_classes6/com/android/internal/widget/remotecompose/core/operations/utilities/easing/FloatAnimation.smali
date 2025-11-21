.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "FloatAnimation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field private blacklist mDirectionalSnap:I

.field private blacklist mDuration:F

.field blacklist mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

.field private blacklist mInitialValue:F

.field blacklist mOffset:F

.field private blacklist mPropagate:Z

.field blacklist mSpec:[F

.field private blacklist mTargetValue:F

.field private blacklist mWrap:F


# direct methods
.method public constructor blacklist <init>(IF[FFF)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    return-void
.end method

.method public varargs constructor blacklist <init>([F)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    return-void
.end method

.method private blacklist create(I[FII)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    return-void

    :pswitch_2
    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    return-void

    :pswitch_3
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;-><init>([FII)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    return-void

    :pswitch_4
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    aget p4, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    add-int/lit8 p3, p3, 0x3

    aget p2, p2, p3

    invoke-direct {p1, p4, v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    return-void

    :pswitch_5
    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist packToFloatArray(FI[FFF)[F
    .locals 5

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    if-eq p1, v1, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-nez p2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    array-length v3, p2

    :goto_0
    add-int/2addr v0, v3

    :cond_3
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_6

    if-lez v0, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    :cond_7
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    :cond_9
    new-array v3, v0, [F

    if-nez p2, :cond_a

    move v4, v2

    goto :goto_1

    :cond_a
    array-length v4, p2

    :goto_1
    if-lez v0, :cond_b

    aput p0, v3, v2

    move p0, v1

    goto :goto_2

    :cond_b
    move p0, v2

    :goto_2
    if-le v0, v1, :cond_d

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_3

    :cond_c
    const/4 v1, 0x2

    :goto_3
    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, p0, 0x1

    shl-int/lit8 v1, v4, 0x10

    or-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    aput p1, v3, p0

    move p0, v0

    :cond_d
    if-lez v4, :cond_e

    array-length p1, p2

    invoke-static {p2, v2, v3, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    add-int/2addr p0, p1

    :cond_e
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_f

    add-int/lit8 p1, p0, 0x1

    aput p3, v3, p0

    move p0, p1

    :cond_f
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_10

    aput p4, v3, p0

    :cond_10
    return-object v3
.end method

.method private blacklist setScaleOffset()V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    return-void
.end method

.method public static blacklist unpackAnimationToString([F)Ljava/lang/String;
    .locals 13

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    aget v0, p0, v1

    :goto_0
    array-length v2, p0

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v2, v6, :cond_6

    aget v2, p0, v6

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    and-int/lit16 v7, v2, 0xff

    shr-int/lit8 v8, v2, 0x8

    and-int/lit8 v9, v8, 0x1

    if-lez v9, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    and-int/2addr v8, v5

    if-lez v8, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    shr-int/lit8 v10, v2, 0xa

    and-int/2addr v10, v4

    shr-int/lit8 v11, v2, 0xc

    and-int/2addr v11, v6

    if-lez v11, :cond_3

    move v1, v6

    :cond_3
    shr-int/lit8 v2, v2, 0x10

    const v6, 0xffff

    and-int/2addr v2, v6

    add-int/lit8 v6, v2, 0x2

    if-eqz v8, :cond_4

    add-int/lit8 v8, v2, 0x3

    aget v6, p0, v6

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    if-eqz v9, :cond_5

    aget v3, p0, v6

    :cond_5
    move v6, v3

    move v3, v1

    move v1, v7

    goto :goto_4

    :cond_6
    move v2, v1

    move v10, v2

    move v6, v3

    move v8, v6

    move v3, v10

    :goto_4
    const-string v7, " "

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto/16 :goto_6

    :pswitch_1
    const-string p0, "EASE_OUT_ELASTIC"

    goto/16 :goto_6

    :pswitch_2
    const-string p0, "EASE_OUT_BOUNCE"

    goto/16 :goto_6

    :pswitch_3
    const-string v1, "SPLINE_CUSTOM ("

    move v4, v5

    :goto_5
    add-int v9, v5, v2

    if-ge v4, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p0, v4

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CUBIC_CUSTOM ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p0, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    aget p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :pswitch_5
    const-string p0, "CUBIC_OVERSHOOT"

    goto :goto_6

    :pswitch_6
    const-string p0, "CUBIC_ANTICIPATE"

    goto :goto_6

    :pswitch_7
    const-string p0, "CUBIC_LINEAR"

    goto :goto_6

    :pswitch_8
    const-string p0, "CUBIC_DECELERATE"

    goto :goto_6

    :pswitch_9
    const-string p0, "CUBIC_ACCELERATE"

    goto :goto_6

    :pswitch_a
    const-string p0, "CUBIC_STANDARD"

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " init ="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " wrap ="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    if-eqz v10, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " directionalSnap="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    if-eqz v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " propagate"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_b
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist wrap(FF)F
    .locals 1

    rem-float/2addr p1, p0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float/2addr p1, p0

    :cond_0
    return p1
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->get(F)F

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v0, p0

    mul-float/2addr p1, v0

    add-float/2addr p1, p0

    return p1
.end method

.method public blacklist getDiff(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getDiff(F)F

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v0, p0

    mul-float/2addr p1, v0

    return p1
.end method

.method public blacklist getDuration()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    return p0
.end method

.method public blacklist getInitialValue()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    return p0
.end method

.method public blacklist getTargetValue()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return p0
.end method

.method public blacklist isPropagate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    return p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "FloatAnimation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "initialValue"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "targetValue"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "easing"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist setAnimationDescription([F)V
    .locals 8

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    aget v0, p1, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    array-length v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v0, v3, :cond_6

    aget v0, p1, v3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    shr-int/lit8 v4, v0, 0x8

    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    and-int/2addr v4, v2

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    shr-int/lit8 v6, v0, 0xa

    and-int/lit8 v6, v6, 0x3

    shr-int/lit8 v7, v0, 0xc

    and-int/2addr v7, v3

    if-lez v7, :cond_3

    move v1, v3

    :cond_3
    shr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x2

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    add-int/lit8 v7, v0, 0x3

    aget v3, v4, v3

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    move v3, v7

    :cond_4
    if-eqz v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v3, v4, v3

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    :cond_5
    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    move v1, v0

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->create(I[FII)V

    return-void
.end method

.method public blacklist setInitialValue(F)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    return-void
.end method

.method public blacklist setTargetValue(F)V
    .locals 3

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    :cond_0
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrapDistance(FFF)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    goto :goto_0

    :cond_1
    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    :cond_3
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  % "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method blacklist wrapDistance(FFF)F
    .locals 0

    sub-float/2addr p3, p2

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p3, p0

    neg-float p0, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    add-float/2addr p3, p1

    return p3

    :cond_0
    div-float p0, p1, p2

    cmpl-float p0, p3, p0

    if-lez p0, :cond_1

    sub-float/2addr p3, p1

    :cond_1
    return p3
.end method

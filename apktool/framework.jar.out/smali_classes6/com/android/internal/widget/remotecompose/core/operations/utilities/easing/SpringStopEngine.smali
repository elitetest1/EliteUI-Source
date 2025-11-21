.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;
.super Ljava/lang/Object;
.source "SpringStopEngine.java"


# static fields
.field private static final blacklist UNSET:D = 1.7976931348623157E308


# instance fields
.field private blacklist mBoundaryMode:I

.field blacklist mDamping:D

.field private blacklist mInitialized:Z

.field private blacklist mLastTime:F

.field private blacklist mLastVelocity:D

.field private blacklist mMass:F

.field private blacklist mPos:F

.field private blacklist mStiffness:D

.field private blacklist mStopThreshold:F

.field private blacklist mTargetPos:D

.field private blacklist mV:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    return-void
.end method

.method public constructor blacklist <init>([F)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    aget v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x3

    aget v5, p1, v0

    const/4 v0, 0x4

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->springParameters(FFFFI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, " parameter[0] should be 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist compute(D)V
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-wide v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    iget-wide v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v5, v5

    div-double v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v5, v5, p1

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    div-double/2addr v7, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v5

    double-to-int v5, v7

    int-to-double v6, v5

    div-double v6, p1, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_3

    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v10, v9

    iget-wide v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v10, v12

    neg-double v14, v1

    mul-double/2addr v14, v10

    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    move-wide/from16 v16, v1

    float-to-double v1, v10

    mul-double/2addr v1, v3

    sub-double/2addr v14, v1

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    move-wide/from16 v18, v3

    float-to-double v2, v1

    div-double/2addr v14, v2

    float-to-double v2, v10

    mul-double/2addr v14, v6

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v14, v14, v20

    add-double/2addr v2, v14

    float-to-double v14, v9

    mul-double v22, v6, v2

    div-double v22, v22, v20

    add-double v14, v14, v22

    sub-double/2addr v14, v12

    neg-double v11, v14

    mul-double v11, v11, v16

    mul-double v2, v2, v18

    sub-double/2addr v11, v2

    float-to-double v1, v1

    div-double/2addr v11, v1

    mul-double/2addr v11, v6

    float-to-double v1, v10

    div-double v3, v11, v20

    add-double/2addr v1, v3

    double-to-float v3, v11

    add-float/2addr v10, v3

    iput v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    mul-double/2addr v1, v6

    double-to-float v1, v1

    add-float/2addr v9, v1

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    if-lez v1, :cond_2

    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    neg-float v2, v9

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    neg-float v2, v10

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    :cond_1
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    neg-float v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->compute(D)V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    double-to-float p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    :cond_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    return p0
.end method

.method public blacklist getAcceleration()F
    .locals 8

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v4, v6

    neg-double v0, v0

    mul-double/2addr v0, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    div-float/2addr v0, p0

    return v0
.end method

.method public blacklist getTargetValue()F
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    double-to-float p0, v0

    return p0
.end method

.method public blacklist getVelocity()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getVelocity(F)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    return p0
.end method

.method public blacklist isStopped()Z
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v4, v4

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v6, v6

    mul-double/2addr v4, v4

    mul-double/2addr v4, v6

    mul-double v6, v2, v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStopThreshold:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist log(Ljava/lang/String;)V
    .locals 2

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setInitialValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    return-void
.end method

.method public blacklist setTargetValue(F)V
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    return-void
.end method

.method public blacklist springParameters(FFFFI)V
    .locals 2

    float-to-double v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    float-to-double p2, p2

    iput-wide p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStopThreshold:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    return-void
.end method

.method public blacklist springStart(FFF)V
    .locals 2

    float-to-double v0, p2

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double p1, p3

    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastVelocity:D

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    return-void
.end method

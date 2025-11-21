.class public final Lcom/android/modules/expresslog/Histogram$UniformOptions;
.super Ljava/lang/Object;
.source "Histogram.java"

# interfaces
.implements Lcom/android/modules/expresslog/Histogram$BinOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/expresslog/Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniformOptions"
.end annotation


# instance fields
.field private final blacklist mBinCount:I

.field private final blacklist mBinSize:F

.field private final blacklist mExclusiveMaxValue:F

.field private final blacklist mMinValue:F


# direct methods
.method public constructor blacklist <init>(IFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    cmpg-float v0, p3, p2

    if-lez v0, :cond_0

    iput p2, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mMinValue:F

    iput p3, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mExclusiveMaxValue:F

    sub-float/2addr p3, p2

    int-to-float p2, p1

    div-float/2addr p3, p2

    iput p3, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mBinSize:F

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mBinCount:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bins range invalid (maxValue < minValue)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bin count should be positive number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getBinForSample(F)I
    .locals 2

    iget v0, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mMinValue:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mExclusiveMaxValue:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget p0, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mBinCount:I

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1
    sub-float/2addr p1, v0

    iget p0, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mBinSize:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public blacklist getBinsCount()I
    .locals 0

    iget p0, p0, Lcom/android/modules/expresslog/Histogram$UniformOptions;->mBinCount:I

    return p0
.end method

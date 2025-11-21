.class public final Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;
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
    name = "ScaledRangeOptions"
.end annotation


# instance fields
.field final blacklist mBins:[J


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p3, v1

    if-ltz v2, :cond_1

    cmpg-float v1, p4, v1

    if-ltz v1, :cond_0

    add-int/2addr p1, v0

    invoke-static {p1, p2, p3, p4}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->initBins(IIFF)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scaled factor invalid (should be 1.f at minimum)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "First bin width invalid (should be 1.f at minimum)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bin count should be positive number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist initBins(IIFF)[J
    .locals 6

    new-array v0, p0, [J

    const/4 v1, 0x0

    int-to-long v2, p1

    aput-wide v2, v0, v1

    float-to-double p1, p2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    add-double/2addr v2, p1

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_0

    double-to-long v2, v2

    aput-wide v2, v0, v1

    float-to-double v2, p3

    mul-double/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempted to create a bucket larger than maxint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private static blacklist lower_bound([JJ)I
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p0

    if-gez p0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    :cond_0
    return p0
.end method


# virtual methods
.method public blacklist getBinForSample(F)I
    .locals 3

    iget-object p0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    long-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    long-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    array-length p0, p0

    return p0

    :cond_1
    float-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->lower_bound([JJ)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist getBinsCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

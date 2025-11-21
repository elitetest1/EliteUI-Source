.class public final Lcom/android/modules/expresslog/Histogram;
.super Ljava/lang/Object;
.source "Histogram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/expresslog/Histogram$BinOptions;,
        Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;,
        Lcom/android/modules/expresslog/Histogram$UniformOptions;
    }
.end annotation


# instance fields
.field private final blacklist mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

.field private final blacklist mMetricId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/modules/expresslog/Histogram;->mMetricId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/modules/expresslog/Histogram;->mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

    return-void
.end method


# virtual methods
.method public blacklist logSample(F)V
    .locals 8

    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram;->mMetricId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/modules/expresslog/Histogram;->mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

    invoke-interface {p0, p1}, Lcom/android/modules/expresslog/Histogram$BinOptions;->getBinForSample(F)I

    move-result v7

    const/16 v2, 0x251

    const-wide/16 v5, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJI)V

    :cond_0
    return-void
.end method

.method public blacklist logSampleWithUid(IF)V
    .locals 9

    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram;->mMetricId:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/modules/expresslog/Histogram;->mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

    invoke-interface {p0, p2}, Lcom/android/modules/expresslog/Histogram$BinOptions;->getBinForSample(F)I

    move-result v7

    const/16 v2, 0x292

    const-wide/16 v5, 0x1

    move v8, p1

    invoke-static/range {v2 .. v8}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJII)V

    :cond_0
    return-void
.end method

.class public final Lcom/android/modules/expresslog/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist logIncrement(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    return-void
.end method

.method public static blacklist logIncrement(Ljava/lang/String;J)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/16 p0, 0x210

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJ)V

    :cond_0
    return-void
.end method

.method public static blacklist logIncrementWithUid(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static blacklist logIncrementWithUid(Ljava/lang/String;IJ)V
    .locals 7

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const/16 v1, 0x284

    move v6, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJI)V

    :cond_0
    return-void
.end method

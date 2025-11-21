.class public Lcom/samsung/android/media/SemQuramDngSrational;
.super Ljava/lang/Object;
.source "SemQuramDngSrational.java"


# instance fields
.field blacklist d:J

.field blacklist n:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getDenominator()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramDngSrational;->d:J

    return-wide v0
.end method

.method public greylist getNumerator()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramDngSrational;->n:J

    return-wide v0
.end method

.method public blacklist getReal32()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramDngSrational;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    long-to-float p0, v0

    return p0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/media/SemQuramDngSrational;->n:J

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public blacklist getReal64()D
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramDngSrational;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    long-to-double v0, v0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/media/SemQuramDngSrational;->n:J

    div-long/2addr v2, v0

    long-to-double v0, v2

    return-wide v0
.end method

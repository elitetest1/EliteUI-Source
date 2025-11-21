.class public final Landroid/hardware/camera2/params/OisSample;
.super Ljava/lang/Object;
.source "OisSample.java"


# instance fields
.field private final greylist-max-o mTimestampNs:J

.field private final greylist-max-o mXShift:F

.field private final greylist-max-o mYShift:F


# direct methods
.method public constructor whitelist <init>(JFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    const-string p1, "xShift must be finite"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    const-string p1, "yShift must be finite"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/OisSample;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/camera2/params/OisSample;

    iget-wide v2, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    iget-wide v4, p1, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    iget v3, p1, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    iget p1, p1, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    return-wide v0
.end method

.method public whitelist getXshift()F
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    return p0
.end method

.method public whitelist getYshift()F
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    long-to-float v0, v0

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    iget v2, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    int-to-float v0, v0

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v2, v4, v3

    aput p0, v4, v1

    const/4 p0, 0x2

    aput v0, v4, p0

    invoke-static {v4}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "OisSample{timestamp:%d, shift_x:%f, shift_y:%f}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Landroid/hardware/camera2/params/LensIntrinsicsSample;
.super Ljava/lang/Object;
.source "LensIntrinsicsSample.java"


# instance fields
.field private final blacklist mLensIntrinsics:[F

.field private final blacklist mTimestampNs:J


# direct methods
.method public constructor whitelist <init>(J[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    array-length p1, p3

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-object p3, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

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
    instance-of v2, p1, Landroid/hardware/camera2/params/LensIntrinsicsSample;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/camera2/params/LensIntrinsicsSample;

    iget-wide v2, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    iget-wide v4, p1, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    invoke-virtual {p1}, Landroid/hardware/camera2/params/LensIntrinsicsSample;->getLensIntrinsics()[F

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public whitelist getLensIntrinsics()[F
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    return-object p0
.end method

.method public whitelist getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-wide v0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    long-to-float v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    iget-object p0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    filled-new-array {p0, v0}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "LensIntrinsicsSample{timestamp:%d, sample:%s}"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

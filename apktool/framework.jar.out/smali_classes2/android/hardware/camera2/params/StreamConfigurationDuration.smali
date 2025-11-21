.class public final Landroid/hardware/camera2/params/StreamConfigurationDuration;
.super Ljava/lang/Object;
.source "StreamConfigurationDuration.java"


# instance fields
.field private final greylist-max-o mDurationNs:J

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mWidth:I


# direct methods
.method public constructor greylist-max-o <init>(IIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    const-string p1, "width must be positive"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    const-string p1, "height must be positive"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    const-string p1, "durationNs must be non-negative"

    invoke-static {p4, p5, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    iget-wide p0, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public greylist-max-o getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    return-wide v0
.end method

.method public final greylist-max-o getFormat()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    return p0
.end method

.method public greylist-max-o getHeight()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    return p0
.end method

.method public greylist-max-o getSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    iget-wide v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    long-to-int p0, v3

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    filled-new-array {v0, v1, v2, p0, v3}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

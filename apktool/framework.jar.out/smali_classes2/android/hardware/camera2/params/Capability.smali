.class public final Landroid/hardware/camera2/params/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# static fields
.field public static final blacklist COUNT:I = 0x3


# instance fields
.field private final blacklist mMaxStreamingSize:Landroid/util/Size;

.field private final blacklist mMode:I

.field private final blacklist mZoomRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILandroid/util/Size;Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-string v0, "maxStreamingSize.getWidth() must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    const-string v0, "maxStreamingSize.getHeight() must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iput-object p2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string p2, "zoomRatioRange.getLower() must be positive"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string p2, "zoomRatioRange.getUpper() must be positive"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iput-object p3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "zoomRatioRange.getLower() "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is greater than zoomRatioRange.getUpper() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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
    instance-of v2, p1, Landroid/hardware/camera2/params/Capability;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/camera2/params/Capability;

    iget v2, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    iget v3, p1, Landroid/hardware/camera2/params/Capability;->mMode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    iget-object p1, p1, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public whitelist getMaxStreamingSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    return-object p0
.end method

.method public whitelist getMode()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    return p0
.end method

.method public whitelist getZoomRatioRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object p0, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v4, 0x5

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    const/4 v0, 0x2

    aput v2, v4, v0

    const/4 v0, 0x3

    aput v3, v4, v0

    const/4 v0, 0x4

    aput p0, v4, v0

    invoke-static {v4}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    iget-object p0, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(mode:%d, maxStreamingSize:%d x %d, zoomRatio: %f-%f)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

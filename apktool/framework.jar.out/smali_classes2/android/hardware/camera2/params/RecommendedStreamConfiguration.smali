.class public final Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
.super Landroid/hardware/camera2/params/StreamConfiguration;
.source "RecommendedStreamConfiguration.java"


# instance fields
.field private final blacklist mUsecaseBitmap:I


# direct methods
.method public constructor blacklist <init>(IIIZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    iput p5, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

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
    instance-of v2, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v3, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v3, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget v3, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    iget v3, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget-boolean p1, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public blacklist getUsecaseBitmap()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget-boolean v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget p0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    filled-new-array {v0, v1, v2, v3, p0}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

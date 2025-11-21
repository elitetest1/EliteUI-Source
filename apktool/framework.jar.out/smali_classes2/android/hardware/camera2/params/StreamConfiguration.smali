.class public Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "StreamConfiguration.java"


# instance fields
.field protected greylist-max-o mFormat:I

.field protected greylist-max-o mHeight:I

.field protected greylist-max-o mInput:Z

.field protected greylist-max-o mWidth:I


# direct methods
.method public constructor greylist-max-o <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    const-string p1, "width must be positive"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    const-string p1, "height must be positive"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

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
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    iget-boolean p1, p1, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final greylist-max-o getFormat()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    return p0
.end method

.method public greylist-max-o getHeight()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    return p0
.end method

.method public greylist-max-o getSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public greylist-max-o isInput()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return p0
.end method

.method public greylist-max-o isOutput()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-void
.end method


# virtual methods
.method public greylist-max-o setBaseType(I)V
    .locals 0

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    move-result p1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    return-void
.end method

.method public greylist setBytesPerSample(I)V
    .locals 0

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public greylist-max-o setDimensionCount(I)V
    .locals 0

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    return-void
.end method

.method public greylist-max-o setDimensions(I)V
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public greylist setDimensions(II)V
    .locals 0

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public greylist-max-o setDimensions(III)V
    .locals 0

    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public greylist-max-o setDimensions([I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public greylist-max-o setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    :cond_0
    iget-object p0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist-max-o setObjectClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    return-void
.end method

.method public greylist-max-o setTarget(I)V
    .locals 0

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    return-void
.end method

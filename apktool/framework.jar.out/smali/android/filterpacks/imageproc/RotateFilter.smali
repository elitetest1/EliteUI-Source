.class public Landroid/filterpacks/imageproc/RotateFilter;
.super Landroid/filterfw/core/Filter;
.source "RotateFilter.java"


# instance fields
.field private blacklist mAngle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "angle"
    .end annotation
.end field

.field private blacklist mHeight:I

.field private blacklist mOutputHeight:I

.field private blacklist mOutputWidth:I

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x280

    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    return-void
.end method

.method private blacklist updateParameters()V
    .locals 11

    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit8 v1, v0, 0x5a

    if-nez v1, :cond_3

    rem-int/lit16 v1, v0, 0xb4

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    rem-int/lit16 v0, v0, 0x168

    if-nez v0, :cond_0

    move v2, v4

    :cond_0
    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    :goto_1
    new-instance v0, Landroid/filterfw/geometry/Point;

    neg-float v1, v3

    add-float v5, v1, v2

    add-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    neg-float v7, v2

    sub-float v8, v7, v3

    add-float/2addr v8, v4

    mul-float/2addr v8, v6

    invoke-direct {v0, v5, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v5, Landroid/filterfw/geometry/Point;

    add-float v8, v3, v2

    add-float/2addr v8, v4

    mul-float/2addr v8, v6

    sub-float v9, v2, v3

    add-float/2addr v9, v4

    mul-float/2addr v9, v6

    invoke-direct {v5, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v9, Landroid/filterfw/geometry/Point;

    sub-float/2addr v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v6

    add-float/2addr v7, v3

    add-float/2addr v7, v4

    mul-float/2addr v7, v6

    invoke-direct {v9, v1, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v1, Landroid/filterfw/geometry/Point;

    sub-float/2addr v3, v2

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    invoke-direct {v1, v3, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Quad;

    invoke-direct {v2, v0, v5, v9, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iget-object p0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast p0, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {p0, v2}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "degree has to be multiply of 90."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    iget-object p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    :cond_0
    return-void
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    iput-object p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    iput p2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Filter Sharpen does not support frames of target "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 5

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/RotateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/RotateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    :cond_3
    iget v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    iget-object v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/imageproc/RotateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/RotateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

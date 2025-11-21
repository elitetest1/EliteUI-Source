.class public Landroid/filterpacks/base/GLTextureSource;
.super Landroid/filterfw/core/Filter;
.source "GLTextureSource.java"


# instance fields
.field private blacklist mFrame:Landroid/filterfw/core/Frame;

.field private blacklist mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private blacklist mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private blacklist mTexId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "texId"
    .end annotation
.end field

.field private blacklist mTimestamp:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timestamp"
    .end annotation
.end field

.field private blacklist mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    iget-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/filterpacks/base/GLTextureSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/base/GLTextureSource;->mHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    iget v1, p0, Landroid/filterpacks/base/GLTextureSource;->mTexId:I

    int-to-long v1, v1

    const/16 v3, 0x64

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    iget-wide v0, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    :cond_0
    iget-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    const-string v0, "frame"

    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/base/GLTextureSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    iget-boolean p1, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/GLTextureSource;->closeOutputPort(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/GLTextureSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    iget-object p0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method

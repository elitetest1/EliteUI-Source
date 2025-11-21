.class public Landroid/filterpacks/base/FrameBranch;
.super Landroid/filterfw/core/Filter;
.source "FrameBranch.java"


# instance fields
.field private blacklist mNumberOfOutputs:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "outputs"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    iput p1, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    const-string p1, "in"

    invoke-virtual {p0, p1}, Landroid/filterpacks/base/FrameBranch;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "out"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/filterpacks/base/FrameBranch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setupPorts()V
    .locals 4

    const-string v0, "in"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/FrameBranch;->addInputPort(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "out"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/filterpacks/base/FrameBranch;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

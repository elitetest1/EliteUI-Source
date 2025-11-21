.class public final Lcom/samsung/android/graphics/RenderEffectImageFilter;
.super Ljava/lang/Object;
.source "RenderEffectImageFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RenderEffectImageFilter"


# instance fields
.field private final blacklist assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

.field private blacklist renderNode:Landroid/graphics/RenderNode;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RenderEffectImageFilter"

    const-string v1, "Use RenderEffectImageFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    invoke-direct {v0}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "RenderEffectImageFilterNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    return-void
.end method

.method private static blacklist clamp(FFF)F
    .locals 0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist build()Landroid/graphics/RenderEffect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->updateParams()V

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->getRenderEffect()Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->clear()V

    return-void
.end method

.method public blacklist getRenderNode(Landroid/graphics/Bitmap;)Landroid/graphics/RenderNode;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    iget-object v0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    iget-object p1, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->build()Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->renderNode:Landroid/graphics/RenderNode;

    return-object p0
.end method

.method public final blacklist printParams()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->printParams()V

    return-void
.end method

.method public final blacklist setBlurPreset(I)V
    .locals 3

    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object p1

    const-string v0, "RenderEffectImageFilter"

    if-nez p1, :cond_0

    const-string p0, "BlurPresetAttrs was null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v1, p1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const-string p0, "BlurPreset size is a mismatch with RenderEffectImageFilter!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->setBlurRadius(F)V

    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->setProportionalSaturation(F)V

    const/4 v0, 0x2

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->setCurveLevel(F)V

    const/4 v0, 0x3

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->setCurveMinX(F)V

    const/4 v0, 0x4

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->setCurveMaxX(F)V

    const/4 v0, 0x5

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->setCurveMinY(F)V

    const/4 v0, 0x6

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->setCurveMaxY(F)V

    return-void
.end method

.method public final blacklist setBlurRadius(F)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->clamp(FFF)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setCurveLevel(F)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->clamp(FFF)F

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setCurveMaxX(F)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->clamp(FFF)F

    move-result p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setCurveMaxY(F)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->clamp(FFF)F

    move-result p1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setCurveMinX(F)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->clamp(FFF)F

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setCurveMinY(F)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->clamp(FFF)F

    move-result p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setDither(Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setProportionalSaturation(F)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/RenderEffectImageFilter;->clamp(FFF)F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setParam(IF)V

    return-void
.end method

.method public final blacklist setSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->setSize(II)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/graphics/RenderEffectImageFilter;->assembler:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->getShaderCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RenderEffectImageFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

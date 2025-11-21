.class public final Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;
.super Lcom/samsung/android/graphics/imagefilter/FilterEffect;
.source "ProSatuationFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProSatuationFilter"

.field private static final blacklist declareCode:Ljava/lang/String; = "uniform float uProSaturation;\n"

.field private static final blacklist mainCode:Ljava/lang/String; = "{\n   float epsilon = 0.0001;\n   float alpha = sampledColor.a;\n   float maxChn = max(max(sampledColor.r, sampledColor.g), sampledColor.b);\n   float minChn = min(min(sampledColor.r, sampledColor.g), sampledColor.b);\n   float clampSaturation = min(uProSaturation, maxChn / max((maxChn - minChn), epsilon));\n   sampledColor.rgb = vec3( min(maxChn-(maxChn - sampledColor.r) * clampSaturation, 1.0),        min(maxChn - (maxChn - sampledColor.g) * clampSaturation, 1.0),       min(maxChn - (maxChn - sampledColor.b) * clampSaturation, 1.0));\n   sampledColor.a = alpha; \n}\n"


# instance fields
.field private blacklist saturation:F

.field private final blacklist shader:Landroid/graphics/RuntimeShader;


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/graphics/imagefilter/FilterEffect;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->setFilterType(I)V

    new-instance v0, Landroid/graphics/RuntimeShader;

    const-string/jumbo v1, "uniform float uProSaturation;\n"

    const-string/jumbo v2, "{\n   float epsilon = 0.0001;\n   float alpha = sampledColor.a;\n   float maxChn = max(max(sampledColor.r, sampledColor.g), sampledColor.b);\n   float minChn = min(min(sampledColor.r, sampledColor.g), sampledColor.b);\n   float clampSaturation = min(uProSaturation, maxChn / max((maxChn - minChn), epsilon));\n   sampledColor.rgb = vec3( min(maxChn-(maxChn - sampledColor.r) * clampSaturation, 1.0),        min(maxChn - (maxChn - sampledColor.g) * clampSaturation, 1.0),       min(maxChn - (maxChn - sampledColor.b) * clampSaturation, 1.0));\n   sampledColor.a = alpha; \n}\n"

    const-string v3, ""

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->assembleShaderCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->shader:Landroid/graphics/RuntimeShader;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->saturation:F

    return-void
.end method


# virtual methods
.method public blacklist getDeclareShaderCode()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uniform float uProSaturation;\n"

    return-object p0
.end method

.method public blacklist getMainShaderCode()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "{\n   float epsilon = 0.0001;\n   float alpha = sampledColor.a;\n   float maxChn = max(max(sampledColor.r, sampledColor.g), sampledColor.b);\n   float minChn = min(min(sampledColor.r, sampledColor.g), sampledColor.b);\n   float clampSaturation = min(uProSaturation, maxChn / max((maxChn - minChn), epsilon));\n   sampledColor.rgb = vec3( min(maxChn-(maxChn - sampledColor.r) * clampSaturation, 1.0),        min(maxChn - (maxChn - sampledColor.g) * clampSaturation, 1.0),       min(maxChn - (maxChn - sampledColor.b) * clampSaturation, 1.0));\n   sampledColor.a = alpha; \n}\n"

    return-object p0
.end method

.method public blacklist getParam(I)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->saturation:F

    return p0
.end method

.method public blacklist getShader()Landroid/graphics/RuntimeShader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->shader:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public blacklist setParam(IF)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->saturation:F

    return-void
.end method

.method public blacklist updateShader(Landroid/graphics/RuntimeShader;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->saturation:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/ProSatuationFilter;->saturation:F

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    const-string/jumbo p0, "uProSaturation"

    invoke-virtual {p1, p0, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

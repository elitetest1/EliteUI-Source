.class public final Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;
.super Lcom/samsung/android/graphics/imagefilter/FilterEffect;
.source "DitherFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DitherFilter"

.field private static final blacklist declareCode:Ljava/lang/String; = "uniform int enable;\n"

.field private static final blacklist functionCode:Ljava/lang/String; = "float random(vec2 st) { \n   return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);\n}\nfloat n2rand_faster(vec2 n, float k) {\n     float nrnd0 = random( n );\n     float orig = k * (nrnd0 * 2.0 - 1.0);\n     nrnd0 = orig * inversesqrt(abs(orig));\n     nrnd0 = max(-k, nrnd0);\n     nrnd0 = k * (nrnd0 - sign(orig));\n     return nrnd0;\n}\nvec3 randomDither(vec2 uv, vec3 col) {\n    float bitError = 1.0/255.0;\n    float r = n2rand_faster(uv, 1.0);\n    return col + vec3(r * bitError);\n}\n"

.field private static final blacklist mainCode:Ljava/lang/String; = "{\n    if (enable == 1) {\n        vec3 bandedColor = sampledColor.rgb;\n        vec3 ditheredColor = randomDither(fragCoord, bandedColor.rgb);\n        sampledColor = vec4(ditheredColor, sampledColor.a);\n    }\n}\n"


# instance fields
.field private blacklist enable:I

.field private final blacklist shader:Landroid/graphics/RuntimeShader;


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/graphics/imagefilter/FilterEffect;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->setFilterType(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->enable:I

    new-instance v0, Landroid/graphics/RuntimeShader;

    const-string/jumbo v1, "uniform int enable;\n"

    const-string/jumbo v2, "{\n    if (enable == 1) {\n        vec3 bandedColor = sampledColor.rgb;\n        vec3 ditheredColor = randomDither(fragCoord, bandedColor.rgb);\n        sampledColor = vec4(ditheredColor, sampledColor.a);\n    }\n}\n"

    const-string v3, "float random(vec2 st) { \n   return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);\n}\nfloat n2rand_faster(vec2 n, float k) {\n     float nrnd0 = random( n );\n     float orig = k * (nrnd0 * 2.0 - 1.0);\n     nrnd0 = orig * inversesqrt(abs(orig));\n     nrnd0 = max(-k, nrnd0);\n     nrnd0 = k * (nrnd0 - sign(orig));\n     return nrnd0;\n}\nvec3 randomDither(vec2 uv, vec3 col) {\n    float bitError = 1.0/255.0;\n    float r = n2rand_faster(uv, 1.0);\n    return col + vec3(r * bitError);\n}\n"

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->assembleShaderCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->shader:Landroid/graphics/RuntimeShader;

    return-void
.end method


# virtual methods
.method public blacklist getDeclareShaderCode()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uniform int enable;\n"

    return-object p0
.end method

.method public blacklist getFunctionShaderCode()Ljava/lang/String;
    .locals 0

    const-string p0, "float random(vec2 st) { \n   return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);\n}\nfloat n2rand_faster(vec2 n, float k) {\n     float nrnd0 = random( n );\n     float orig = k * (nrnd0 * 2.0 - 1.0);\n     nrnd0 = orig * inversesqrt(abs(orig));\n     nrnd0 = max(-k, nrnd0);\n     nrnd0 = k * (nrnd0 - sign(orig));\n     return nrnd0;\n}\nvec3 randomDither(vec2 uv, vec3 col) {\n    float bitError = 1.0/255.0;\n    float r = n2rand_faster(uv, 1.0);\n    return col + vec3(r * bitError);\n}\n"

    return-object p0
.end method

.method public blacklist getMainShaderCode()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "{\n    if (enable == 1) {\n        vec3 bandedColor = sampledColor.rgb;\n        vec3 ditheredColor = randomDither(fragCoord, bandedColor.rgb);\n        sampledColor = vec4(ditheredColor, sampledColor.a);\n    }\n}\n"

    return-object p0
.end method

.method public blacklist getParam(I)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->enable:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getShader()Landroid/graphics/RuntimeShader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->shader:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public blacklist setParam(IF)V
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->enable:I

    :cond_1
    return-void
.end method

.method public blacklist updateShader(Landroid/graphics/RuntimeShader;)V
    .locals 1

    const-string v0, "enable"

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/DitherFilter;->enable:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    return-void
.end method

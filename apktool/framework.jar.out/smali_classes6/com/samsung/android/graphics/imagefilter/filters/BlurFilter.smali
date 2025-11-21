.class public final Lcom/samsung/android/graphics/imagefilter/filters/BlurFilter;
.super Lcom/samsung/android/graphics/imagefilter/FilterEffect;
.source "BlurFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BlurFilter"


# instance fields
.field private blacklist radius:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/imagefilter/FilterEffect;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/imagefilter/filters/BlurFilter;->setFilterType(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/BlurFilter;->radius:F

    return-void
.end method


# virtual methods
.method public blacklist getMainShaderCode()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public blacklist getParam(I)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/BlurFilter;->radius:F

    return p0
.end method

.method public blacklist getRenderEffect()Landroid/graphics/RenderEffect;
    .locals 1

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/BlurFilter;->radius:F

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, p0, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getShader()Landroid/graphics/RuntimeShader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist setParam(IF)V
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x40200000    # 2.5f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/BlurFilter;->radius:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/BlurFilter;->radius:F

    :cond_0
    return-void
.end method

.method public blacklist updateShader(Landroid/graphics/RuntimeShader;)V
    .locals 0

    return-void
.end method

.method public blacklist useShaderCode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

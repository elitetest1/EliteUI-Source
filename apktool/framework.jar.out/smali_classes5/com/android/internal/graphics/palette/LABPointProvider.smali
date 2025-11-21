.class public Lcom/android/internal/graphics/palette/LABPointProvider;
.super Ljava/lang/Object;
.source "LABPointProvider.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/PointProvider;


# instance fields
.field final blacklist mLabToRgb:Landroid/graphics/ColorSpace$Connector;

.field final blacklist mRgbToLab:Landroid/graphics/ColorSpace$Connector;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    return-void
.end method


# virtual methods
.method public blacklist distance([F[F)F
    .locals 4

    const/4 p0, 0x0

    aget v0, p1, p0

    aget p0, p2, p0

    sub-float/2addr v0, p0

    float-to-double v0, v0

    const/4 p0, 0x1

    aget v2, p1, p0

    aget p0, p2, p0

    sub-float/2addr v2, p0

    float-to-double v2, v2

    const/4 p0, 0x2

    aget p1, p1, p0

    aget p0, p2, p0

    sub-float/2addr p1, p0

    float-to-double p0, p1

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public blacklist fromInt(I)[F
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object p0, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {p0, v0, v2, p1}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object p0

    return-object p0
.end method

.method public blacklist toInt([F)I
    .locals 2

    iget-object p0, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(FFF)I

    move-result p0

    return p0
.end method

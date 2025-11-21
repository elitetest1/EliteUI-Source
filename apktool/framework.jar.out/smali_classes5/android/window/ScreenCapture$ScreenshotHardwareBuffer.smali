.class public Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotHardwareBuffer"
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 0.015625f


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContainsHdrLayers:Z

.field private final blacklist mContainsSecureLayers:Z

.field private final blacklist mGainmap:Landroid/hardware/HardwareBuffer;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mHdrSdrRatio:F


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object p2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    iput-boolean p3, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    iput-boolean p4, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    iput-object p5, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    iput p6, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    return-void
.end method

.method private static blacklist createFromNative(Landroid/hardware/HardwareBuffer;IZZLandroid/hardware/HardwareBuffer;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 7

    invoke-static {p1}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object p1

    new-instance v0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V

    return-object v0
.end method


# virtual methods
.method public blacklist asBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ScreenCapture"

    const-string v0, "Failed to take screenshot. Null screenshot object"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Gainmap;

    invoke-direct {v2, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v1, v1}, Landroid/graphics/Gainmap;->setRatioMin(FFF)V

    iget v3, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    invoke-virtual {v2, v1, v1, v1}, Landroid/graphics/Gainmap;->setGamma(FFF)V

    const/high16 v3, 0x3c800000    # 0.015625f

    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Gainmap;->setEpsilonSdr(FFF)V

    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Gainmap;->setEpsilonHdr(FFF)V

    invoke-virtual {v2, v1}, Landroid/graphics/Gainmap;->setMinDisplayRatioForHdrTransition(F)V

    iget p0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    invoke-virtual {v2, p0}, Landroid/graphics/Gainmap;->setDisplayRatioForFullHdr(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    :cond_1
    return-object v0
.end method

.method public blacklist containsHdrLayers()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return p0
.end method

.method public blacklist containsSecureLayers()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return p0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 0

    iget-object p0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

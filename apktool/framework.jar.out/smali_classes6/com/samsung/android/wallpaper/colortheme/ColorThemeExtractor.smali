.class public Lcom/samsung/android/wallpaper/colortheme/ColorThemeExtractor;
.super Ljava/lang/Object;
.source "ColorThemeExtractor.java"


# static fields
.field private static final blacklist DEST_SCALE_HEIGHT:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "ColorThemeExtractor"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSeedColors(Landroid/graphics/Bitmap;)[I
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/16 v1, 0x1e

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->makeClusterGroupColorBandBasedFromHueInterval(F[F)[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x96

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->setSaturationThresholdForGrayscale(F)V

    const v1, 0x3e3851ec    # 0.18f

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->setBrightnessThresholdForGrayscale(F)V

    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->setHsvSpaceHueRadiusValue(F)V

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    const/high16 v0, 0x42340000    # 45.0f

    float-to-double v0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v2, v0, v2

    sget-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const/4 v6, 0x1

    invoke-static {p0, v2, v3, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->discardSameColorFromDominantColorsForColorPalette([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;DLcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;Z)I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->getOnlyColorsFromDominantColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;D)[I

    move-result-object p0

    if-nez p0, :cond_2

    new-array p0, v6, [I

    const/high16 v0, -0x1000000

    aput v0, p0, v4

    :cond_2
    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.class public Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;
.super Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
.source "ColorPaletteCreator5.java"


# static fields
.field private static final blacklist GRAY_HUE_PRESET1:I = 0x0

.field private static final blacklist GRAY_HUE_PRESET2:I = 0x78

.field private static final blacklist GRAY_HUE_PRESET3:I = 0xf0

.field private static final blacklist GRAY_SAT_PRESET1:F = 0.0f

.field private static final blacklist GRAY_SAT_PRESET2:F = 0.05f

.field private static final blacklist MAX_RANGE:I = 0x13

.field private static final blacklist TAG:Ljava/lang/String; = "ColorPaletteCreator5"

.field private static final blacklist range:[I


# instance fields
.field blacklist accent1:[F

.field blacklist accent2:[F

.field blacklist accent3:[F

.field blacklist mColorHsl:[[F

.field blacklist neutral1:[F

.field blacklist neutral2:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    return-void

    :array_0
    .array-data 4
        -0x8
        0x17
        0x22
        0x2c
        0x34
        0x3d
        0x4f
        0x86
        0xa8
        0xb8
        0xc2
        0xc9
        0xde
        0x108
        0x121
        0x13a
        0x149
        0x159
        0x160
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    return-void
.end method

.method private blacklist addExpressive([FI)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getExpressiveHue(FI)F

    move-result p2

    aput p2, v0, v1

    iget-object p2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v3, 0x0

    add-float/2addr v2, v3

    const v4, 0x3f333333    # 0.7f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, p2, v0

    iget-object p2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v2, p1, v1

    aput v2, p2, v1

    aget v2, p1, v0

    add-float/2addr v2, v3

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, p2, v0

    iget-object p2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v2, p1, v1

    invoke-static {v2, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v2

    aput v2, p2, v1

    iget-object p2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v2, p1, v0

    add-float/2addr v2, v3

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, p2, v0

    iget-object p2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v2, p1, v1

    aput v2, p2, v1

    aget v2, p1, v0

    add-float/2addr v2, v3

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, p2, v0

    iget-object p2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v2, p1, v1

    aput v2, p2, v1

    aget p1, p1, v0

    add-float/2addr p1, v3

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, p2, v0

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private blacklist addGrayStylePalette()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    aput v2, v0, v1

    const v4, 0x3d4ccccd    # 0.05f

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v10, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/high16 v2, 0x42f00000    # 120.0f

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v10, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/high16 v2, 0x43700000    # 240.0f

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist addNeutral([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v1

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v1

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v1

    aput v3, v0, v1

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3d4ccccd    # 0.05f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    aget p1, p1, v2

    add-float/2addr p1, v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v0, v2

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private blacklist addTonalSpot([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    const v4, 0x3e99999a    # 0.3f

    add-float/2addr v3, v4

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v1

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v1

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v2

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v1

    aput v3, v0, v1

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    aget p1, p1, v2

    add-float/2addr p1, v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v0, v2

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private blacklist addVibrant([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    const v4, 0x3e99999a    # 0.3f

    add-float/2addr v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    aget v3, p1, v2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v1

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v2

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v1

    aput v3, v0, v1

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    aget p1, p1, v2

    add-float/2addr p1, v4

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v0, v2

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method static blacklist findRange(F)I
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    const/16 v3, 0x12

    aget v3, v2, v3

    int-to-float v3, v3

    cmpg-float v3, v3, p0

    if-gtz v3, :cond_1

    return v1

    :cond_1
    aget v2, v2, v0

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static blacklist findRatio(FI)F
    .locals 6

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    aget v1, v0, p1

    int-to-float v2, v1

    sub-float v2, p0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v2, v3

    rem-float/2addr v2, v3

    add-int/lit8 v3, p1, 0x1

    aget v4, v0, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const-string v1, "findRatio : ratio is more than 1"

    const-string v4, "ColorPaletteCreator5"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "findRatio : hue = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " range[r] = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " range[r+1] = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v0, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ratio = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static blacklist getHue(IF)F
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v1, v0

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr p0, v1

    aget v1, v0, p0

    int-to-float v2, v1

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    sub-int/2addr p0, v1

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v2, p0

    const/4 p0, 0x0

    cmpg-float p0, v2, p0

    const/high16 p1, 0x43b40000    # 360.0f

    if-gez p0, :cond_0

    add-float/2addr v2, p1

    return v2

    :cond_0
    cmpl-float p0, v2, p1

    if-lez p0, :cond_1

    sub-float/2addr v2, p1

    :cond_1
    return v2
.end method

.method static blacklist hueMove(FI)F
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRange(F)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRatio(FI)F

    move-result p0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    add-int/2addr v0, p1

    sget-object p1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    rem-int/2addr v0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    sget-object p1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    rem-int/2addr v0, p1

    :goto_0
    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getHue(IF)F

    move-result p0

    return p0
.end method

.method static blacklist isGrayImage([[F)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    aget v3, v4, v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private blacklist populateStyles()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "populateStyles : seedsColor length"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorPaletteCreator5"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    aget v2, v2, v0

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v4, v4, v0

    invoke-static {v2, v4}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "populateStyles : seed = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " C"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v0, v5, v0

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    invoke-static {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->isGrayImage([[F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addGrayStylePalette()V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v0, v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addTonalSpot([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addNeutral([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addVibrant([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addExpressive([FI)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method blacklist comp(F)F
    .locals 1

    const/high16 p0, 0x43340000    # 180.0f

    add-float/2addr p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    sub-float/2addr p1, p0

    :cond_0
    return p1
.end method

.method public blacklist generateColorPalette()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->populateStyles()V

    return-void
.end method

.method public blacklist generateColorPalette(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->generateColorPalette(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->generateColorPalette()V

    return-void
.end method

.method public blacklist getColorPalettes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getExpressiveHue(FI)F
    .locals 10

    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRange(F)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRatio(FI)F

    move-result v1

    add-int/lit8 v2, v0, -0x5

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v2, v4

    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getHue(IF)F

    move-result v2

    const/4 v4, -0x5

    sub-int/2addr v0, v4

    array-length v5, v3

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v0, v3

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getHue(IF)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getExpressiveHue : leftHue = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " rightHue = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " case"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ColorPaletteCreator5"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v1, v2, v0

    const-string v5, " "

    const-string v6, "getExpressiveHue : return seeds C"

    const-string v7, ")"

    const/4 v8, 0x0

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "getExpressiveHue : leftHue("

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ") > c1, c2, c3, c4 > rightHue("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    array-length v9, v7

    if-ge v1, v9, :cond_7

    if-ne v1, p2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, v7, v1

    aget v7, v7, v8

    cmpg-float v9, v0, v7

    if-gez v9, :cond_1

    cmpg-float v9, v7, v2

    if-gez v9, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "getExpressiveHue : 360 > c1,c2,c3,c4 > rightHue("

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ") || 0 < c1,c2,c3,c4 < leftHue("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    array-length v9, v7

    if-ge v1, v9, :cond_7

    if-ne v1, p2, :cond_3

    goto :goto_3

    :cond_3
    aget-object v7, v7, v1

    aget v7, v7, v8

    const/high16 v9, 0x43b40000    # 360.0f

    cmpl-float v9, v9, v7

    if-lez v9, :cond_4

    cmpl-float v9, v7, v0

    if-gtz v9, :cond_5

    :cond_4
    cmpl-float v9, v2, v7

    if-lez v9, :cond_6

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_6

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-static {p1, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result p0

    return p0
.end method

.method public blacklist setColors([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    return-void
.end method

.method public blacklist setColors([[F)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

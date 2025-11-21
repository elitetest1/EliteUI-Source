.class public Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
.super Ljava/lang/Object;
.source "ColorPaletteCreator.java"


# static fields
.field private static final blacklist ACCENT1_SAT_DELTA:F = 0.3f

.field private static final blacklist ACCENT1_SAT_MAX:F = 0.8f

.field private static final blacklist ACCENT2_SAT_MAX:F = 0.4f

.field private static final blacklist ACCENT3_SAT_DELTA:F = 0.1f

.field private static final blacklist ACCENT3_SAT_MAX:F = 0.6f

.field private static final blacklist GRAY_HUE_PRESET1:I = 0x0

.field private static final blacklist GRAY_HUE_PRESET2:I = 0xf0

.field private static final blacklist GRAY_SAT_PRESET1:F = 0.0f

.field private static final blacklist GRAY_SAT_PRESET2:F = 0.05f

.field private static final blacklist MAX_RANGE:I = 0x11

.field private static final blacklist NEUTRAL_SAT_MAX:F = 0.15f

.field private static final blacklist hueRange:[I

.field private static final blacklist range:[I


# instance fields
.field protected final blacklist mColorPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation
.end field

.field protected blacklist mSeedColors:[I

.field protected final blacklist mWallpaperColorStyles:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueRange:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x16
        0x28
        0x34
        0x3c
        0x51
        0x8b
        0xa9
        0xc8
        0xdb
        0x100
        0x117
        0x13e
        0x151
        0x15c
        0x164
        0x169
    .end array-data

    :array_1
    .array-data 4
        -0x4
        0x8
        0x16
        0x28
        0x34
        0x3c
        0x51
        0x8b
        0xa9
        0xc8
        0xdb
        0x100
        0x117
        0x13e
        0x151
        0x15c
        0x164
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->TONAL_SPOT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->SPRITZ:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->VIBRANT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->EXPRESSIVE:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mWallpaperColorStyles:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    return-void
.end method

.method public static blacklist converAccent1ToSeedColors([I)[I
    .locals 10

    if-eqz p0, :cond_5

    array-length v0, p0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    array-length v3, p0

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v1, 0x0

    aput v3, v5, v1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    move v5, v1

    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_1

    aget v7, p0, v5

    aget-object v8, v3, v5

    invoke-static {v7, v8}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->isGrayImage([[F)Z

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_2

    const/4 p0, 0x0

    aput p0, v2, v1

    aput p0, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput p0, v2, v1

    const p0, 0x3d4ccccd    # 0.05f

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x43700000    # 240.0f

    aput v3, v2, v1

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    array-length v5, p0

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3e99999a    # 0.3f

    if-ne v5, v6, :cond_3

    aget-object p0, v3, v1

    aget v5, p0, v1

    aput v5, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v1

    aget p0, p0, v1

    invoke-static {p0, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result p0

    aput p0, v2, v1

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v1

    aget p0, p0, v1

    aput p0, v2, v1

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    array-length p0, p0

    if-ne p0, v4, :cond_4

    aget-object p0, v3, v1

    aget v5, p0, v1

    aput v5, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v6

    aget v4, p0, v1

    aput v4, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v1

    aget p0, p0, v1

    invoke-static {p0, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result p0

    aput p0, v2, v1

    aget-object p0, v3, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v1

    aget v3, p0, v1

    aput v3, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    aget-object p0, v3, v1

    aget v5, p0, v1

    aput v5, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v6

    aget v5, p0, v1

    aput v5, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v4

    aget v4, p0, v1

    aput v4, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v3, v1

    aget v3, p0, v1

    aput v3, v2, v1

    aget p0, p0, v6

    add-float/2addr p0, v9

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
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
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    const/16 v3, 0x10

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
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    aget v1, v0, p1

    int-to-float v2, v1

    sub-float/2addr p0, v2

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method static blacklist getHue(IF)F
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

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

    invoke-static {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->findRange(F)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->findRatio(FI)F

    move-result p0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    add-int/2addr v0, p1

    sget-object p1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    rem-int/2addr v0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    sget-object p1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    rem-int/2addr v0, p1

    :goto_0
    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->getHue(IF)F

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

.method static synthetic blacklist lambda$converAccent1ToSeedColors$0(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist populateStyles()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    if-eqz v1, :cond_5

    array-length v2, v1

    if-gtz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x3

    new-array v4, v2, [F

    new-array v5, v2, [F

    new-array v6, v2, [F

    new-array v7, v2, [F

    new-array v8, v2, [F

    array-length v1, v1

    const/4 v9, 0x2

    new-array v3, v9, [I

    const/4 v10, 0x1

    aput v2, v3, v10

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v3, v2

    :goto_0
    iget-object v11, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v12, v11

    if-ge v3, v12, :cond_1

    aget v11, v11, v3

    aget-object v12, v1, v3

    invoke-static {v11, v12}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->isGrayImage([[F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    aput v1, v4, v2

    aput v1, v4, v10

    aput v1, v5, v2

    aput v1, v5, v10

    aput v1, v6, v2

    aput v1, v6, v10

    aput v1, v7, v2

    aput v1, v7, v10

    aput v1, v8, v2

    aput v1, v8, v10

    iget-object v9, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput v1, v4, v2

    const v9, 0x3d4ccccd    # 0.05f

    aput v9, v4, v10

    aput v1, v5, v2

    aput v9, v5, v10

    aput v1, v6, v2

    aput v9, v6, v10

    aput v1, v7, v2

    aput v9, v7, v10

    aput v1, v8, v2

    aput v9, v8, v10

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x43700000    # 240.0f

    aput v1, v4, v2

    aput v9, v4, v10

    aput v1, v5, v2

    aput v9, v5, v10

    aput v1, v6, v2

    aput v9, v6, v10

    aput v1, v7, v2

    aput v9, v7, v10

    aput v1, v8, v2

    aput v9, v8, v10

    iget-object v0, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v11, v3

    const v12, 0x3f19999a    # 0.6f

    const v13, 0x3dcccccd    # 0.1f

    const v14, 0x3ecccccd    # 0.4f

    const v15, 0x3f4ccccd    # 0.8f

    const v16, 0x3e99999a    # 0.3f

    move/from16 v17, v2

    const v2, 0x3e19999a    # 0.15f

    if-ne v11, v10, :cond_3

    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v4, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v5, v17

    aget-object v3, v1, v17

    aget v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v6, v17

    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v7, v17

    aget v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v8, v17

    aget-object v3, v1, v17

    aget v3, v3, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v8, v10

    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, v1, v17

    aget v2, v2, v17

    invoke-static {v2, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v4, v17

    aget-object v2, v1, v17

    aget v2, v2, v17

    invoke-static {v2, v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v5, v17

    aget-object v2, v1, v17

    aget v2, v2, v17

    invoke-static {v2, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v6, v17

    aget-object v2, v1, v17

    aget v2, v2, v17

    invoke-static {v2, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v7, v17

    aget-object v2, v1, v17

    aget v2, v2, v17

    invoke-static {v2, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v8, v17

    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, v1, v17

    aget v3, v2, v17

    aput v3, v4, v17

    aget v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v5, v17

    aget-object v2, v1, v17

    aget v2, v2, v17

    invoke-static {v2, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v6, v17

    aget-object v1, v1, v17

    aget v2, v1, v17

    aput v2, v7, v17

    aget v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v1

    aput v1, v8, v17

    iget-object v0, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    array-length v3, v3

    if-ne v3, v9, :cond_4

    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v4, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v5, v17

    aget-object v3, v1, v10

    aget v11, v3, v17

    aput v11, v6, v17

    aget-object v11, v1, v17

    aget v18, v11, v17

    aput v18, v7, v17

    aget v3, v3, v17

    aput v3, v8, v17

    aget v3, v11, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v10

    iget-object v11, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v10

    aget v11, v3, v17

    aput v11, v4, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v5, v17

    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v6, v17

    aget-object v11, v1, v10

    aget v18, v11, v17

    aput v18, v7, v17

    aget v3, v3, v17

    aput v3, v8, v17

    aget v3, v11, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v10

    iget-object v11, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v4, v17

    aget-object v3, v1, v17

    aget v3, v3, v17

    invoke-static {v3, v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v5, v17

    aget-object v3, v1, v10

    aget v3, v3, v17

    aput v3, v6, v17

    aget-object v3, v1, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v7, v17

    aget-object v3, v1, v10

    aget v3, v3, v17

    aput v3, v8, v17

    aget-object v3, v1, v17

    aget v3, v3, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v10

    iget-object v9, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v17

    aget v3, v3, v17

    aput v3, v4, v17

    aget-object v3, v1, v10

    aget v9, v3, v17

    aput v9, v5, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v6, v17

    aget-object v3, v1, v17

    aget v9, v3, v17

    aput v9, v7, v17

    aget-object v9, v1, v10

    aget v9, v9, v17

    aput v9, v8, v17

    aget v3, v3, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v1, v1, v10

    aget v1, v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v8, v10

    iget-object v0, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v4, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v5, v17

    aget-object v3, v1, v10

    aget v11, v3, v17

    aput v11, v6, v17

    aget-object v11, v1, v17

    aget v18, v11, v17

    aput v18, v7, v17

    aget v3, v3, v17

    aput v3, v8, v17

    aget v3, v11, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v10

    iget-object v11, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v10

    aget v11, v3, v17

    aput v11, v4, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v5, v17

    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v6, v17

    aget-object v11, v1, v10

    aget v18, v11, v17

    aput v18, v7, v17

    aget v3, v3, v17

    aput v3, v8, v17

    aget v3, v11, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v10

    iget-object v11, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v9

    aget v11, v3, v17

    aput v11, v4, v17

    aget v3, v3, v17

    invoke-static {v3, v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v5, v17

    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v6, v17

    aget-object v11, v1, v9

    aget v18, v11, v17

    aput v18, v7, v17

    aget v3, v3, v17

    aput v3, v8, v17

    aget v3, v11, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v9

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v9

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v10

    iget-object v11, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v17

    aget v11, v3, v17

    aput v11, v4, v17

    aget-object v11, v1, v10

    aget v18, v11, v17

    aput v18, v5, v17

    aget-object v18, v1, v9

    aget v18, v18, v17

    aput v18, v6, v17

    aget v18, v3, v17

    aput v18, v7, v17

    aget v11, v11, v17

    aput v11, v8, v17

    aget v3, v3, v10

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v4, v10

    aget-object v3, v1, v10

    aget v3, v3, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v5, v10

    aget-object v3, v1, v9

    aget v3, v3, v10

    add-float/2addr v3, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v6, v10

    aget-object v3, v1, v17

    aget v3, v3, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v7, v10

    aget-object v1, v1, v10

    aget v1, v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v8, v10

    iget-object v0, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
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

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->populateStyles()V

    return-void
.end method

.method public blacklist generateColorPalette(Z)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mWallpaperColorStyles:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    new-instance v8, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    invoke-direct {v8, v3, v1, v7}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v9, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {v9, v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V

    invoke-virtual {v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->populateStyles()V

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

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSeedColors()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    return-object p0
.end method

.method public blacklist setColors([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    return-void
.end method

.method public blacklist setColors([[F)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

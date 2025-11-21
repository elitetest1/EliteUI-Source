.class public final enum Lcom/samsung/android/wallpaper/colortheme/monet/Style;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/colortheme/monet/Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field public static final enum blacklist CONTENT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field public static final enum blacklist EXPRESSIVE:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field public static final enum blacklist FRUIT_SALAD:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field public static final enum blacklist RAINBOW:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field public static final enum blacklist SPRITZ:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field public static final enum blacklist TONAL_SPOT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field public static final enum blacklist VIBRANT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;


# instance fields
.field private final blacklist coreSpec:Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/wallpaper/colortheme/monet/Style;
    .locals 7

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->SPRITZ:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    sget-object v1, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->TONAL_SPOT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->VIBRANT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->EXPRESSIVE:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    sget-object v4, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->RAINBOW:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    sget-object v5, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->FRUIT_SALAD:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    sget-object v6, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->CONTENT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    invoke-direct {v4, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    invoke-direct {v5, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    invoke-direct {v6, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v13, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-direct {v13, v14, v15}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v6, v13}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v13, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v13}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v7, v14, v15}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v13, v7}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;)V

    const-string v2, "SPRITZ"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;-><init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->SPRITZ:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v7, 0x4042000000000000L    # 36.0

    invoke-direct {v4, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v5, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;

    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    invoke-direct {v5, v13, v14}, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;-><init>(D)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v15, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    invoke-direct {v15, v13, v14}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v6, v15}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v13, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v13}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v14, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v14, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v13, v14}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;)V

    const-string v2, "TONAL_SPOT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;-><init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->TONAL_SPOT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMaxOut;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMaxOut;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/HueVibrantSecondary;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/HueVibrantSecondary;-><init>()V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/HueVibrantTertiary;

    invoke-direct {v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueVibrantTertiary;-><init>()V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v13, 0x4040000000000000L    # 32.0

    invoke-direct {v6, v13, v14}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v15, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-direct {v15, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v6, v15}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v15, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v15}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v11, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    invoke-direct {v11, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v15, v11}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;)V

    const-string v2, "VIBRANT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;-><init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->VIBRANT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;-><init>(D)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/HueExpressiveSecondary;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/HueExpressiveSecondary;-><init>()V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/HueExpressiveTertiary;

    invoke-direct {v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueExpressiveTertiary;-><init>()V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v6, v13, v14}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    invoke-direct {v6, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;-><init>(D)V

    new-instance v11, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    invoke-direct {v11, v12, v13}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v6, v11}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v11, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;

    invoke-direct {v11, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;-><init>(D)V

    new-instance v9, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    invoke-direct {v9, v12, v13}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v11, v9}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;)V

    const-string v2, "EXPRESSIVE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;-><init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->EXPRESSIVE:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v9, 0x4048000000000000L    # 48.0

    invoke-direct {v4, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    invoke-direct {v5, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    invoke-direct {v5, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/HueAdd;-><init>(D)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/16 v11, 0x0

    invoke-direct {v7, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v7}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v8, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v8, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;)V

    const-string v2, "RAINBOW"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;-><init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->RAINBOW:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;-><init>(D)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v6, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;

    invoke-direct {v6, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;-><init>(D)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v7, 0x4042000000000000L    # 36.0

    invoke-direct {v4, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v3, v6, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v7}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v8, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    invoke-direct {v8, v11, v12}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;-><init>(D)V

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;)V

    const-string v2, "FRUIT_SALAD"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;-><init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->FRUIT_SALAD:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaSource;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaSource;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;

    const-wide v6, 0x3fd51eb851eb851fL    # 0.33

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v5}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;

    const-wide v7, 0x3fe51eb851eb851fL    # 0.66

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;

    const-wide v8, 0x3fb5532617c1bda5L    # 0.0833

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    new-instance v6, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;

    invoke-direct {v7}, Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;-><init>()V

    new-instance v8, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;

    const-wide v9, 0x3fc5532617c1bda5L    # 0.1666

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;-><init>(D)V

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;)V

    const-string v2, "CONTENT"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;-><init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->CONTENT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-static {}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->$values()[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->$VALUES:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->coreSpec:Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/colortheme/monet/Style;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaper/colortheme/monet/Style;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->$VALUES:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaper/colortheme/monet/Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    return-object v0
.end method


# virtual methods
.method public final blacklist getCoreSpec()Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->coreSpec:Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    return-object p0
.end method

.class public final enum Landroid/graphics/Bitmap$Config;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Bitmap$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist ALPHA_8:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist ARGB_4444:Landroid/graphics/Bitmap$Config;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist ARGB_8888:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist HARDWARE:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist RGBA_1010102:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist RGBA_F16:Landroid/graphics/Bitmap$Config;

.field public static final enum whitelist RGB_565:Landroid/graphics/Bitmap$Config;

.field private static greylist-max-o sConfigs:[Landroid/graphics/Bitmap$Config;


# instance fields
.field final greylist nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Bitmap$Config;
    .locals 7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGBA_1010102:Landroid/graphics/Bitmap$Config;

    filled-new-array/range {v0 .. v6}, [Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 10

    new-instance v1, Landroid/graphics/Bitmap$Config;

    const-string v0, "ALPHA_8"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move v0, v3

    new-instance v3, Landroid/graphics/Bitmap$Config;

    const-string v2, "RGB_565"

    const/4 v4, 0x3

    invoke-direct {v3, v2, v0, v4}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v0, v4

    new-instance v4, Landroid/graphics/Bitmap$Config;

    const-string v2, "ARGB_4444"

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-direct {v4, v2, v5, v6}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    new-instance v5, Landroid/graphics/Bitmap$Config;

    const-string v2, "ARGB_8888"

    const/4 v7, 0x5

    invoke-direct {v5, v2, v0, v7}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v0, v6

    new-instance v6, Landroid/graphics/Bitmap$Config;

    const-string v2, "RGBA_F16"

    const/4 v8, 0x6

    invoke-direct {v6, v2, v0, v8}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    move v0, v7

    new-instance v7, Landroid/graphics/Bitmap$Config;

    const-string v2, "HARDWARE"

    const/4 v9, 0x7

    invoke-direct {v7, v2, v0, v9}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    move v0, v8

    new-instance v8, Landroid/graphics/Bitmap$Config;

    const-string v2, "RGBA_1010102"

    const/16 v9, 0x8

    invoke-direct {v8, v2, v0, v9}, Landroid/graphics/Bitmap$Config;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/graphics/Bitmap$Config;->RGBA_1010102:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->$values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sput-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    const/4 v2, 0x0

    filled-new-array/range {v0 .. v8}, [Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sput-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    return-void
.end method

.method static greylist nativeToConfig(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->sConfigs:[Landroid/graphics/Bitmap$Config;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static whitelist values()[Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->$VALUES:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

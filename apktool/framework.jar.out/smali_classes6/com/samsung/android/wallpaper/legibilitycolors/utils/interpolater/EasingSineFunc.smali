.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;
.super Ljava/lang/Object;
.source "EasingSineFunc.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing;


# static fields
.field private static blacklist mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    return-object v0
.end method


# virtual methods
.method public blacklist ease(FFFFLcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;)F
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

    invoke-virtual {p5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->ordinal()I

    move-result p5

    aget p5, v0, p5

    const/4 v0, 0x1

    if-eq p5, v0, :cond_3

    const/4 v0, 0x2

    if-eq p5, v0, :cond_2

    const/4 v0, 0x3

    if-eq p5, v0, :cond_1

    const/4 v0, 0x4

    if-eq p5, v0, :cond_0

    mul-float/2addr p3, p1

    div-float/2addr p3, p4

    add-float/2addr p3, p2

    return p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeOutIn(FFFF)F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeInOut(FFFF)F

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeOut(FFFF)F

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeIn(FFFF)F

    move-result p0

    return p0
.end method

.method public blacklist easeIn(FFFF)F
    .locals 4

    neg-float p0, p3

    div-float/2addr p1, p4

    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p0, p1

    add-float/2addr p0, p3

    add-float/2addr p0, p2

    return p0
.end method

.method public blacklist easeInOut(FFFF)F
    .locals 4

    neg-float p0, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p0, p3

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p1

    mul-double/2addr v2, v0

    float-to-double p3, p4

    div-double/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    double-to-float p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p1, p3

    mul-float/2addr p0, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public blacklist easeOut(FFFF)F
    .locals 2

    div-float/2addr p1, p4

    float-to-double p0, p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr p3, p0

    add-float/2addr p3, p2

    return p3
.end method

.method public blacklist easeOutIn(FFFF)F
    .locals 3

    const/high16 p0, 0x40000000    # 2.0f

    div-float v0, p4, p0

    cmpg-float v0, p1, v0

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez v0, :cond_0

    div-float/2addr p3, p0

    mul-float/2addr p1, p0

    div-float/2addr p1, p4

    float-to-double p0, p1

    mul-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr p3, p0

    add-float/2addr p3, p2

    return p3

    :cond_0
    div-float/2addr p3, p0

    neg-float v0, p3

    mul-float/2addr p1, p0

    sub-float/2addr p1, p4

    div-float/2addr p1, p4

    float-to-double p0, p1

    mul-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p3

    add-float/2addr p2, p3

    add-float/2addr v0, p2

    return v0
.end method

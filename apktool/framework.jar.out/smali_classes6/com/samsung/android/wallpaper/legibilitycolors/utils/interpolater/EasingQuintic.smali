.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;
.super Ljava/lang/Object;
.source "EasingQuintic.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing;


# static fields
.field private static blacklist mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;


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

.method public static blacklist getInstance()Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    return-object v0
.end method


# virtual methods
.method public blacklist ease(FFFFLcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;)F
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeOutIn(FFFF)F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeInOut(FFFF)F

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeOut(FFFF)F

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeIn(FFFF)F

    move-result p0

    return p0
.end method

.method public blacklist easeIn(FFFF)F
    .locals 0

    div-float/2addr p1, p4

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    add-float/2addr p3, p2

    return p3
.end method

.method public blacklist easeInOut(FFFF)F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p4, p0

    div-float/2addr p1, p4

    const/high16 p4, 0x3f800000    # 1.0f

    cmpg-float p4, p1, p4

    if-gez p4, :cond_0

    div-float/2addr p3, p0

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    mul-float/2addr p3, p1

    :goto_0
    add-float/2addr p3, p2

    return p3

    :cond_0
    div-float/2addr p3, p0

    sub-float/2addr p1, p0

    mul-float p4, p1, p1

    mul-float/2addr p4, p1

    mul-float/2addr p4, p1

    mul-float/2addr p4, p1

    add-float/2addr p4, p0

    mul-float/2addr p3, p4

    goto :goto_0
.end method

.method public blacklist easeOut(FFFF)F
    .locals 0

    div-float/2addr p1, p4

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float p4, p1, p1

    mul-float/2addr p4, p1

    mul-float/2addr p4, p1

    mul-float/2addr p4, p1

    add-float/2addr p4, p0

    mul-float/2addr p3, p4

    add-float/2addr p3, p2

    return p3
.end method

.method public blacklist easeOutIn(FFFF)F
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    div-float v0, p4, p0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    div-float/2addr p3, p0

    mul-float/2addr p1, p0

    div-float/2addr p1, p4

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float p4, p1, p1

    mul-float/2addr p4, p1

    mul-float/2addr p4, p1

    mul-float/2addr p4, p1

    add-float/2addr p4, p0

    mul-float/2addr p3, p4

    add-float/2addr p3, p2

    return p3

    :cond_0
    div-float/2addr p3, p0

    mul-float/2addr p1, p0

    sub-float/2addr p1, p4

    div-float/2addr p1, p4

    mul-float p0, p3, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    add-float/2addr p2, p3

    add-float/2addr p0, p2

    return p0
.end method

.class public Landroid/app/SemWallpaperColorsArea;
.super Ljava/lang/Object;
.source "SemWallpaperColorsArea.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist BACKGROUND:I = 0x7

.field public static final blacklist BODY:I = 0x1

.field public static final blacklist BODY_BOTTOM:I = 0x4

.field public static final blacklist BODY_CENTER:I = 0x8

.field public static final blacklist BODY_LEFT:I = 0x9

.field public static final blacklist BODY_MID:I = 0x3

.field public static final blacklist BODY_RIGHT:I = 0xa

.field public static final blacklist BODY_TOP:I = 0x2

.field public static final blacklist COVER_DISPLAY_DENSITY:F = 1.0f

.field public static final blacklist COVER_LARGE_DISPLAY_DENSITY:F = 2.125f

.field private static final blacklist DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field public static final blacklist NAME:[Ljava/lang/String;

.field public static final blacklist NAVIBAR:I = 0x5

.field public static final blacklist NAVIBAR_HOME:I = 0x6

.field public static final blacklist RATIO_FOLD_SUB_CRITERIA:I = 0x2

.field public static final blacklist STATUSBAR:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemWallpaperColorsArea"

.field private static final blacklist mVirtualDisplayHeightDp:I = 0xf4

.field private static final blacklist mVirtualDisplayWidthDp:I = 0x99


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field blacklist mDensity:F

.field blacklist mDpHeight:I

.field blacklist mDpNavigationBarHeight:I

.field blacklist mDpStatusBarHeight:I

.field blacklist mDpStatusBarTopMargin:I

.field blacklist mDpWidth:I

.field blacklist mHeight:I

.field blacklist mInit:Z

.field private blacklist mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRotation:I

.field private blacklist mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

.field private blacklist mWhich:I

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    const-string v9, "BODY_LEFT"

    const-string v10, "BODY_RIGHT"

    const-string v0, "STATUSBAR"

    const-string v1, "BODY"

    const-string v2, "BODY_TOP"

    const-string v3, "BODY_MID"

    const-string v4, "BODY_BOTTOM"

    const-string v5, "NAVIBAR"

    const-string v6, "NAVIBAR"

    const-string v7, "BACKGROUND"

    const-string v8, "BODY_CENTER"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemWallpaperColorsArea;-><init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/SemWallpaperColorsArea;->mInit:Z

    iput-object p1, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    iput p3, p0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    new-instance v1, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v1, p1, p2, p4}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V

    iput-object v1, p0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v1, p1, p2}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    invoke-virtual {v1}, Landroid/app/WallpaperColorOverrideAreas;->load()V

    :cond_1
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/app/SemWallpaperColorsArea;->getCoverScreenSize(Landroid/content/Context;I)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Landroid/app/SemWallpaperColorsArea;->getDisplaySize(I)Landroid/graphics/Point;

    move-result-object p1

    :cond_3
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    move v8, v2

    move v2, p1

    move p1, v8

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SemWallpaperColorsArea ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] which: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rotation: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has Base: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-eqz p4, :cond_4

    move p4, v0

    goto :goto_2

    :cond_4
    move p4, p2

    :goto_2
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v3, "SemWallpaperColorsArea"

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p1, v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, p2

    :goto_3
    iput p1, p0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    iput v2, p0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    sget-boolean p4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const v5, 0x10505c8

    const/16 v6, 0x10

    if-eqz p4, :cond_6

    sget-boolean p4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p4, :cond_6

    iget p4, p0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr p4, v6

    if-eq p4, v6, :cond_7

    :cond_6
    sget-boolean p4, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz p4, :cond_9

    iget p4, p0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    const/16 v7, 0x20

    and-int/2addr p4, v7

    if-ne p4, v7, :cond_9

    :cond_7
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_8

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/16 p1, 0x1e

    const/16 p3, 0x43

    goto :goto_4

    :cond_8
    move p1, p2

    move p3, p1

    goto :goto_6

    :cond_9
    const p4, 0x10502f0

    if-eqz p3, :cond_b

    if-nez v0, :cond_a

    iput v2, p0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    iput p1, p0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    :cond_a
    const p1, 0x10505cd

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :goto_4
    move v8, p2

    move p2, p1

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_c

    iput v2, p0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    iput p1, p0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    :cond_c
    const p1, 0x10505ce

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    move v8, p3

    move p3, p1

    :goto_5
    move p1, v8

    :goto_6
    sget-boolean p4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p4, :cond_e

    sget-boolean p4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p4, :cond_e

    iget p4, p0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr p4, v6

    if-ne p4, v6, :cond_e

    sget-boolean p4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p4, :cond_d

    const/high16 p4, 0x40080000    # 2.125f

    iput p4, p0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    goto :goto_7

    :cond_d
    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    iput p4, p0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    :goto_7
    iget p4, p0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float p4, p4

    iget v0, p0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget p4, p0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float p4, p4

    div-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    int-to-float p2, p3

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SemWallpaperColorsArea which = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mDensity : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist getCoverScreenSize(Landroid/content/Context;I)Landroid/graphics/Point;
    .locals 4

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    and-int/2addr p2, p0

    if-ne p2, p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p0, :cond_1

    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const-string p1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v1, p0, p2

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist getDisplayId(I)I
    .locals 3

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    and-int/2addr p1, v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_2

    move v1, p1

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p0

    if-nez p0, :cond_3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    :goto_1
    move v1, v2

    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getDisplayId "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWallpaperColorsArea"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist getDisplayInfo(II)Landroid/view/DisplayInfo;
    .locals 2

    iget-object v0, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    if-eqz p1, :cond_2

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x20

    and-int/2addr p2, p0

    if-ne p2, p0, :cond_1

    const-string p0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p0, p1, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v1

    :cond_2
    const-string p1, "SemWallpaperColorsArea"

    const-string p2, "getDisplayInfo display == null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v1
.end method

.method private blacklist getDisplaySize(I)Landroid/graphics/Point;
    .locals 10

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayId(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getDisplaySize() which:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", displayId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SemWallpaperColorsArea"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x8

    const/16 v5, 0x8

    if-eq v1, v5, :cond_6

    :cond_0
    iget-object v1, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    and-int/lit8 v5, p1, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    if-ne v5, v8, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getDisplaySize() ratio: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", isSubDisplay:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v5, :cond_3

    cmpg-float v9, v1, v8

    if-ltz v9, :cond_4

    :cond_3
    if-nez v5, :cond_6

    cmpl-float v1, v1, v8

    if-lez v1, :cond_6

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v6, v7

    :goto_1
    invoke-direct {p0, v6, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object p0

    iget p1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p0, v2, Landroid/graphics/Point;->y:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getDisplaySize() wrong displayInfo, changed to displayId: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-object v2
.end method

.method static blacklist name(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public blacklist buildKeyMap(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperColors$WallpaperColorsData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist clone()Landroid/app/SemWallpaperColorsArea;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemWallpaperColorsArea;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWallpaperColorsArea"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/SemWallpaperColorsArea;->clone()Landroid/app/SemWallpaperColorsArea;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/SemWallpaperColorsArea;->get(III)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get(III)Landroid/graphics/Rect;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v5

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const/4 v9, 0x3

    const-string/jumbo v10, "unhandle area "

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const/4 v13, 0x2

    const-string v14, "SemWallpaperColorsArea"

    const/16 v15, 0x18

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string/jumbo v5, "tablet mode"

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v5, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_1
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_2
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v6, v5, 0x16

    div-int/lit8 v6, v6, 0x64

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/2addr v6, v13

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_3
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v5, v5

    const-wide v7, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x19

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v5, v5

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v5, v5

    const-wide v7, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_4
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    double-to-int v5, v5

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v5, v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/lit16 v5, v5, 0x115

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x14

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_5
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    double-to-int v5, v5

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v5, v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v5, v5, 0x8a

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_6
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v5, v5

    const-wide v7, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v7, 0x3fb3f7ced916872bL    # 0.078

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v7, 0x3feaf9db22d0e560L    # 0.843

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_7
    iput v15, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :cond_0
    packed-switch v1, :pswitch_data_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_8
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_9
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_a
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v5, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/2addr v7, v13

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_b
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v9, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v7, v9

    double-to-int v5, v7

    add-int/lit8 v5, v5, 0x19

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide/high16 v9, 0x3fec000000000000L    # 0.875

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v9, 0x3fef333333333333L    # 0.975

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_c
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v9, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v7, v9

    double-to-int v5, v7

    add-int/lit16 v5, v5, 0x132

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x14

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_d
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v9, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v5, v5, 0xa3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_e
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v9, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide v9, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide v9, 0x3feb020c49ba5e35L    # 0.844

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_f
    iput v15, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :goto_0
    move v9, v6

    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_a

    :cond_1
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    move-wide/from16 v16, v7

    const/4 v7, 0x4

    const/16 v8, 0x20

    if-eqz v5, :cond_4

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v13, :cond_2

    goto :goto_2

    :cond_2
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v5, v5

    const v8, 0x3dd62b81

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v5, v5

    const v8, 0x3e4da3ac

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v8, v8

    const v9, 0x3f24b8a8

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v5, v5

    const v8, 0x3dd62b81

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v5, v5

    const v8, 0x3d38a7de

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v8, v8

    const v9, 0x3d864b8a

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :goto_2
    move v9, v6

    move v6, v7

    goto/16 :goto_a

    :cond_4
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    move/from16 v18, v8

    const/16 v8, 0x10

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v5, :cond_b

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_b

    if-eqz v1, :cond_a

    const/4 v5, 0x7

    if-eq v1, v5, :cond_9

    if-eq v1, v13, :cond_8

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_6

    const/4 v5, 0x5

    if-eq v1, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fadb22d0e560419L    # 0.058

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fda7ef9db22d0e5L    # 0.414

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_6
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3feb126e978d4fdfL    # 0.846

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fee7ef9db22d0e5L    # 0.953

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v10, 0x3fe8d4fdf3b645a2L    # 0.776

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v10, 0x3fec6a7ef9db22d1L    # 0.888

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_7
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fde04189374bc6aL    # 0.469

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fe10624dd2f1aa0L    # 0.532

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v10, 0x3f926e978d4fdf3bL    # 0.018

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v10, 0x3fb4fdf3b645a1cbL    # 0.082

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_8
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v10, 0x3fcb4395810624ddL    # 0.213

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v10, 0x3fe5eb851eb851ecL    # 0.685

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_9
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_a
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    const-wide v10, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_b
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_e

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_e

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_e

    if-eq v1, v13, :cond_d

    if-eq v1, v7, :cond_c

    packed-switch v1, :pswitch_data_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_10
    const/16 v5, 0x112

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0xd5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    const/16 v5, 0x36

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v5, v5, 0xa3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :pswitch_11
    const/16 v5, 0x30

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x116

    iput v5, v4, Landroid/graphics/Rect;->right:I

    const/16 v5, 0x21

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v5, v5, 0x9d

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :pswitch_12
    const/16 v5, 0x7e

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x104

    iput v5, v4, Landroid/graphics/Rect;->right:I

    const/16 v5, 0x26

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v5, v5, 0x8b

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :pswitch_13
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_c
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    add-int/lit16 v5, v5, -0x96

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x12c

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v5, v5, -0x2a

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_d
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    add-int/lit16 v5, v5, -0x1e7

    div-int/2addr v5, v13

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x2a

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :goto_3
    move/from16 v23, v9

    move v9, v6

    move/from16 v6, v23

    goto/16 :goto_a

    :cond_e
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const-wide v19, 0x3fa26e978d4fdf3bL    # 0.036

    const-wide v21, 0x3fc999999999999aL    # 0.2

    if-eqz v5, :cond_11

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v5, :cond_11

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v8

    if-nez v5, :cond_11

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v5, :cond_f

    packed-switch v1, :pswitch_data_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_14
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :pswitch_15
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :pswitch_16
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/2addr v7, v13

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v5, v5, 0x16

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :pswitch_17
    const/16 v5, 0x40

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v7, v10

    double-to-int v5, v7

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :pswitch_18
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    mul-double v7, v7, v16

    double-to-int v5, v7

    add-int/lit16 v5, v5, 0xf1

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x14

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :pswitch_19
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    mul-double v7, v7, v16

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x67

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :pswitch_1a
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double v7, v7, v19

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide v10, 0x3fb26e978d4fdf3bL    # 0.072

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide v10, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v7, v10

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :pswitch_1b
    iput v15, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :cond_f
    packed-switch v1, :pswitch_data_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_1c
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :pswitch_1d
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :pswitch_1e
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v5, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/2addr v7, v13

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0xb

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x16

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :pswitch_1f
    const/16 v5, 0x32

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    const-wide v9, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v7, v9

    double-to-int v5, v7

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :pswitch_20
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    mul-double v7, v7, v21

    double-to-int v5, v7

    add-int/lit16 v5, v5, 0xf1

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x14

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :pswitch_21
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    add-int/lit16 v5, v5, -0xa0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, 0x140

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v5

    mul-double v7, v7, v21

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x67

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :pswitch_22
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v5

    mul-double v7, v7, v19

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide v9, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide v9, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v7, v9

    double-to-int v5, v7

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :pswitch_23
    iput v15, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v5, v15

    iput v5, v4, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isWinner()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x74

    iput v5, v4, Landroid/graphics/Rect;->right:I

    :cond_10
    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :goto_4
    move v9, v6

    goto/16 :goto_a

    :cond_11
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_12

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v5, :cond_12

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_12

    move v5, v13

    goto :goto_5

    :cond_12
    move v5, v6

    :goto_5
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v7, :cond_17

    packed-switch v1, :pswitch_data_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_24
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :pswitch_25
    const/16 v8, 0x5a

    if-ne v7, v8, :cond_13

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_13
    const/16 v8, 0x10e

    if-ne v7, v8, :cond_14

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_7

    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid rotation "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :pswitch_26
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/2addr v7, v13

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v6, v6, 0x16

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :pswitch_27
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x12

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v6

    mul-double v7, v7, v16

    double-to-int v7, v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v10, 0x3feaa7ef9db22d0eL    # 0.833

    mul-double/2addr v6, v10

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :pswitch_28
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/2addr v6, v13

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/lit16 v6, v6, 0xa1

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :pswitch_29
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/2addr v6, v13

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/lit8 v6, v6, 0x20

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :pswitch_2a
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v8, v10

    int-to-double v11, v8

    const-wide v16, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v11, v11, v16

    double-to-int v8, v11

    const/16 v11, 0x5a

    if-ne v7, v11, :cond_15

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v8

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :goto_6
    move v6, v5

    const/4 v9, 0x1

    goto/16 :goto_a

    :cond_15
    const/16 v11, 0x10e

    if-ne v7, v11, :cond_16

    add-int/2addr v10, v8

    iput v10, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v8

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :goto_7
    move v6, v5

    move v9, v13

    goto/16 :goto_a

    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid rotation "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :pswitch_2b
    iput v15, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v15

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    :cond_17
    const/16 v7, 0x28

    packed-switch v1, :pswitch_data_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_2c
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    :pswitch_2d
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    :pswitch_2e
    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v8, v7

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3feca3d70a3d70a4L    # 0.895

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3feee147ae147ae1L    # 0.965

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    :pswitch_2f
    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v8, v7

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe299999999999aL    # 0.58125

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fe9000000000000L    # 0.78125

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :pswitch_30
    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v8, v7

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    mul-double v7, v7, v21

    double-to-int v7, v7

    add-int/lit16 v7, v7, 0x11f

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x14

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :pswitch_31
    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v8, v7

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    mul-double v7, v7, v21

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x67

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :pswitch_32
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v7, v7

    mul-double v7, v7, v19

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    const-wide v9, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    const-wide v9, 0x3feb53f7ced91687L    # 0.854

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :pswitch_33
    iput v15, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v15

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    :goto_8
    move v9, v6

    :goto_9
    move v6, v5

    :goto_a
    iget-object v5, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    if-eqz v5, :cond_19

    iget-object v5, v0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_18

    const-wide/16 v7, 0x0

    goto :goto_b

    :cond_18
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Get custom area. display type = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", rotation = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", area = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " areaFlag = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rect = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    invoke-virtual {v1, v6, v9, v7, v8}, Landroid/app/WallpaperColorOverrideAreas;->get(IIJ)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_19

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Has custom area. Original : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", calculated = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Rect;->right:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_1a

    if-eqz v3, :cond_1a

    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v2

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v5, v5

    div-float v5, v2, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Rect;->right:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    int-to-float v2, v3

    iget v3, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v3, v3

    div-float v3, v2, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v0, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Final area : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch
.end method

.class public Landroid/content/om/wallpapertheme/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustAlpha(FI)Ljava/lang/Integer;
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getLogText()Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->getLogText()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

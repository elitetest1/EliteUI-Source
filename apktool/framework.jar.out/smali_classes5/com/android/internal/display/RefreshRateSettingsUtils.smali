.class public Lcom/android/internal/display/RefreshRateSettingsUtils;
.super Ljava/lang/Object;
.source "RefreshRateSettingsUtils.java"


# static fields
.field public static final blacklist DEFAULT_REFRESH_RATE:F = 60.0f

.field private static final blacklist TAG:Ljava/lang/String; = "RefreshRateSettingsUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findHighestRefreshRateAmongAllBuiltInDisplays(Landroid/content/Context;)F
    .locals 9

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/high16 v1, 0x42700000    # 60.0f

    if-nez v0, :cond_0

    const-string p0, "RefreshRateSettingsUtils"

    const-string v0, "No valid display devices"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_2

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static blacklist findHighestRefreshRateAmongAllDisplays(Landroid/content/Context;)F
    .locals 9

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/high16 v1, 0x42700000    # 60.0f

    if-nez v0, :cond_0

    const-string p0, "RefreshRateSettingsUtils"

    const-string v0, "No valid display devices"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_1

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static blacklist findHighestRefreshRateForDefaultDisplay(Landroid/content/Context;)F
    .locals 5

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    const/high16 v1, 0x42700000    # 60.0f

    if-nez p0, :cond_0

    const-string p0, "RefreshRateSettingsUtils"

    const-string v0, "No valid default display device"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

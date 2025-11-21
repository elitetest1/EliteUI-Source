.class public final Lcom/android/internal/policy/DesktopModeCompatUtils;
.super Ljava/lang/Object;
.source "DesktopModeCompatUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isAnyForceConsumptionFlagsEnabled()Z
    .locals 1

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION_ALWAYS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isConfigurationDecoupled(Landroid/content/pm/ActivityInfo;Z)Z
    .locals 2

    const-wide/32 v0, 0x90d3a73

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z
    .locals 1

    sget-object v0, Landroid/window/DesktopModeFlags;->EXCLUDE_CAPTION_FROM_APP_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/DesktopModeCompatUtils;->isAnyForceConsumptionFlagsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Lcom/android/internal/policy/DesktopModeCompatUtils;->isConfigurationDecoupled(Landroid/content/pm/ActivityInfo;Z)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x1720a297

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

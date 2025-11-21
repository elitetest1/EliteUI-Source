.class public final Lcom/android/server/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist certpininstallerRemoval()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist consolidateBatteryChangeEvents()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist datetimeNotifications()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist disableSystemCompaction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist earlyDataManagerInit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableOdpFeatureGuard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist modifierShortcutManagerMultiuser()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist newBugreportKeyboardShortcut()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist optionalBackgroundInstallControl()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist pinGlobalQuota()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist pinWebview()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist pkgTargetedBatteryChangedNotSticky()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist rateLimitBatteryChangedBroadcast()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist traceBatteryChangedBroadcastEvent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

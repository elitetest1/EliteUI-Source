.class public Lcom/samsung/android/globalactions/util/DefaultUtilFactory;
.super Ljava/lang/Object;
.source "DefaultUtilFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/UtilFactory;


# instance fields
.field blacklist mContext:Landroid/content/Context;

.field private blacklist mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/util/LogWrapper;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-virtual {v1, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    new-instance v2, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/samsung/android/globalactions/util/BroadcastManager;

    new-instance v2, Lcom/samsung/android/globalactions/util/BroadcastManager;

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-direct {v4}, Lcom/samsung/android/globalactions/util/HandlerUtil;-><init>()V

    invoke-direct {v2, v3, v0, v4}, Lcom/samsung/android/globalactions/util/BroadcastManager;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;)V

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-direct {v1}, Lcom/samsung/android/globalactions/util/HandlerUtil;-><init>()V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-direct {v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/SystemController;

    new-instance v1, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-direct {v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/util/SystemController;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/HandlerUtil;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    iget-object p2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    iget-object p2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-virtual {p2, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    new-instance v2, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/globalactions/util/WindowManagerUtils;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/samsung/android/globalactions/util/ThemeChecker;

    new-instance v2, Lcom/samsung/android/globalactions/util/ThemeChecker;

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v0}, Lcom/samsung/android/globalactions/util/ThemeChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/ToastController;

    new-instance v1, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/ToastController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/TSafeLockUtil;

    new-instance v1, Lcom/samsung/android/globalactions/util/TSafeLockUtil;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/TSafeLockUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/UserManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/UserManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/UserManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    new-instance v0, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;

    new-instance v0, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

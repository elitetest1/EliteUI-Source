.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
.super Ljava/lang/Object;
.source "SemDisplaySolutionManager.java"


# static fields
.field private static blacklist RETURN_ERROR:J = -0x1L

.field private static blacklist RETURN_ERROR_F:F = -1.0f

.field private static blacklist RETURN_ERROR_I:I = -0x1

.field public static final blacklist SUPPORT_CHANGABLE_NORMAL_AUTO_BRIGHTNESS:I = 0x2

.field public static final blacklist SUPPORT_CHANGABLE_NUMBER_AUTO_BRIGHTNESS:I = 0x1

.field public static final blacklist SUPPORT_ONLY_MANUAL_BRIGHTNESS:I = 0x0

.field public static final blacklist SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL:I = 0x3

.field public static final blacklist SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V3:I = 0x4

.field public static final blacklist SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V4:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemDisplaySolutionManager"


# instance fields
.field final blacklist mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "SemDisplaySolutionManager"

    const-string v1, "In Constructor Stub-Service(ISemDisplaySolutionManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "SemDisplaySolutionManager"

    const-string v0, "Error SemDisplaySolutionManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public blacklist getAlphaMaskLevel(FFF)F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAlphaMaskLevel(FFF)F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return p0
.end method

.method public blacklist getAutoCurrentLimitOffModeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAutoCurrentLimitOffModeEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist getBlfAdaptiveCurrentIndex()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getBlfAdaptiveCurrentIndex()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCameraModeEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getCameraModeEnable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist getDouAppModeEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getDouAppModeEnable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist getFingerPrintBacklightValue(I)F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return p0
.end method

.method public blacklist getGalleryModeEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getGalleryModeEnable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist getOnPixelRatioValueForPMS()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public blacklist getVideoEnhancerSettingState(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return p0
.end method

.method public blacklist getVideoModeEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoModeEnable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist isBlueLightFilterScheduledTime()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->isBlueLightFilterScheduledTime()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isMdnieScenarioControlServiceEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist onAutoCurrentLimitOffMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist onAutoCurrentLimitStateChanged(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist onAutoCurrentLimitStateChangedInt(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChangedWithBrightness(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist onBurnInPreventionDisabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onBurnInPreventionDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist onDetailVeiwStateChanged(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onDetailVeiwStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setAutoCurrentLimitOffModeEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setBlfEnableTimeBySchedule(ZI)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setBlfEnableTimeBySchedule(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setCameraModeEnable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setCameraModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setDouAppModeEnable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setDouAppModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setEadIndexOffset(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setEadIndexOffset(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setEyeComfortWeightingFactor(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setGalleryModeEnable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setGalleryModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setHighDynamicRangeMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setHighDynamicRangeMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setIRCompensationMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setIRCompensationMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setMdnieScenarioControlServiceEnable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setMultipleScreenBrightnessValueForHDR(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightnessValueForHDR(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setRenderIntentValue(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setRenderIntentValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public whitelist setScreenBrightnessForPreview(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setSleepPatternBLF(Ljava/lang/String;JJF)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setSleepPatternBLF(Ljava/lang/String;JJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setVideoModeEnable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist updateAutoBrightnessLux(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->updateAutoBrightnessLux(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist updateGlutMode(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->updateGlutMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist updateQdcmMode(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->updateQdcmMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

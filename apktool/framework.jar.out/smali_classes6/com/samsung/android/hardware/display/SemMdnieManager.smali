.class public final Lcom/samsung/android/hardware/display/SemMdnieManager;
.super Ljava/lang/Object;
.source "SemMdnieManager.java"


# static fields
.field public static final whitelist CONTENT_MODE_BROWSER:I = 0x8

.field public static final whitelist CONTENT_MODE_CAMERA:I = 0x4

.field public static final blacklist CONTENT_MODE_DMB:I = 0x14

.field public static final whitelist CONTENT_MODE_EBOOK:I = 0x9

.field public static final whitelist CONTENT_MODE_GALLERY:I = 0x6

.field public static final blacklist CONTENT_MODE_GAME_HIGH:I = 0xd

.field public static final blacklist CONTENT_MODE_GAME_LOW:I = 0xb

.field public static final blacklist CONTENT_MODE_GAME_MID:I = 0xc

.field public static final whitelist CONTENT_MODE_UI:I = 0x0

.field public static final whitelist CONTENT_MODE_VIDEO:I = 0x1

.field public static final blacklist CONTENT_MODE_VIDEO_ENHANCER:I = 0xe

.field public static final blacklist CONTENT_MODE_VIDEO_ENHANCER_2:I = 0xf

.field public static final blacklist MDNIE_SUPPORT_BLUE_FILTER:I = 0x1000

.field public static final blacklist MDNIE_SUPPORT_COLOR_ADJUSTMENT:I = 0x800

.field public static final blacklist MDNIE_SUPPORT_CONTENT_GAME_MODE:I = 0x2

.field public static final blacklist MDNIE_SUPPORT_CONTENT_MODE:I = 0x1

.field public static final blacklist MDNIE_SUPPORT_CONTENT_SWA_MODE:I = 0x8

.field public static final blacklist MDNIE_SUPPORT_CONTENT_VIDEO_ENGANCE_MODE:I = 0x4

.field public static final blacklist MDNIE_SUPPORT_GRAYSCALE:I = 0x200

.field public static final blacklist MDNIE_SUPPORT_HDR:I = 0x4000

.field public static final blacklist MDNIE_SUPPORT_HMT:I = 0x2000

.field public static final blacklist MDNIE_SUPPORT_LIGHT_NOTIFICATION:I = 0x8000

.field public static final blacklist MDNIE_SUPPORT_NEGATIVE:I = 0x100

.field public static final blacklist MDNIE_SUPPORT_READING_MODE:I = 0x20

.field public static final blacklist MDNIE_SUPPORT_SCREENCURTAIN:I = 0x400

.field public static final blacklist MDNIE_SUPPORT_SCREEN_MODE:I = 0x10

.field private static blacklist RETURN_ERROR:I = -0x1

.field public static final whitelist SCREEN_MODE_ADAPTIVE:I = 0x4

.field public static final whitelist SCREEN_MODE_AMOLED_CINEMA:I = 0x0

.field public static final whitelist SCREEN_MODE_AMOLED_PHOTO:I = 0x1

.field public static final whitelist SCREEN_MODE_BASIC:I = 0x2

.field public static final whitelist SCREEN_MODE_NATURAL:I = 0x3

.field public static final whitelist SCREEN_MODE_READING:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemMdnieManager"


# instance fields
.field final blacklist mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/hardware/display/ISemMdnieManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "SemMdnieManager"

    const-string v1, "In Constructor Stub-Service(ISemMdnieManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "SemMdnieManager"

    const-string v0, "Error SemMdnieManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public blacklist afpcDataApply()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataApply()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist afpcDataOff()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataOff()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist afpcDataVerify()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataVerify()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist afpcDataWrite()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataWrite()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist afpcWorkOff()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcWorkOff()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public whitelist disableNightMode()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->disableNightMode()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public whitelist enableNightMode(I)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p0, v1, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightMode(ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist getContentMode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getContentMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0
.end method

.method public blacklist getNightModeBlock()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getNightModeBlock()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist getNightModeCct()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getNightModeCct()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0
.end method

.method public blacklist getNightModeStep()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getNightModeStep()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0
.end method

.method public blacklist getScreenMode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getScreenMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return p0
.end method

.method public whitelist getSupportedContentMode()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedContentMode()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public whitelist getSupportedScreenMode()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedScreenMode()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public whitelist isContentModeSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isContentModeSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public whitelist isNightModeSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isNightModeSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public whitelist isScreenModeSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isScreenModeSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setColorFadeNightDim(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setColorFadeNightDim(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setColorVision(ZII)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setColorVision(ZII)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public whitelist setContentMode(I)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setContentMode(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setEadMode(II[I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setEadMode(II[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setEadModeSub(II[I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setEadModeSub(II[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setExtraDimMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setExtraDimMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setHighBrightnessMode(III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setHighBrightnessMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public blacklist setHighDynamicRangeMode(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setHighDynamicRangeMode(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setLightNotificationMode(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setLightNotificationMode(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setNightMode(ZI)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightMode(ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setNightModeBlock(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightModeBlock(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setNightModeCct(I)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightModeCct(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setNightModeStep(I)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightModeStep(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public whitelist setScreenMode(I)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setScreenMode(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setWhiteRGB(IIIIII)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface/range {p0 .. p6}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setWhiteRGB(IIIIII)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setmDNIeAccessibilityMode(IZ)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setmDNIeColorBlind(Z[I)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setmDNIeEmergencyMode(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeEmergencyMode(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setmDNIeNegative(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeNegative(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist setmDNIeScreenCurtain(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeScreenCurtain(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist updateAlwaysOnDisplay(ZI)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->updateAlwaysOnDisplay(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

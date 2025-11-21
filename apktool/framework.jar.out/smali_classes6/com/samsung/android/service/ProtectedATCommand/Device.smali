.class public Lcom/samsung/android/service/ProtectedATCommand/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final blacklist AT_COMMAND_ALLOW_TOKEN_MODE:I = 0x1c

.field private static final blacklist CACHE_TAG:Ljava/lang/String; = "MODE"

.field private static final blacklist GALAXY_DIAG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor"

.field private static final blacklist PROD_DEV_PROPERTY_STATE_DEV:Ljava/lang/String; = "0x1"

.field private static final blacklist PROD_DEV_PROPERTY_STATE_USR:Ljava/lang/String; = "0x0"

.field private static final blacklist PROD_DEV_PROPERTY_STATE_USR_WITH_EM:Ljava/lang/String; = "0x2"

.field private static final blacklist REPAIR_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.repaircal"

.field private static final blacklist SS_DIAG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor.ve"

.field protected static final blacklist TAG:Ljava/lang/String; = "PACMClassifier"

.field private static final blacklist TOKEN_CACHE_RESET_TIME:J = 0x1b7740L

.field private static final blacklist VISUAL_DIAG_PACKAGE_NAME:Ljava/lang/String; = "kr.co.avad.diagnostictool"

.field private static final blacklist WAKELOCK_TAG:Ljava/lang/String; = "PACM_WL"


# instance fields
.field private blacklist mAtCommandChecker:Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;

.field private blacklist mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHasCSTool:Z

.field private final blacklist mIsFacBin:Z

.field private final blacklist mIsShipBin:Z

.field private blacklist mTimer:Ljava/util/Timer;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCache(Lcom/samsung/android/service/ProtectedATCommand/Device;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mCache:Ljava/util/HashSet;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mIsShipBin:Z

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mIsFacBin:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mCache:Ljava/util/HashSet;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mHasCSTool:Z

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "PACM_WL"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget p1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    new-instance p1, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;

    invoke-direct {p1}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mAtCommandChecker:Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;

    return-void
.end method

.method private blacklist clearTokenCache()Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/Device$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/ProtectedATCommand/Device$1;-><init>(Lcom/samsung/android/service/ProtectedATCommand/Device;)V

    return-object v0
.end method


# virtual methods
.method public blacklist checkATCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/Packet;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/service/ProtectedATCommand/Packet;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mAtCommandChecker:Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkATCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/Packet;)I

    move-result p0

    return p0
.end method

.method public blacklist clearCache()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasCSTool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mHasCSTool:Z

    return p0
.end method

.method public blacklist hasToken()Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->clearCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mCache:Ljava/util/HashSet;

    const-string v1, "MODE28"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "PACMClassifier"

    if-eqz v0, :cond_1

    const-string p0, "Mode(28) is already cached"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const-string/jumbo p0, "mWakeLock is null"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v5, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "Call getStatus(28)"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x1c

    invoke-virtual {v0, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getStatus ret : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->runTokenCacheResetTimer()V

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", em connected : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    return v4
.end method

.method blacklist isAutoBlockerOn()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/service/ProtectedATCommand/AutoBlockerManager;->isAutoBlockerOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public blacklist isCsToolInstalled()Z
    .locals 1

    const-string v0, "com.samsung.android.app.mobiledoctor"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "kr.co.avad.diagnostictool"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.mobiledoctor.ve"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.repaircal"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isDevDevice()Z
    .locals 1

    const-string/jumbo p0, "ro.boot.em.status"

    const-string v0, "0x1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0x0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0x2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isFacBin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mIsFacBin:Z

    return p0
.end method

.method public blacklist isMDFEnable()Z
    .locals 1

    const-string/jumbo p0, "security.mdf"

    const-string v0, "None"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isMaintenanceModeOn()Z
    .locals 4

    const-string p0, "PACMClassifier"

    const-string v0, "Maintenance mode : "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "Failed to get maintenance mode"

    invoke-static {p0, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist isPackageInstalled(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "PACMClassifier"

    if-nez p1, :cond_0

    const-string/jumbo p0, "package name is null in isPackageInstalled"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android"

    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is installed but signature is not matched"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is installed and signature is matched."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "GalaxyDiag app is not installed!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isSecureLockOn()Z
    .locals 4

    const-string v0, "PACMClassifier"

    const-string/jumbo v1, "secureLock : "

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string v1, "Failed to get secureLock"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public blacklist isShipBin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mIsShipBin:Z

    return p0
.end method

.method public blacklist isTestMode()Z
    .locals 1

    const-string/jumbo p0, "security.pacm.test"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist runTokenCacheResetTimer()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->clearTokenCache()Ljava/util/TimerTask;

    move-result-object v2

    const-wide/32 v3, 0x1b7740

    const-wide/32 v5, 0x1b7740

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public blacklist salesCode()Ljava/lang/String;
    .locals 1

    const-string/jumbo p0, "ro.csc.sales_code"

    const-string v0, "NONE"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setCSTool(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Device;->mHasCSTool:Z

    return-void
.end method

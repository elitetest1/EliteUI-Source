.class public Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternUtilsWrapper"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private blacklist mILockSettings:Lcom/android/internal/widget/ILockSettings;

.field private final blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$y93T96YeB0EtxjPh9Bo08Dp0ymY(Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->lambda$lockDown$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string p1, "lock_settings"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mILockSettings:Lcom/android/internal/widget/ILockSettings;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p3, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    return-void
.end method

.method private synthetic blacklist lambda$lockDown$0()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->lockProfiles()V

    return-void
.end method

.method private blacklist lockProfiles()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    if-eq v4, v1, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist isCarrierLockPlusEnabled()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mILockSettings:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/ILockSettings;->getCarrierLock(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isFMMLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isKnoxguardLockEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxguardLockEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isRMMLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isStrongAuthForLockDown()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isUserUnLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist lockDown()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "LockPatternUtilsWrapper"

    const-string v2, "lockDown"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x20

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public blacklist lockDownDelayed(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

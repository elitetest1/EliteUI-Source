.class public Lcom/samsung/android/widget/SemLockPatternUtils;
.super Ljava/lang/Object;
.source "SemLockPatternUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemLockPatternUtils"


# instance fields
.field private blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private blacklist createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_3

    const/4 p0, 0x2

    if-eq p2, p0, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    const/4 p0, 0x4

    if-eq p2, p0, :cond_2

    const/4 p0, 0x6

    if-eq p2, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createCredential : wrong credential type : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemLockPatternUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist clearLock(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SemLockPatternUtils"

    const-string p2, "clearLock : catch exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getBiometricTypeForUser(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p0

    return p0
.end method

.method public blacklist getCredentialTypeForUser(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeyguardStoredPasswordQuality(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    return p0
.end method

.method public blacklist getLockoutAttemptDeadline(I)J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getLockoutAttemptTimeout(I)J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptTimeout(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getOwnerInfo(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStrongAuthForUser(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    return p0
.end method

.method public whitelist isCarrierLockEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result p0

    return p0
.end method

.method public whitelist isFmmLockEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isKnoxguardLockEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxguardLockEnabled(I)Z

    move-result p0

    return p0
.end method

.method public whitelist isLockScreenDisabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method public whitelist isRemoteMobileManagerLockEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result p0

    return p0
.end method

.method public whitelist isSecure(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public blacklist setDeviceOwnerInfo(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwnerInfo(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLockCredential(Ljava/lang/String;ILjava/lang/String;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1, p5}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SemLockPatternUtils"

    const-string/jumbo p2, "setLockCredential : catch exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist setLockScreenDisabled(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    return-void
.end method

.method public blacklist setOwnerInfo(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setOwnerInfoEnabled(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    return-void
.end method

.method public blacklist verifyCredential(Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v0, "verifyCredential : return "

    iget-object v1, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    const-string v2, "SemLockPatternUtils"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo p0, "verifyCredential : credential is none."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "verifyCredential : catch exception"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.class public Lcom/samsung/android/security/SemSdCardEncryption;
.super Ljava/lang/Object;
.source "SemSdCardEncryption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/SemSdCardEncryption$EncryptionState;,
        Lcom/samsung/android/security/SemSdCardEncryption$Error;,
        Lcom/samsung/android/security/SemSdCardEncryption$Status;
    }
.end annotation


# static fields
.field public static final blacklist ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final blacklist CHECK_OTHER_DEVICE:Ljava/lang/String; = "OtherDevice"

.field private static final blacklist DEBUG:Z = true

.field public static final blacklist DECRYPT:I = 0x3

.field public static final blacklist ENCRYPT:I = 0x2

.field public static final blacklist ENCRYPT_FULL_OFF:I = 0x5

.field public static final blacklist ENCRYPT_FULL_ON:I = 0x4

.field public static final blacklist ENC_META_CHECK:I = 0x2b4

.field public static final blacklist ERROR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final blacklist ERR_INVALID_PARAMETER:I = 0xcb

.field public static final blacklist ERR_INVALID_PERMISSION:I = 0xcc

.field public static final blacklist ERR_NOK:I = 0xc9

.field public static final blacklist ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final blacklist EXCL_MEDIA_OFF:I = 0x7

.field public static final blacklist EXCL_MEDIA_ON:I = 0x6

.field public static final blacklist INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field private static final blacklist IS_SUPPORT_SDCARD_SLOT:Z

.field public static final blacklist MOVE_MOUNT:Ljava/lang/String; = "MoveMount"

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_ERR_BASE:I = 0xc8

.field public static final blacklist NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final blacklist OK:I = 0xd

.field public static final blacklist POLICY_ALREADY_SET:I = 0xa

.field public static final blacklist POLICY_CAN_NOT_BE_SET_UNDER_BUSY_STATE:I = 0xf

.field public static final blacklist POLICY_NOT_SAVED:I = 0x9

.field public static final blacklist POLICY_SAVED:I = 0x8

.field public static final blacklist SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "com.sec.app.action.START_SDCARD_ENCRYPTION"

.field public static blacklist SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final blacklist STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final blacklist STATUS_DONE:Ljava/lang/String; = "done"

.field public static final blacklist STATUS_FREE:Ljava/lang/String; = "free"

.field public static final blacklist STATUS_MOUNT:Ljava/lang/String; = "Mount"

.field private static final blacklist TAG:Ljava/lang/String; = "SemSdCardEncryption"

.field public static final blacklist VOLUME_STATE_HIDDEN:Ljava/lang/String; = "HiddenMount"

.field private static blacklist mPolicyChanged:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private blacklist m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sdinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    const v0, -0x35014542    # -8346975.0f

    sput v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    iput-object p1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    const-string p1, "DirEncryptService"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/security/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    const-string v1, "SemSdCardEncryption"

    if-nez p1, :cond_0

    const-string p1, "Unable to get DirEncryptService instance."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p1, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-nez p1, :cond_1

    const-string p1, "Dir Encryption not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    :cond_1
    return-void
.end method

.method public static blacklist isEncryptionFeatureEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist encryptStorage(Z)I
    .locals 0

    :try_start_0
    const-string/jumbo p0, "mount"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->encryptExternalStorage(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string p1, "Unable to communicate with DirEncryptService"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p0, 0xc8

    return p0
.end method

.method public blacklist getAdditionalSpaceRequired()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->getAdditionalSpaceRequired()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string v0, "Unable to communicate with DirEncryptService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, 0xc8

    return p0
.end method

.method public blacklist getCurrentStatus()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->getCurrentStatus()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string v0, "Unable to communicate with DirEncryptService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, 0xc8

    return p0
.end method

.method public blacklist getCurrentUserID()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result p0

    return p0
.end method

.method public blacklist getExternalSDvolFsUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getExternalSdPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getKeyguardStoredPasswordQuality()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result p0

    return p0
.end method

.method public blacklist getLastError()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->getLastError()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string v0, "Unable to communicate with DirEncryptService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, 0xc8

    return p0
.end method

.method public blacklist getListener()Landroid/os/IVoldTaskListener;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->getListener()Landroid/os/IVoldTaskListener;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string v0, "Unable to communicate with DirEncryptService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public blacklist getPolicyChanged()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    return p0
.end method

.method public blacklist getSavedUserID()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getSavedUserID()I

    move-result p0

    return p0
.end method

.method public blacklist getUserDiff()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getUserDiff()Z

    move-result p0

    return p0
.end method

.method public blacklist getVolumeState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isEncryptionSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentUserID()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isExternalSDRemovable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result p0

    return p0
.end method

.method public whitelist isSdCardEncryped()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->isSdCardEncryped()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isStorageCardEncryptionPoliciesApplied()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    return v1

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string v0, "Unable to communicate with DirEncryptService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public blacklist mountVolume()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/security/IDirEncryptService;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string p1, "Unable to communicate with DirEncryptService"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setAdminPolicy(ZLjava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist setMountSDcardToHelper(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/security/IDirEncryptService;->setMountSDcardToHelper(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string p1, "Unable to communicate with DirEncryptService"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setNeedToCreateKey(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/security/IDirEncryptService;->setNeedToCreateKey(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string p1, "Unable to communicate with DirEncryptService"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setPassword(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    const/16 p0, 0xc8

    return p0
.end method

.method public blacklist setPolicyChanged(Z)V
    .locals 0

    sput-boolean p1, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    return-void
.end method

.method public blacklist setSavedUserID(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->setSavedUserID(I)V

    return-void
.end method

.method public blacklist setSdCardEncryptionPolicy(IILjava/lang/String;)I
    .locals 3

    const-string v0, "SemSdCardEncryption"

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/security/IDirEncryptService;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Unable to communicate with DirEncryptService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setSdCardEncryptionPolicy result : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    if-eq v2, p1, :cond_2

    const/16 p1, 0xa

    if-ne v2, p1, :cond_3

    :cond_2
    const-string/jumbo p1, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->unmountSDCardByAdmin()V

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    return v2
.end method

.method public blacklist setStorageCardEncryptionPolicy(I)I
    .locals 5

    const-string v0, "SemSdCardEncryption"

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x4

    const/4 v4, 0x7

    :try_start_0
    invoke-interface {v1, p1, v3, v4}, Lcom/samsung/android/security/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Unable to communicate with DirEncryptService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setStorageCardEncryptionPolicy result : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    if-eq v2, p1, :cond_2

    const/16 p1, 0xa

    if-ne v2, p1, :cond_3

    :cond_2
    const-string/jumbo p1, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->unmountSDCardByAdmin()V

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    return v2
.end method

.method public blacklist setUserDiff(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->setUserDiff(Z)V

    return-void
.end method

.method public blacklist unmountSDCardByAdmin()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->unmountSDCardByAdmin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string v0, "Unable to communicate with DirEncryptService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/security/IDirEncryptService;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SemSdCardEncryption"

    const-string p1, "Unable to communicate with DirEncryptService"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.class public Landroid/sec/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final blacklist PWD_CHANGE_NOT_ENFORCED:I = 0x0

.field private static blacklist TAG:Ljava/lang/String; = "PasswordPolicy"

.field public static final blacklist enforcePwdExceptions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 14

    const-string v12, "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity"

    const-string v13, "com.android.incallui.call.InCallActivity"

    const-string v0, "com.android.settings.SubSettings"

    const-string v1, "com.android.settings.ChooseLockPassword"

    const-string v2, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const-string v3, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const-string v4, "com.android.phone.EmergencyDialer"

    const-string v5, "com.android.phone.OutgoingCallBroadcaster"

    const-string v6, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const-string v7, "com.android.phone.InCallScreen"

    const-string v8, "com.android.internal.policy.impl.LockScreen"

    const-string v9, "com.android.internal.policy.impl.PatternUnlockScreen"

    const-string v10, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const-string v11, "com.android.server.telecom.EmergencyCallActivity"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isScreenLockPatternVisibilityEnabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isScreenLockPatternVisibilityEnabled returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isScreenLockPatternVisibilityEnabledAsUser(I)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PXY-isScreenLockPatternVisibilityEnabledAsUser returning default value"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist notifyPasswordPolicyOneLockChanged(ZI)V
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->notifyPasswordPolicyOneLockChanged(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PXY-notifyPasswordPolicyOneLockChanged failed to be called"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

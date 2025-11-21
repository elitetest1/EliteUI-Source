.class public Landroid/sec/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final blacklist ACTION_ICCID_AVAILABLE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ICCID_AVAILABLE_INTERNAL"

.field public static final blacklist ACTION_PHONE_READY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

.field public static final blacklist ACTION_SEND_BLOCKED_MMS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

.field public static final blacklist ACTION_SEND_BLOCKED_SMS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

.field public static final blacklist EXTRA_ORIG_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

.field public static final blacklist EXTRA_PDU_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

.field public static final blacklist EXTRA_SEND_TYPE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

.field public static final blacklist EXTRA_TIME_STAMP_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

.field public static final blacklist PERMISSION_RECEIVE_BLOCKED_SMS_MMS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

.field public static final blacklist RCS_FEATURE_ALL:I = 0x1

.field public static final blacklist SENDTYPE_GENERIC:I = -0x1

.field private static blacklist TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addNumberOfIncomingCalls()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingCalls()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-addNumberOfIncomingCalls returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist addNumberOfIncomingSms()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingSms()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-addNumberOfIncomingSms returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist addNumberOfOutgoingCalls()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingCalls()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-addNumberOfOutgoingCalls returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist addNumberOfOutgoingSms()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingSms()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-addNumberOfOutgoingSms returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canIncomingCall(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingCall(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-canIncomingCall returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist canIncomingSms(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingSms(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PXY-canIncomingSms returning default value"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist canOutgoingCall(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-canOutgoingCall returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist canOutgoingSms(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PXY-canOutgoingSms returning default value"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist decreaseNumberOfOutgoingSms()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->decreaseNumberOfOutgoingSms()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-decreaseNumberOfOutgoingSms returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getEmergencyCallOnly(Z)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->getEmergencyCallOnly(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PXY-getEmergencyCallOnly returning default value"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isBlockMmsWithStorageEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isBlockMmsWithStorageEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "PXY-isBlockMmsWithStorageEnabled returning default value"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isBlockSmsWithStorageEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isBlockSmsWithStorageEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "PXY-isBlockSmsWithStorageEnabled returning default value"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isCopyContactToSimAllowed(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isCopyContactToSimAllowed(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isCopyContactToSimAllowed returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isDataAllowedFromSimSlot(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isDataAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isDataAllowedFromSimSlot returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isIncomingCallAllowedFromSimSlot(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isIncomingCallAllowedFromSimSlot returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isIncomingMmsAllowed()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isIncomingMmsAllowed()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isIncomingMmsAllowed returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isIncomingSmsAllowed()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isIncomingSmsAllowed()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isIncomingSmsAllowed returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isIncomingSmsAllowedFromSimSlot(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isIncomingSmsAllowedFromSimSlot returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isLimitNumberOfSmsEnabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isLimitNumberOfSmsEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isLimitNumberOfSmsEnabled returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMmsAllowedFromSimSlot(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isMmsAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isMmsAllowedFromSimSlot returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isOutgoingCallAllowedFromSimSlot(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-phoneRestrictionPolicy returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isOutgoingSmsAllowed()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingSmsAllowed()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isOutgoingSmsAllowed returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isOutgoingSmsAllowedFromSimSlot(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isOutgoingSmsAllowedFromSimSlot returning default value "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isSmsPatternCheckRequired()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isSmsPatternCheckRequired()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isSmsPatternCheckRequired returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isWapPushAllowed()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isWapPushAllowed()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PXY-isWapPushAllowed returning default value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p7}, Landroid/sec/enterprise/IEDMProxy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PXY-storeBlockedSmsMms fail to save sms/mms"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.class public abstract Landroid/service/euicc/EuiccService;
.super Landroid/app/Service;
.source "EuiccService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;,
        Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;,
        Landroid/service/euicc/EuiccService$Result;,
        Landroid/service/euicc/EuiccService$ResolvableError;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BIND_CARRIER_PROVISIONING_SERVICE:Ljava/lang/String; = "android.service.euicc.action.BIND_CARRIER_PROVISIONING_SERVICE"

.field public static final whitelist ACTION_CONVERT_TO_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.service.euicc.action.CONVERT_TO_EMBEDDED_SUBSCRIPTION"

.field public static final whitelist ACTION_DELETE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.service.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.service.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

.field public static final whitelist ACTION_RENAME_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.RENAME_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_RESOLVE_CONFIRMATION_CODE:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_RESOLVE_DEACTIVATE_SIM:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

.field public static final blacklist ACTION_RESOLVE_NO_EUICC_TARGET:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_NO_EUICC_TARGET"

.field public static final whitelist ACTION_RESOLVE_NO_PRIVILEGES:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

.field public static final whitelist ACTION_RESOLVE_RESOLVABLE_ERRORS:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_RESOLVABLE_ERRORS"

.field public static final blacklist ACTION_RESOLVE_UPDATE_VERSION_AVAILABLE:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_UPDATE_VERSION_AVAILABLE"

.field public static final whitelist ACTION_START_CARRIER_ACTIVATION:Ljava/lang/String; = "android.service.euicc.action.START_CARRIER_ACTIVATION"

.field public static final whitelist ACTION_START_EUICC_ACTIVATION:Ljava/lang/String; = "android.service.euicc.action.START_EUICC_ACTIVATION"

.field public static final whitelist ACTION_TOGGLE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.TOGGLE_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_TRANSFER_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.service.euicc.action.TRANSFER_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist CATEGORY_EUICC_UI:Ljava/lang/String; = "android.service.euicc.category.EUICC_UI"

.field public static final whitelist EUICC_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.euicc.EuiccService"

.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.service.euicc.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_RESOLUTION_ALLOW_POLICY_RULES:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES"

.field public static final whitelist EXTRA_RESOLUTION_CALLING_PACKAGE:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

.field public static final whitelist EXTRA_RESOLUTION_CARD_ID:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CARD_ID"

.field public static final whitelist EXTRA_RESOLUTION_CONFIRMATION_CODE:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

.field public static final whitelist EXTRA_RESOLUTION_CONFIRMATION_CODE_RETRIED:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED"

.field public static final whitelist EXTRA_RESOLUTION_CONSENT:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONSENT"

.field public static final whitelist EXTRA_RESOLUTION_PORT_INDEX:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

.field public static final whitelist EXTRA_RESOLUTION_SUBSCRIPTION_ID:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_SUBSCRIPTION_ID"

.field public static final whitelist EXTRA_RESOLUTION_USE_PORT_INDEX:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

.field public static final whitelist EXTRA_RESOLVABLE_ERRORS:Ljava/lang/String; = "android.service.euicc.extra.RESOLVABLE_ERRORS"

.field public static final whitelist RESOLVABLE_ERROR_CONFIRMATION_CODE:I = 0x1

.field public static final blacklist RESOLVABLE_ERROR_NETWORK_LOCK_STATE_LOCKED:I = 0x200

.field public static final blacklist RESOLVABLE_ERROR_NETWORK_LOCK_STATE_UNKNOWN:I = 0x100

.field public static final blacklist RESOLVABLE_ERROR_NO_PRIVILEGED:I = 0x400

.field public static final whitelist RESOLVABLE_ERROR_POLICY_RULES:I = 0x2

.field public static final whitelist RESULT_FIRST_USER:I = 0x1

.field public static final whitelist RESULT_MUST_DEACTIVATE_SIM:I = -0x1

.field public static final whitelist RESULT_NEED_CONFIRMATION_CODE:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_RESOLVABLE_ERRORS:I = -0x2

.field private static final blacklist TAG:Ljava/lang/String; = "EuiccService"


# instance fields
.field private greylist-max-o mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final greylist-max-o mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService-IA;)V

    iput-object v0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    return-void
.end method

.method public static blacklist resultToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "FIRST_USER"

    return-object p0

    :cond_1
    const-string p0, "OK"

    return-object p0

    :cond_2
    const-string p0, "MUST_DEACTIVATE_SIM"

    return-object p0

    :cond_3
    const-string p0, "RESOLVABLE_ERRORS"

    return-object p0
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "The connected LPA does not implement EuiccService#dump()"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist encodeSmdxSubjectAndReasonCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "\\."

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_4

    array-length p2, p0

    if-gt p2, v0, :cond_4

    array-length p2, p1

    rsub-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    const/16 v1, 0xa

    shl-int p2, v1, p2

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xf

    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v4, :cond_0

    shl-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SubjectCode exceeds 15"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    array-length p1, p0

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x4

    shl-int p1, p2, v0

    array-length p2, p0

    :goto_1
    if-ge v2, p2, :cond_3

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v4, :cond_2

    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ReasonCode exceeds 15"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return p1

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only three nested layer is supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SubjectCode/ReasonCode is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    return-object p0
.end method

.method public whitelist onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Landroid/service/euicc/EuiccService$1;

    invoke-direct {v7, p0}, Landroid/service/euicc/EuiccService$1;-><init>(Landroid/service/euicc/EuiccService;)V

    const/4 v1, 0x4

    const/4 v2, 0x4

    const-wide/16 v3, 0x1e

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public abstract whitelist onDeleteSubscription(ILjava/lang/String;)I
.end method

.method public whitelist onDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public whitelist onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZ)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 p0, -0x80000000

    return p0
.end method

.method public whitelist onDownloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LPA must override onDownloadSubscription"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract whitelist onEraseSubscriptions(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onEraseSubscriptions(II)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This method must be overridden to enable the ResetOption parameter"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist onGetAvailableMemoryInBytes(I)J
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The connected LPA does not implementEuiccService#onGetAvailableMemoryInBytes(int)"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist onGetDefaultDownloadableSubscriptionList(IZ)Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
.end method

.method public whitelist onGetDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LPA must override onGetDownloadableSubscriptionMetadata"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.end method

.method public abstract whitelist onGetEid(I)Ljava/lang/String;
.end method

.method public abstract whitelist onGetEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
.end method

.method public abstract whitelist onGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;
.end method

.method public abstract whitelist onGetOtaStatus(I)I
.end method

.method public abstract whitelist onRetainSubscriptionsForFactoryReset(I)I
.end method

.method public abstract whitelist onStartOtaIfNecessary(ILandroid/service/euicc/EuiccService$OtaStatusChangedCallback;)V
.end method

.method public abstract whitelist onSwitchToSubscription(ILjava/lang/String;Z)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onSwitchToSubscriptionWithPort(IILjava/lang/String;Z)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LPA must override onSwitchToSubscriptionWithPort"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist onUpdateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;)I
.end method

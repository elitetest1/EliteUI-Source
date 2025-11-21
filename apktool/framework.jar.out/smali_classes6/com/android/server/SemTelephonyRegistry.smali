.class public Lcom/android/server/SemTelephonyRegistry;
.super Lcom/android/internal/telephony/ISemTelephonyRegistry$Stub;
.source "SemTelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;,
        Lcom/android/server/SemTelephonyRegistry$Record;,
        Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist DBG_LOC:Z = false

.field private static final blacklist MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemTelephonyRegistry"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private blacklist mConfigurationProvider:Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastSatPhoneId:I

.field private blacklist mLastSatSubId:I

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private blacklist mNumPhones:I

.field private final blacklist mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/SemTelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

.field private blacklist mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mremove(Lcom/android/server/SemTelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SemTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smpii(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/SemTelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/telephony/ISemTelephonyRegistry$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    iput-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatPhoneId:I

    iput v0, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatSubId:I

    new-instance v0, Lcom/android/server/SemTelephonyRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/SemTelephonyRegistry$1;-><init>(Lcom/android/server/SemTelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/SemTelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/SemTelephonyRegistry;->mConfigurationProvider:Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;

    new-instance p2, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-direct {p2}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>()V

    iput-object p2, p0, Lcom/android/server/SemTelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    new-instance p2, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {p2}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>()V

    iput-object p2, p0, Lcom/android/server/SemTelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/SemTelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method private blacklist add(Landroid/os/IBinder;IIZ)Lcom/android/server/SemTelephonyRegistry$Record;
    .locals 7

    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SemTelephonyRegistry$Record;

    iget-object v6, v5, Lcom/android/server/SemTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v6, :cond_0

    monitor-exit v0

    return-object v5

    :cond_0
    iget v5, v5, Lcom/android/server/SemTelephonyRegistry$Record;->callerPid:I

    if-ne v5, p3, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mConfigurationProvider:Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;

    invoke-virtual {v1}, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;->getRegistrationLimit()I

    move-result v1

    if-eqz p4, :cond_4

    const/4 p4, 0x1

    if-lt v1, p4, :cond_4

    if-lt v4, v1, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has exceeded the number of permissible registered listeners. Ignoring request to add."

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/SemTelephonyRegistry;->loge(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/SemTelephonyRegistry;->mConfigurationProvider:Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;

    invoke-virtual {p4, p2}, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;->isRegistrationLimitEnabledInPlatformCompat(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 p2, 0x19

    if-lt v4, p2, :cond_5

    const-string p2, "SemTelephonyRegistry"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has exceeded half the number of permissible registered listeners. Now at "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    new-instance p2, Lcom/android/server/SemTelephonyRegistry$Record;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/SemTelephonyRegistry$Record;-><init>(Lcom/android/server/SemTelephonyRegistry-IA;)V

    iput-object p1, p2, Lcom/android/server/SemTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    new-instance p4, Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;

    invoke-direct {p4, p0, p1}, Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/SemTelephonyRegistry;Landroid/os/IBinder;)V

    iput-object p4, p2, Lcom/android/server/SemTelephonyRegistry$Record;->deathRecipient:Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p4, p2, Lcom/android/server/SemTelephonyRegistry$Record;->deathRecipient:Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;

    invoke-interface {p1, p4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p2

    :catch_0
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private blacklist checkSatellitePermission(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.SATELLITE_COMMUNICATION"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist doesLimitApplyForListeners(II)Z
    .locals 0

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3e9

    if-eq p1, p0, :cond_0

    if-eq p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getPhoneIdFromSubId(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0
.end method

.method private blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private blacklist handleRemoveListLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/SemTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SemTelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SemTelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist pii(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "***"

    return-object p0
.end method

.method private static blacklist pii(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[***, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist remove(Landroid/os/IBinder;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SemTelephonyRegistry$Record;

    iget-object v5, v4, Lcom/android/server/SemTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v5, p1, :cond_1

    iget-object v1, v4, Lcom/android/server/SemTelephonyRegistry$Record;->deathRecipient:Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, v4, Lcom/android/server/SemTelephonyRegistry$Record;->deathRecipient:Lcom/android/server/SemTelephonyRegistry$SemTelephonyRegistryDeathRecipient;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private blacklist validatePhoneId(I)Z
    .locals 0

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/SemTelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addTiantongSatelliteChangeListener(Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-string v0, "addTiantongSatelliteChangeListener"

    invoke-direct {p0, v0}, Lcom/android/server/SemTelephonyRegistry;->checkSatellitePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SemTelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/android/server/SemTelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/SemTelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "Can not create Record instance!"

    invoke-static {p0}, Lcom/android/server/SemTelephonyRegistry;->loge(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/SemTelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/SemTelephonyRegistry$Record;->context:Landroid/content/Context;

    iput-object p1, v1, Lcom/android/server/SemTelephonyRegistry$Record;->tiantongSatelliteChangeListener:Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;

    iput-object p2, v1, Lcom/android/server/SemTelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/server/SemTelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/SemTelephonyRegistry$Record;->callerUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/SemTelephonyRegistry$Record;->callerPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, v1, Lcom/android/server/SemTelephonyRegistry$Record;->tiantongSatelliteChangeListener:Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;

    iget p2, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatPhoneId:I

    iget p3, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatSubId:I

    iget-object v2, p0, Lcom/android/server/SemTelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-interface {p1, p2, p3, v2}, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;->onSemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V

    iget-object p1, v1, Lcom/android/server/SemTelephonyRegistry$Record;->tiantongSatelliteChangeListener:Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;

    iget p2, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatPhoneId:I

    iget p3, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatSubId:I

    iget-object v2, p0, Lcom/android/server/SemTelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-interface {p1, p2, p3, v2}, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;->onSemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p1, v1, Lcom/android/server/SemTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/SemTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/SemTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "SemTelephonyRegistry"

    invoke-static {p2, v1, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "last known state:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/SemTelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "local logs:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/SemTelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "registrations: count="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SemTelephonyRegistry$Record;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist notifySemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SemTelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "notifySemSatelliteServiceStateChanged"

    invoke-direct {p0, v0}, Lcom/android/server/SemTelephonyRegistry;->checkSatellitePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>(Landroid/telephony/satellite/SemSatelliteServiceState;)V

    iput-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    iput p1, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatPhoneId:I

    iput p2, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatSubId:I

    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SemTelephonyRegistry$Record;

    invoke-virtual {v2}, Lcom/android/server/SemTelephonyRegistry$Record;->matchTiantongSatelliteChangeListener()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/android/server/SemTelephonyRegistry$Record;->tiantongSatelliteChangeListener:Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;->onSemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/SemTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemTelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid phoneId: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist notifySemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SemTelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "notifySemSatelliteSignalStrengthChanged"

    invoke-direct {p0, v0}, Lcom/android/server/SemTelephonyRegistry;->checkSatellitePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    iput-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    iput p1, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatPhoneId:I

    iput p2, p0, Lcom/android/server/SemTelephonyRegistry;->mLastSatSubId:I

    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/SemTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SemTelephonyRegistry$Record;

    invoke-virtual {v2}, Lcom/android/server/SemTelephonyRegistry$Record;->matchTiantongSatelliteChangeListener()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/android/server/SemTelephonyRegistry$Record;->tiantongSatelliteChangeListener:Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;->onSemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/SemTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/SemTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/SemTelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid phoneId: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist removeTiantongSatelliteChangeListener(Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SemTelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/SemTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist systemRunning()V
    .locals 0

    return-void
.end method

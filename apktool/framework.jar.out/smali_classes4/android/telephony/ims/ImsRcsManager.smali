.class public Landroid/telephony/ims/ImsRcsManager;
.super Ljava/lang/Object;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;,
        Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;,
        Landroid/telephony/ims/ImsRcsManager$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SHOW_CAPABILITY_DISCOVERY_OPT_IN:Ljava/lang/String; = "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

.field public static final blacklist CAPABILITY_TYPE_MAX:I = 0x3

.field public static final whitelist CAPABILITY_TYPE_NONE:I = 0x0

.field public static final whitelist CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1

.field public static final whitelist CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "ImsRcsManager"


# instance fields
.field private final blacklist mAvailabilityChangedCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;",
            "Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private final blacklist mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/telephony/ims/ImsRcsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    iput-object p4, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    return-void
.end method

.method private blacklist addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .locals 1

    new-instance v0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V

    iget-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .locals 0

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRegistrationState$0(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getRegistrationTransportType$1(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public whitelist addOnAvailabilityChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager;->addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object p1

    :try_start_0
    iget p0, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error calling IImsRcsController#registerRcsAvailabilityCallback"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Remote IMS Service is not available"

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_0
    const-string p0, "Add availability changed listener: IImsRcsController is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Cannot find remote IMS service"

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null Executor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_0

    :try_start_0
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$1;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Get registration state error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "Get registration state error: IImsRcsController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot find remote IMS service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null Executor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null stateCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_0

    :try_start_0
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$2;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Get registration transport type error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "Get registration transport type error: IImsRcsController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot find remote IMS service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null Executor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null transportTypeCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;
    .locals 2

    new-instance v0, Landroid/telephony/ims/RcsUceAdapter;

    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    iget p0, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-direct {v0, v1, p0}, Landroid/telephony/ims/RcsUceAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist isAvailable(II)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_0

    :try_start_0
    iget p0, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isAvailable(III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Error calling IImsRcsController#isAvailable"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Remote IMS Service is not available"

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_0
    const-string p0, "isAvailable: IImsRcsController is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Cannot find remote IMS service"

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist isCapable(II)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_0

    :try_start_0
    iget p0, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isCapable(III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Error calling IImsRcsController#isCapable"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Remote IMS Service is not available"

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_0
    const-string p0, "isCapable: IImsRcsController is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Cannot find remote IMS service"

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    :try_start_0
    iget p0, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_0
    const-string p0, "ImsRcsManager"

    const-string p1, "Register registration callback: IImsRcsController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Cannot find remote IMS service"

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null Executor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null RegistrationCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {p1, p2, v0}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ITelephony;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object p2

    iget-object p0, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, p2, p0}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_0
    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Telephony server is down"

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public whitelist removeOnAvailabilityChangedListener(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const-string v1, "ImsRcsManager"

    if-nez v0, :cond_0

    const-string p0, "Remove availability changed listener: IImsRcsController is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager;->removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget p0, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error calling IImsRcsController#unregisterRcsAvailabilityCallback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget p0, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const-string p0, "ImsRcsManager"

    const-string p1, "Unregister registration callback: IImsRcsController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot find remote IMS service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must include a non-null RegistrationCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .locals 1

    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {p0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ITelephony;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

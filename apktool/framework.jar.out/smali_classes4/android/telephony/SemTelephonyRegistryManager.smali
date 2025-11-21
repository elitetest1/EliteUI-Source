.class public Landroid/telephony/SemTelephonyRegistryManager;
.super Ljava/lang/Object;
.source "SemTelephonyRegistryManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemTelephonyRegistryManager"

.field private static blacklist sRegistry:Lcom/android/internal/telephony/ISemTelephonyRegistry;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mTiantongSatelliteChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;",
            "Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/SemTelephonyRegistryManager;->mTiantongSatelliteChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Landroid/telephony/SemTelephonyRegistryManager;->mContext:Landroid/content/Context;

    sget-object p0, Landroid/telephony/SemTelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ISemTelephonyRegistry;

    if-nez p0, :cond_0

    const-string/jumbo p0, "sem.telephony.registry"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/ISemTelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephonyRegistry;

    move-result-object p0

    sput-object p0, Landroid/telephony/SemTelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ISemTelephonyRegistry;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addTiantongSatelliteChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;)V
    .locals 3

    const-string v0, "Executor should be non-null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Listener should be non-null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "addTiantongSatelliteChangeListener"

    const-string v1, "SemTelephonyRegistryManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/SemTelephonyRegistryManager;->mTiantongSatelliteChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "registerCarrierConfigChangeListener: listener already present"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/telephony/SemTelephonyRegistryManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/SemTelephonyRegistryManager$1;-><init>(Landroid/telephony/SemTelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;)V

    :try_start_0
    sget-object p1, Landroid/telephony/SemTelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ISemTelephonyRegistry;

    iget-object v1, p0, Landroid/telephony/SemTelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SemTelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/ISemTelephonyRegistry;->addTiantongSatelliteChangeListener(Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/SemTelephonyRegistryManager;->mTiantongSatelliteChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist notifySemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "notifySemSatelliteServiceStateChanged, ignored: invalid phoneId "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemTelephonyRegistryManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object p0, Landroid/telephony/SemTelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ISemTelephonyRegistry;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/ISemTelephonyRegistry;->notifySemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist notifySemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "notifySemSatelliteSignalStrengthChanged, ignored: invalid slotIndex "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemTelephonyRegistryManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object p0, Landroid/telephony/SemTelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ISemTelephonyRegistry;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/ISemTelephonyRegistry;->notifySemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeTiantongSatelliteChangedListener(Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;)V
    .locals 3

    const-string v0, "Listener should be non-null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SemTelephonyRegistryManager;->mTiantongSatelliteChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "SemTelephonyRegistryManager"

    const-string/jumbo p1, "removeTiantongSatelliteChangedListener: listener was not present"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/telephony/SemTelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ISemTelephonyRegistry;

    iget-object v1, p0, Landroid/telephony/SemTelephonyRegistryManager;->mTiantongSatelliteChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;

    iget-object v2, p0, Landroid/telephony/SemTelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ISemTelephonyRegistry;->removeTiantongSatelliteChangeListener(Lcom/android/internal/telephony/ITiantongSatelliteChangeListener;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/SemTelephonyRegistryManager;->mTiantongSatelliteChangeListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

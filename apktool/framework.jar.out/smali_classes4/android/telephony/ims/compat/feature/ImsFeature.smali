.class public abstract Landroid/telephony/ims/compat/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/feature/ImsFeature$ImsState;
    }
.end annotation


# static fields
.field public static final greylist-max-o EMERGENCY_MMTEL:I = 0x0

.field public static final greylist-max-o INVALID:I = -0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final greylist-max-o MAX:I = 0x3

.field public static final greylist-max-o MMTEL:I = 0x1

.field public static final greylist-max-o RCS:I = 0x2

.field public static final greylist-max-o STATE_INITIALIZING:I = 0x1

.field public static final greylist-max-o STATE_NOT_AVAILABLE:I = 0x0

.field public static final greylist-max-o STATE_READY:I = 0x2


# instance fields
.field protected greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mSlotId:I

.field private greylist-max-o mState:I

.field private final greylist-max-o mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method private greylist-max-o notifyFeatureState(I)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "ImsFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying ImsFeatureState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const-string v2, "ImsFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t notify feature state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public greylist-max-o addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "ImsFeature"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t notify feature state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public abstract greylist-max-o getBinder()Landroid/os/IInterface;
.end method

.method public greylist-max-r getFeatureState()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    return p0
.end method

.method public abstract greylist-max-o onFeatureReady()V
.end method

.method public abstract greylist-max-o onFeatureRemoved()V
.end method

.method public greylist-max-o removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-o setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected final greylist-max-r setFeatureState(I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->notifyFeatureState(I)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setSlotId(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    return-void
.end method

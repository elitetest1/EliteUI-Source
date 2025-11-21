.class Landroid/telephony/SemTelephonyRegistryManager$1;
.super Lcom/android/internal/telephony/ITiantongSatelliteChangeListener$Stub;
.source "SemTelephonyRegistryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SemTelephonyRegistryManager;->addTiantongSatelliteChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SemTelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/telephony/SemTelephonyRegistryManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/SemTelephonyRegistryManager$1;->val$listener:Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/ITiantongSatelliteChangeListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSemSatelliteServiceStateChanged$0(Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;IILandroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;->onSemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSemSatelliteSignalStrengthChanged$1(Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;->onSemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V

    return-void
.end method


# virtual methods
.method public blacklist onSemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 4

    const-string v0, "SemTelephonyRegistryManager"

    const-string/jumbo v1, "onSemSatelliteServiceStateChanged call in ITiantongSatelliteChangeListener callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/SemTelephonyRegistryManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/telephony/SemTelephonyRegistryManager$1;->val$listener:Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;

    new-instance v3, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;IILandroid/telephony/satellite/SemSatelliteServiceState;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public blacklist onSemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 4

    const-string v0, "SemTelephonyRegistryManager"

    const-string/jumbo v1, "onSemSatelliteSignalStrengthChanged call in ITiantongSatelliteChangeListener callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/SemTelephonyRegistryManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/telephony/SemTelephonyRegistryManager$1;->val$listener:Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;

    new-instance v3, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

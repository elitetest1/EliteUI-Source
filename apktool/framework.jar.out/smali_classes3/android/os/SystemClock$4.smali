.class Landroid/os/SystemClock$4;
.super Landroid/os/SimpleClock;
.source "SystemClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SystemClock;->currentGnssTimeClock()Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mMgr:Landroid/location/ILocationManager;


# direct methods
.method constructor blacklist <init>(Ljava/time/ZoneId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    const-string p1, "location"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object p1

    iput-object p1, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    return-void
.end method


# virtual methods
.method public whitelist test-api millis()J
    .locals 4

    :try_start_0
    iget-object p0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    invoke-interface {p0}, Landroid/location/ILocationManager;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/location/LocationTime;->getUnixEpochTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    new-instance p0, Ljava/time/DateTimeException;

    const-string v0, "Gnss based time is not available."

    invoke-direct {p0, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

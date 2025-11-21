.class public Landroid/telephony/satellite/stub/SatelliteService;
.super Landroid/app/Service;
.source "SatelliteService.java"


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.satellite.SatelliteService"

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteService"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p0, "android.telephony.satellite.SatelliteService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SatelliteService"

    const-string p1, "SatelliteService bound"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/satellite/stub/SatelliteImplBase;

    new-instance p1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/stub/SatelliteImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Landroid/telephony/satellite/stub/SatelliteImplBase;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

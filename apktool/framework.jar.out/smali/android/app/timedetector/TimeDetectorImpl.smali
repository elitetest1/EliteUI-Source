.class public final Landroid/app/timedetector/TimeDetectorImpl;
.super Ljava/lang/Object;
.source "TimeDetectorImpl.java"

# interfaces
.implements Landroid/app/timedetector/TimeDetector;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "timedetector.TimeDetector"


# instance fields
.field private final blacklist mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "time_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timedetector/TimeDetectorImpl;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    return-void
.end method


# virtual methods
.method public blacklist suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/timedetector/TimeDetectorImpl;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {p0, p1}, Landroid/app/timedetector/ITimeDetectorService;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/timedetector/TimeDetectorImpl;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {p0, p1}, Landroid/app/timedetector/ITimeDetectorService;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.class public final Landroid/os/vibrator/VendorVibrationSession;
.super Ljava/lang/Object;
.source "VendorVibrationSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/VendorVibrationSession$Callback;,
        Landroid/os/vibrator/VendorVibrationSession$Status;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_CANCELED:I = 0x4

.field public static final whitelist STATUS_IGNORED:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = 0x5

.field public static final whitelist STATUS_UNSUPPORTED:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "VendorVibrationSession"


# instance fields
.field private final blacklist mSession:Landroid/os/vibrator/IVibrationSession;


# direct methods
.method public constructor blacklist <init>(Landroid/os/vibrator/IVibrationSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    invoke-interface {p0}, Landroid/os/vibrator/IVibrationSession;->cancelSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "VendorVibrationSession"

    const-string v1, "Failed to cancel vendor vibration session."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist test-api close()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    invoke-interface {p0}, Landroid/os/vibrator/IVibrationSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "VendorVibrationSession"

    const-string v1, "Failed to finish vendor vibration session."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    invoke-static {p1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/os/vibrator/IVibrationSession;->vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "VendorVibrationSession"

    const-string p2, "Failed to vibrate in a vendor vibration session."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

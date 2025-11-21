.class public Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceIndication$Default;
.super Ljava/lang/Object;
.source "ISehRadioSatelliteServiceIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/satelliteservice/ISehRadioSatelliteServiceIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onNtnSignalStrengthChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSatelliteCapabilitiesChanged(ILvendor/samsung/hardware/radio/satelliteservice/SehSatelliteCapabilities;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSatelliteDatagramReceived(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSatelliteEcefPositionReceived(I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSatelliteRegistrationFailure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSatelliteSupportedStateChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

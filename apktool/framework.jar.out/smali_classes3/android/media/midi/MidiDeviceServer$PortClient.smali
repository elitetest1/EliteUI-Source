.class abstract Landroid/media/midi/MidiDeviceServer$PortClient;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PortClient"
.end annotation


# instance fields
.field final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->mToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    return-void
.end method

.method abstract greylist-max-o close()V
.end method

.method greylist-max-o getInputPort()Landroid/media/midi/MidiInputPort;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

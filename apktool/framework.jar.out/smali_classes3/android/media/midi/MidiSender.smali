.class public abstract Landroid/media/midi/MidiSender;
.super Ljava/lang/Object;
.source "MidiSender.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist connect(Landroid/media/midi/MidiReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onConnect(Landroid/media/midi/MidiReceiver;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "receiver null in MidiSender.connect"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist disconnect(Landroid/media/midi/MidiReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onDisconnect(Landroid/media/midi/MidiReceiver;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "receiver null in MidiSender.disconnect"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist onConnect(Landroid/media/midi/MidiReceiver;)V
.end method

.method public abstract whitelist onDisconnect(Landroid/media/midi/MidiReceiver;)V
.end method

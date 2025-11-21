.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayVolumeKeyListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    return-void
.end method


# virtual methods
.method public blacklist clearEvents()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "DisplayManager"

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "onMuteKeyStateChanged [UNMUTE]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/hardware/display/SemDisplayVolumeKeyListener;->onMuteKeyStateChanged(Z)V

    return-void

    :pswitch_1
    const-string p1, "onMuteKeyStateChanged [MUTE]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/hardware/display/SemDisplayVolumeKeyListener;->onMuteKeyStateChanged(Z)V

    return-void

    :pswitch_2
    const-string p1, "onVolumeKeyUp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    invoke-interface {p0}, Landroid/hardware/display/SemDisplayVolumeKeyListener;->onVolumeKeyUp()V

    return-void

    :pswitch_3
    const-string p1, "onVolumeKeyDown"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    invoke-interface {p0}, Landroid/hardware/display/SemDisplayVolumeKeyListener;->onVolumeKeyDown()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendDisplayVolumeKeyEvent(I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

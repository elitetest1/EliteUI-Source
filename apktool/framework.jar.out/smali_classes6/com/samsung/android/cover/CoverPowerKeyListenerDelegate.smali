.class Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "CoverPowerKeyListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;,
        Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$SystemEvents;
    }
.end annotation


# static fields
.field private static final greylist MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private greylist mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

.field private greylist mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;


# direct methods
.method constructor greylist <init>(Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    iget-object p3, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;)V

    iput-object p2, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    return-void
.end method


# virtual methods
.method public greylist getListener()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    return-object p0
.end method

.method public greylist onCoverTapLeft()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTapMid()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTapRight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTouchAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTouchReject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

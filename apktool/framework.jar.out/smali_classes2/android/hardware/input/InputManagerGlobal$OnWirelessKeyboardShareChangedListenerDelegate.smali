.class final Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnWirelessKeyboardShareChangedListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_WIRELESS_KEYBOARD_SHARE_CHANGED:I


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;->onWirelessKeyboardShareChanged(JILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    long-to-int v1, p1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

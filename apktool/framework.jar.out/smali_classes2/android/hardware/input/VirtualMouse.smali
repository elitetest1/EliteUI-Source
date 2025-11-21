.class public Landroid/hardware/input/VirtualMouse;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualMouse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/VirtualMouseConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .locals 0

    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public whitelist getCursorPosition()Landroid/graphics/PointF;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object p0, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Landroid/companion/virtual/IVirtualDevice;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic blacklist getInputDeviceId()I
    .locals 0

    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result p0

    return p0
.end method

.method public whitelist sendButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)V
    .locals 3

    const-string v0, "Failed to send button event to virtual mouse "

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v2, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/companion/virtual/IVirtualDevice;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "VirtualInputDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/input/VirtualMouse;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist sendRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)V
    .locals 3

    const-string v0, "Failed to send relative event to virtual mouse "

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v2, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/companion/virtual/IVirtualDevice;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "VirtualInputDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/input/VirtualMouse;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist sendScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)V
    .locals 3

    const-string v0, "Failed to send scroll event to virtual mouse "

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/VirtualMouse;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v2, p0, Landroid/hardware/input/VirtualMouse;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/companion/virtual/IVirtualDevice;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "VirtualInputDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/input/VirtualMouse;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

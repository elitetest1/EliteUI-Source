.class public Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualDevice"
.end annotation


# instance fields
.field private final blacklist mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;


# direct methods
.method private constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    return-void
.end method


# virtual methods
.method public whitelist addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V

    return-void
.end method

.method public whitelist addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/ActivityPolicyExemption;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    return-void
.end method

.method public whitelist addActivityPolicyExemption(Landroid/content/ComponentName;)V
    .locals 1

    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    invoke-direct {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->build()Landroid/companion/virtual/ActivityPolicyExemption;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    return-void
.end method

.method public whitelist addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V

    return-void
.end method

.method public whitelist test-api close()V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->close()V

    return-void
.end method

.method public whitelist createContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->createContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .locals 1

    const-string v0, "display must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualDisplay(IIILandroid/view/Surface;ILjava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualDevice_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p1

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p6, p7}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;
    .locals 1

    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualKeyboard(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualKeyboard;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    invoke-virtual {p3, p4}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    invoke-virtual {p3, p2}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->build()Landroid/hardware/input/VirtualKeyboardConfig;

    move-result-object p1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .locals 1

    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualMouse(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualMouse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseConfig$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-virtual {p3, p4}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-virtual {p3, p2}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->build()Landroid/hardware/input/VirtualMouseConfig;

    move-result-object p1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;
    .locals 1

    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualRotary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Virtual rotary support not enabled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualTouchscreen(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualTouchscreen;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;-><init>(II)V

    invoke-virtual {v1, p3}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    invoke-virtual {p3, p4}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    invoke-virtual {p3, p2}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->build()Landroid/hardware/input/VirtualTouchscreenConfig;

    move-result-object p1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;
    .locals 1

    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDeviceId()I
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->getDeviceId()I

    move-result p0

    return p0
.end method

.method public whitelist getPersistentDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getVirtualSensorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->getVirtualSensorList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist goToSleep()V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->goToSleep()V

    return-void
.end method

.method public whitelist launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 1

    const-string/jumbo v0, "pendingIntent must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal;->launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    return-void
.end method

.method public whitelist removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V

    return-void
.end method

.method public whitelist removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/ActivityPolicyExemption;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    return-void
.end method

.method public whitelist removeActivityPolicyExemption(Landroid/content/ComponentName;)V
    .locals 1

    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    invoke-direct {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->build()Landroid/companion/virtual/ActivityPolicyExemption;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    return-void
.end method

.method public whitelist removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V

    return-void
.end method

.method public whitelist setDevicePolicy(II)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDevicePolicy(II)V

    return-void
.end method

.method public whitelist setDevicePolicy(III)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p3, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDevicePolicyForDisplay(III)V

    return-void
.end method

.method public whitelist setDisplayImePolicy(II)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDisplayImePolicy(II)V

    return-void
.end method

.method public whitelist setShowPointerIcon(Z)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->setShowPointerIcon(Z)V

    return-void
.end method

.method public whitelist unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    return-void
.end method

.method public whitelist wakeUp()V
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->wakeUp()V

    return-void
.end method

.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;,
        Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceBatteryListener;,
        Landroid/hardware/input/InputManager$KeyboardBacklightListener;,
        Landroid/hardware/input/InputManager$StickyModifierStateListener;,
        Landroid/hardware/input/InputManager$KeyGestureEventListener;,
        Landroid/hardware/input/InputManager$KeyGestureEventHandler;,
        Landroid/hardware/input/InputManager$KeyEventActivityListener;,
        Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;,
        Landroid/hardware/input/InputManager$SemTspCommandType;,
        Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;,
        Landroid/hardware/input/InputManager$CustomInputGestureResult;,
        Landroid/hardware/input/InputManager$RemappableModifierKey;,
        Landroid/hardware/input/InputManager$SwitchState;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_QUERY_KEYBOARD_GLYPH_MAPS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_GLYPH_MAPS"

.field public static final whitelist ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field public static final blacklist BLOCK_UNTRUSTED_TOUCHES:J = 0x96aec7eL

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_ALREADY_EXISTS:I = 0x2

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_DOES_NOT_EXIST:I = 0x3

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_OTHER:I = 0x5

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_RESERVED_GESTURE:I = 0x4

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_SUCCESS:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field public static final blacklist DESKTOP_WINDOWING_EXTERNAL_DISPLAY_EXTENDED:I = 0x2

.field public static final blacklist DESKTOP_WINDOWING_EXTERNAL_DISPLAY_PROJECTED:I = 0x1

.field public static final blacklist DESKTOP_WINDOWING_EXTERNAL_DISPLAY_UNDEFINED:I = 0x0

.field private static final blacklist EXTRA_SW_POGO_KEYBOARD:I = 0x0

.field public static final blacklist EXTRA_SW_POGO_KEYBOARD_BIT:I = 0x1

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final greylist INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final blacklist META_DATA_KEYBOARD_GLYPH_MAPS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS"

.field public static final whitelist META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final blacklist MONITOR_FILTER_ALL:I = 0xffff

.field public static final blacklist MONITOR_FILTER_FINGER:I = 0x1

.field public static final blacklist MONITOR_FILTER_KEY:I = 0x10

.field public static final blacklist MONITOR_FILTER_MOUSE:I = 0x4

.field public static final blacklist MONITOR_FILTER_SPEN:I = 0x2

.field public static final whitelist SEM_INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final whitelist SEM_INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final blacklist SEM_INPUT_FEATURE_AOT:I = 0x1

.field public static final blacklist SEM_INPUT_FEATURE_MASK:I = -0x1

.field public static final whitelist SEM_LID_STATE_CLOSED:I = 0x1

.field public static final whitelist SEM_LID_STATE_OPEN:I = 0x0

.field public static final whitelist SEM_LID_STATE_UNKNOWN:I = -0x1

.field public static final greylist-max-o SWITCH_STATE_OFF:I = 0x0

.field public static final greylist-max-o SWITCH_STATE_ON:I = 0x1

.field public static final greylist-max-o SWITCH_STATE_UNKNOWN:I = -0x1

.field private static final blacklist SW_COVER_ATTACH:I = 0x1b

.field public static final blacklist SW_COVER_ATTACH_BIT:I = 0x8000000

.field private static final blacklist SW_NOTE_PAPER_COVER_ATTACH:I = 0x1d

.field public static final blacklist SW_NOTE_PAPER_COVER_ATTACH_BIT:I = 0x20000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final greylist-max-p mIm:Landroid/hardware/input/IInputManager;

.field private blacklist mIsStylusPointerIconEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "InputManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/input/InputManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputManagerService()Landroid/hardware/input/IInputManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iput-object p1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I

    move-result p0

    return p0
.end method

.method public static greylist getInstance()Landroid/hardware/input/InputManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    return-object v0
.end method


# virtual methods
.method public blacklist addCustomInputGesture(Landroid/hardware/input/InputGestureData;)I
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/hardware/input/IInputManager;->addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

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

.method public blacklist addDeviceWirelessKeyboardShare(I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->addDeviceWirelessKeyboardShare(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call addDeviceWirelessKeyboardShare()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    return-void
.end method

.method public greylist-max-o addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist addPortAssociation(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->addPortAssociation(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist areTouchpadGesturesAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist cancelCurrentTouch()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->cancelCurrentTouch()V

    return-void
.end method

.method public blacklist changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call changeDeviceWirelessKeyboardShare()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist clearAllModifierKeyRemappings()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->clearAllModifierKeyRemappings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call connectByBtDevice()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist controlSpenWithToken(Landroid/os/IBinder;Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->controlSpenWithToken(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public greylist-max-o deviceHasKeys(I[I)[Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o deviceHasKeys([I)[Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o disableInputDevice(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->disableInputDevice(I)V

    return-void
.end method

.method public greylist-max-o enableInputDevice(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->enableInputDevice(I)V

    return-void
.end method

.method public blacklist forceFadeIcon(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->forceFadeIcon(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call forceFadeIcon()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getAppLaunchBookmarks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Landroid/hardware/input/InputGestureData;

    invoke-direct {v4, v3}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCurrentSwitchEventState(IZ)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->getCurrentSwitchEventState(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCustomInputGestures(Landroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputGestureData$Filter;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Filter;->getTag()I

    move-result p1

    :goto_0
    invoke-interface {v1, p0, p1}, Landroid/hardware/input/IInputManager;->getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    new-instance v3, Landroid/hardware/input/InputGestureData;

    invoke-direct {v3, v2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGamepadProfile(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->getGamepadProfile(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getGamepadProfileIds()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->getGamepadProfileIds()[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getGlobalMetaState(I)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getGlobalMetaState(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call getGlobalMetaState()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInboundQueueLength()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getInboundQueueLength()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist getInputDevice(I)Landroid/view/InputDevice;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getInputDeviceIds()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInputDevicePath(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getInputDevicePath(I)Ljava/lang/String;

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

.method public blacklist getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .locals 0

    new-instance p0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    return-object p0
.end method

.method public whitelist getInputDeviceViewBehavior(I)Landroid/view/InputDevice$ViewBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getViewBehavior()Landroid/view/InputDevice$ViewBehavior;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInputGesture(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {p1}, Landroid/hardware/input/InputGestureData$Trigger;->getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/hardware/input/IInputManager;->getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Landroid/hardware/input/InputGestureData;

    invoke-direct {p1, p0}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->getKeyCodeForKeyLocation(II)I

    move-result p0

    return p0
.end method

.method public blacklist getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardGlyphMap()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;

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

.method public greylist-max-o getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getKeyboardLayoutDescriptors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

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

.method public blacklist getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inputDeviceDescriptor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getKeyboardLayoutPreview(Landroid/hardware/input/KeyboardLayout;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/hardware/input/PhysicalKeyLayout;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getKeyCharacterMap(Landroid/hardware/input/KeyboardLayout;)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/input/PhysicalKeyLayout;-><init>(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V

    new-instance p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2, p3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;-><init>(Landroid/content/Context;Landroid/hardware/input/PhysicalKeyLayout;II)V

    return-object p1
.end method

.method public blacklist getKeyboardLayoutTypeForLayoutDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getLayoutType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

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

.method public greylist-max-o getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0
.end method

.method public blacklist getLastLidEventTimeNanos()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getMaximumObscuringOpacityForTouch()F
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getMaximumObscuringOpacityForTouch(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public blacklist getModifierKeyRemapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getModifierKeyRemapping()Ljava/util/Map;

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

.method public blacklist getMousePointerSpeed()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getMousePointerSpeed()I

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

.method public blacklist getSupportButtonNStick()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->getSupportButtonNStick()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

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

.method public blacklist getVelocityTrackerStrategy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o isInTabletMode()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->isInTabletMode()I

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

.method public blacklist isMicMuted()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->isMicMuted()I

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

.method public whitelist isStylusPointerIconEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist isUidTouched(I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->isUidTouched(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    const v0, 0xffff

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManagerGlobal;->monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object p0

    return-object p0
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object p0

    return-object p0
.end method

.method public blacklist monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .locals 1

    const v0, 0xffff

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManager;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->pilferPointers(Landroid/os/IBinder;)V

    return-void
.end method

.method public whitelist registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/input/InputManager$KeyGestureEventHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public blacklist registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    return-void
.end method

.method public blacklist registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    return-void
.end method

.method public greylist-max-o registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    return-void
.end method

.method public blacklist remapModifierKey(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->remapModifierKey(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeAllCustomInputGestures(Landroid/hardware/input/InputGestureData$Filter;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Filter;->getTag()I

    move-result p1

    :goto_0
    invoke-interface {v0, p0, p1}, Landroid/hardware/input/IInputManager;->removeAllCustomInputGestures(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeAllDeviceToGamepadProfile()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->removeAllDeviceToGamepadProfile()V

    return-void
.end method

.method public blacklist removeAllGamepadProfiles()V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->removeAllGamepadProfiles()V

    return-void
.end method

.method public blacklist removeCustomInputGesture(Landroid/hardware/input/InputGestureData;)I
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/hardware/input/IInputManager;->removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

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

.method public blacklist removeDeviceToGamepadProfile(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeDeviceToGamepadProfile(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call removeDeviceWirelessKeyboardShare()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist removeGamepadProfile(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeGamepadProfile(I)V

    return-void
.end method

.method public blacklist removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    return-void
.end method

.method public greylist-max-o removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist removePortAssociation(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->removePortAssociation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    return-void
.end method

.method public greylist-max-o requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->requestPointerCapture(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public blacklist resetLockedModifierState()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->resetLockedModifierState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist semCheckInputFeature()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->checkInputFeature()I

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

.method public whitelist semGetLidState()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->semGetLidState()I

    move-result p0

    return p0
.end method

.method public whitelist semGetMotionIdleTimeMillis()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/hardware/input/IInputManager;->semGetMotionIdleTimeMillis(Z)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist semGetScanCodeState(III)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->getScanCodeState(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist semInjectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public whitelist semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist semRegisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->semRegisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist semRegisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->semRegisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist semSetTspEnabled(Landroid/hardware/input/InputManager$SemTspCommandType;Z)Z
    .locals 2

    const-string v0, "InputManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result p1

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->setTspEnabled(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SemTspCommandType should not be null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p0, "Could not call setTspEnabled()"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public whitelist semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public blacklist semSupportPogoDevice()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->supportPogoDevice()Z

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

.method public whitelist semUnregisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->semUnregisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)V

    return-void
.end method

.method public blacklist semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    return-void
.end method

.method public whitelist semUnregisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->semUnregisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)V

    return-void
.end method

.method public blacklist semUnregisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->semUnregisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)V

    return-void
.end method

.method public greylist-max-o setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist setGamepadProfileName(ILjava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->setGamepadProfileName(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist setHostRoleWirelessKeyboardShare()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->setHostRoleWirelessKeyboardShare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InputManager"

    const-string v0, "Could not call setHostRoleWirelessKeyboardShare()"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setIsStylusFromTouchpad(Z)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->setIsStylusFromTouchpad(Z)V

    return-void
.end method

.method public blacklist setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface/range {p0 .. p5}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "identifier must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public greylist setPointerIconType(I)V
    .locals 0

    const-string p0, "InputManager"

    const-string p1, "setPointerIcon: Unsupported app usage!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setRemapGamepadButton(III)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->setRemapGamepadButton(III)Z

    move-result p0

    return p0
.end method

.method public blacklist setRemapGamepadStick(IIIZZZ)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/input/InputManagerGlobal;->setRemapGamepadStick(IIIZZZ)Z

    move-result p0

    return p0
.end method

.method public blacklist setShowAllTouches(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->setShowAllTouches(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call setShowAllTouches(boolean)"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setStartedShutdown(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public greylist-max-o setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Could not call switchDeviceWirelessKeyboardShare()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o tryPointerSpeed(I)V
    .locals 1

    const/4 v0, -0x7

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z

    move-result p0

    return p0
.end method

.method public blacklist unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    return-void
.end method

.method public blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    return-void
.end method

.method public greylist-max-o unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V

    return-void
.end method

.method public blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    return-void
.end method

.method public blacklist updateDeviceToGamepadProfile(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->updateDeviceToGamepadProfile(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist updateWirelessKeyboardShareStatus()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->updateWirelessKeyboardShareStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InputManager"

    const-string v0, "Could not call updateWirelessKeyboardShareStatus()"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

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

.class public final Landroid/hardware/input/InputManagerGlobal;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManagerGlobal$TestSession;,
        Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;,
        Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;,
        Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;,
        Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;,
        Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;,
        Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;,
        Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;
    }
.end annotation


# static fields
.field private static final blacklist CONVERSION_TYPE_SPEN_TO_MOUSE:I = 0x2774

.field private static final blacklist MSG_MULTI_FINGER_GESTURE:I = 0x1

.field private static final blacklist MSG_POINTERICON_CHANGED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "InputManagerGlobal"

.field private static blacklist sInstance:Landroid/hardware/input/InputManagerGlobal;


# instance fields
.field private blacklist mBatteryListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBatteryListenersLock:Ljava/lang/Object;

.field private blacklist mDeviceId:I

.field private blacklist mDragPointerIcon:Landroid/view/PointerIcon;

.field private blacklist mDragToken:Landroid/os/IBinder;

.field private final blacklist mIm:Landroid/hardware/input/IInputManager;

.field private blacklist mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

.field private final blacklist mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

.field private blacklist mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

.field private blacklist mIsStylusFromTouchpad:Z

.field private blacklist mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

.field private blacklist mKeyEventActivityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManager$KeyEventActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyEventActivityLock:Ljava/lang/Object;

.field private blacklist mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

.field private final blacklist mKeyGestureEventListenerLock:Ljava/lang/Object;

.field private blacklist mKeyGestureEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

.field private final blacklist mKeyGesturesToHandlerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/InputManager$KeyGestureEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

.field private final blacklist mKeyboardBacklightListenerLock:Ljava/lang/Object;

.field private blacklist mKeyboardBacklightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLidStateChangedListener:Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;

.field private final blacklist mLidStateLock:Ljava/lang/Object;

.field private blacklist mMultiFingerGestureListener:Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

.field private final blacklist mMultiFingerGestureLock:Ljava/lang/Object;

.field private blacklist mOnMultiFingerGestureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnPointerIconChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnSwitchEventChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnTabletModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPointerIcon:Landroid/view/PointerIcon;

.field private blacklist mPointerIconChangedListener:Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

.field private final blacklist mPointerIconLock:Ljava/lang/Object;

.field private blacklist mPointerIconType:I

.field private blacklist mPointerId:I

.field private blacklist mSemOnLidStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

.field private final blacklist mStickyModifierStateListenerLock:Ljava/lang/Object;

.field private blacklist mStickyModifierStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSwitchEventChangedListener:Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

.field private final blacklist mSwitchEventChangedLock:Ljava/lang/Object;

.field private final blacklist mVelocityTrackerStrategy:Ljava/lang/String;

.field private blacklist mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

.field private final blacklist mWirelessKeyboardShareLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryListenersLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyEventActivityListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyEventActivityLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGestureEventListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGestureEventListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGesturesToHandlerMap(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardBacklightListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardBacklightListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStickyModifierStateListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStickyModifierStateListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManagerGlobal;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->onInputDevicesChanged([I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLidStateChanged(Landroid/hardware/input/InputManagerGlobal;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->onLidStateChanged(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMultiFingerGesture(Landroid/hardware/input/InputManagerGlobal;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->onMultiFingerGesture(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPointerIconChanged(Landroid/hardware/input/InputManagerGlobal;ILandroid/view/PointerIcon;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->onPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSwitchEventChanged(Landroid/hardware/input/InputManagerGlobal;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->onSwitchEventChanged(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTabletModeChanged(Landroid/hardware/input/InputManagerGlobal;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->onTabletModeChanged(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWirelessKeyboardShareChanged(Landroid/hardware/input/InputManagerGlobal;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->onWirelessKeyboardShareChanged(JILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/IInputManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    :try_start_0
    invoke-interface {p1}, Landroid/hardware/input/IInputManager;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not get VelocityTracker strategy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManagerGlobal"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    return-void
.end method

.method private static blacklist containsDeviceId([II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static blacklist createTestSession(Landroid/hardware/input/IInputManager;)Landroid/hardware/input/InputManagerGlobal$TestSession;
    .locals 3

    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {v2, p0}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v2, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    new-instance p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist debug()Z
    .locals 1

    const-string p0, "InputManagerGlobal"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private blacklist findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private blacklist findOnSwitchEventChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getInstance()Landroid/hardware/input/InputManagerGlobal;
    .locals 3

    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    if-nez v1, :cond_0

    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v2, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    :cond_0
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist initializeLidStateListenerLocked()V
    .locals 2

    new-instance v0, Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateChangedListener:Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist initializeMultiFingerGestureListenerLocked()V
    .locals 2

    new-instance v0, Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureListener:Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist initializePointerIconChangedListenerLocked()V
    .locals 2

    new-instance v0, Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconChangedListener:Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist initializeSwitchEventChangedListenerLocked()V
    .locals 2

    new-instance v0, Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerSwitchEventChangedListener(Landroid/hardware/input/ISwitchEventChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedListener:Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist initializeTabletModeListenerLocked()V
    .locals 2

    new-instance v0, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, v0}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist initializeWirelessKeyboardShareListenerLocked()V
    .locals 2

    new-instance v0, Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static synthetic blacklist lambda$createTestSession$0(Landroid/hardware/input/InputManagerGlobal;)V
    .locals 0

    sput-object p0, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    return-void
.end method

.method static synthetic blacklist lambda$unregisterKeyGestureEventListener$3(Landroid/hardware/input/InputManager$KeyGestureEventListener;Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;)Z
    .locals 0

    iget-object p1, p1, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$unregisterKeyboardBacklightListener$1(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;)Z
    .locals 0

    iget-object p1, p1, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$unregisterStickyModifierStateListener$2(Landroid/hardware/input/InputManager$StickyModifierStateListener;Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;)Z
    .locals 0

    iget-object p1, p1, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist mappingToMousePointer(I)I
    .locals 0

    const/16 p0, 0x4e21

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 p0, 0x4e20

    if-le p1, p0, :cond_0

    add-int/lit16 p1, p1, -0x26ac

    :cond_0
    return p1

    :pswitch_0
    const/16 p0, 0x278d

    return p0

    :pswitch_1
    const/16 p0, 0x278c

    return p0

    :pswitch_2
    const/16 p0, 0x278b

    return p0

    :pswitch_3
    const/16 p0, 0x278a

    return p0

    :cond_1
    :pswitch_4
    const/16 p0, 0x2789

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4e26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist onInputDevicesChanged([I)V
    .locals 10

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "InputManagerGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received input devices changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :cond_1
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_5

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/hardware/input/InputManagerGlobal;->containsDeviceId([II)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, "<null>"

    :goto_1
    const-string v5, "InputManagerGlobal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceRemoved(I)V

    :cond_4
    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_c

    aget v3, p1, v2

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_8

    iget-object v6, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice;

    if-eqz v6, :cond_b

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    invoke-virtual {v6}, Landroid/view/InputDevice;->getGeneration()I

    move-result v8

    if-eq v8, v7, :cond_b

    if-eqz v0, :cond_6

    const-string v7, "InputManagerGlobal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceChanged(I)V

    :cond_7
    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    const-string v4, "InputManagerGlobal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceAdded(I)V

    :cond_a
    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    :cond_c
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onLidStateChanged(JZ)V
    .locals 4

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received lid state changed: whenNanos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lidOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;->sendLidStateChanged(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onMultiFingerGesture(II)V
    .locals 5

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputManagerGlobal"

    const-string v1, "multi finger gesture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 6

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputManagerGlobal"

    const-string v1, "Received pointer icon changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1, v2, p2}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconType:I

    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIcon:Landroid/view/PointerIcon;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onSwitchEventChanged(IIII)V
    .locals 4

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputManagerGlobal"

    const-string v1, "switch event change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->sendSwitchEventChanged(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onTabletModeChanged(JZ)V
    .locals 4

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received tablet mode changed: whenNanos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", inTabletMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received wireless keyboard share changed: whenNanos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->sendWirelessKeyboardShareChanged(JILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist populateInputDevicesLocked()V
    .locals 6

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v0}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method private blacklist sendMessageToInputDeviceListenersLocked(II)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    invoke-virtual {v3, p1, p2, v1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .locals 4

    const-string v0, "executor should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    if-nez v1, :cond_1

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    invoke-direct {v1, v2}, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;-><init>(Landroid/hardware/input/InputManagerGlobal-IA;)V

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v2, p1, p0}, Landroid/hardware/input/IInputManager;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object p0, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_3

    iget-object v3, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempting to register an InputDeviceBatteryListener that has already been registered for deviceId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    invoke-direct {p0, p3, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceBatteryListener;Ljava/util/concurrent/Executor;)V

    iget-object p1, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    if-eqz p1, :cond_4

    iget-object p1, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist cancelCurrentTouch()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->cancelCurrentTouch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist closeLightSession(ILandroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->closeLightSession(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist clreaDragPointerInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mDragToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mDragPointerIcon:Landroid/view/PointerIcon;

    return-void
.end method

.method public blacklist controlSpenWithToken(Landroid/os/IBinder;Z)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->controlSpenWithToken(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not control sec_e-pen device with token = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputManagerGlobal"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist deviceHasKeys(I[I)[Z
    .locals 2

    array-length v0, p2

    new-array v0, v0, [Z

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v1, -0x100

    invoke-interface {p0, p1, v1, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist deviceHasKeys([I)[Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableInputDevice(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not disable input device with id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManagerGlobal"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist disableSensor(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->disableSensor(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist enableInputDevice(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not enable input device with id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManagerGlobal"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist enableSensor(IIII)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->enableSensor(IIII)Z

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

.method final blacklist findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method blacklist flushSensor(II)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->flushSensor(II)Z

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

.method public blacklist getGamepadProfile(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getGamepadProfile(I)Ljava/lang/String;

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

.method public blacklist getGamepadProfileIds()[I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getGamepadProfileIds()[I

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

.method blacklist getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;
    .locals 5

    const-string v0, "display should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist getInputDevice(I)Landroid/view/InputDevice;
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_0
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist getInputDeviceBatteryState(IZ)Landroid/hardware/BatteryState;
    .locals 1

    if-nez p2, :cond_0

    new-instance p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object p0

    new-instance p1, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    iget-boolean p2, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-direct {p1, p2, v0, p0}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

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

.method blacklist getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .locals 5

    const-string v0, "descriptor must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v3}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v0

    return-object v3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist getInputDeviceIds()[I
    .locals 5

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;
    .locals 0

    new-instance p0, Landroid/hardware/input/InputDeviceLightsManager;

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceLightsManager;-><init>(I)V

    return-object p0
.end method

.method public blacklist getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/input/InputDeviceSensorManager;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    :cond_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .locals 0

    new-instance p0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    return-object p0
.end method

.method public blacklist getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;
    .locals 0

    new-instance p0, Landroid/hardware/input/InputDeviceVibratorManager;

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceVibratorManager;-><init>(I)V

    return-object p0
.end method

.method public blacklist getInputManagerService()Landroid/hardware/input/IInputManager;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    return-object p0
.end method

.method public blacklist getKeyCharacterMap(Landroid/hardware/input/KeyboardLayout;)Landroid/view/KeyCharacterMap;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;

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

.method public blacklist getKeyCodeForKeyLocation(II)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->getKeyCodeForKeyLocation(II)I

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

.method public blacklist getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0
.end method

.method blacklist getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->getLightState(II)Landroid/hardware/lights/LightState;

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

.method blacklist getLights(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getLights(I)Ljava/util/List;

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

.method public blacklist getPointerIconType()I
    .locals 3

    const-string v0, "getPointerIconType = "

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getPointerIconType()I

    move-result v1

    iput v1, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconType:I

    const-string v1, "InputManagerGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget p0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconType:I

    return p0
.end method

.method blacklist getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

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

.method public blacklist getSupportButtonNStick()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getSupportButtonNStick()Ljava/lang/String;

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

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getVibratorIds(I)[I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->getVibratorIds(I)[I

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

.method public blacklist injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result p0

    return p0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .locals 1

    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mode is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

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

.method blacklist isVibrating(I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->isVibrating(I)Z

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

.method public blacklist monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0, p1, p2}, Landroid/hardware/input/IInputManager;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

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

.method public blacklist monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->monitorGestureInputFiltered(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

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

.method public blacklist monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist notifyQuickAccess(IFF)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->notifyQuickAccess(IFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->pilferPointers(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .locals 3

    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v1}, Landroid/hardware/input/IInputManager;->registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener has already been registered!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .locals 5
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

    const-string v0, "List of gestures should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "handler should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/IntArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    if-eq v3, p2, :cond_0

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Handler has already been registered!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Key gesture "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered by another handler!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    if-eqz v2, :cond_4

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, v2}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    :goto_2
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2, v1, v3}, Landroid/hardware/input/IInputManager;->registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No key gestures provided!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v1}, Landroid/hardware/input/IInputManager;->registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    if-eq v3, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener has already been registered!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;-><init>(Landroid/hardware/input/InputManager$KeyGestureEventListener;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v1}, Landroid/hardware/input/IInputManager;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-eq v3, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener has already been registered!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeTabletModeListenerLocked()V

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeWirelessKeyboardShareListenerLocked()V

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

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

.method blacklist registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v1}, Landroid/hardware/input/IInputManager;->registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    if-eq v3, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener has already been registered!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;-><init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

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

.method public blacklist removeAllDeviceToGamepadProfile()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->removeAllDeviceToGamepadProfile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeAllGamepadProfiles()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->removeAllGamepadProfiles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeDeviceToGamepadProfile(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->removeDeviceToGamepadProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeGamepadProfile(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->removeGamepadProfile(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .locals 4

    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    iget-object p2, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {p2, p1, v1}, Landroid/hardware/input/IInputManager;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    :cond_5
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist requestLights(ILandroid/hardware/lights/LightsRequest;Landroid/os/IBinder;)V
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-array v0, v3, [Landroid/hardware/lights/LightState;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/lights/LightState;

    invoke-interface {p0, p1, v2, p2, p3}, Landroid/hardware/input/IInputManager;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist semGetLidState()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0}, Landroid/hardware/input/IInputManager;->getLidState()I

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

.method public blacklist semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeLidStateListenerLocked()V

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureListener:Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeMultiFingerGestureListenerLocked()V

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semRegisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconChangedListener:Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializePointerIconChangedListenerLocked()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semRegisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedListener:Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeSwitchEventChangedListenerLocked()V

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnSwitchEventChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;Landroid/os/Handler;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public blacklist semUnregisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semUnregisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semUnregisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnSwitchEventChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 0

    const-string p0, "InputManagerGlobal"

    const-string p1, "setCustomPointerIcon: Unsupported app usage!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setDisplayIdForPointerIcon(I)V
    .locals 3

    const-string v0, "setDisplayIdForPointerIcon = "

    :try_start_0
    const-string v1, "InputManagerGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->setDisplayIdForPointerIcon(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public blacklist setDragPointerIcon(Landroid/view/PointerIcon;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mDragPointerIcon:Landroid/view/PointerIcon;

    return-void
.end method

.method public blacklist setDragPointerInfo(Landroid/os/IBinder;II)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mDragToken:Landroid/os/IBinder;

    iput p2, p0, Landroid/hardware/input/InputManagerGlobal;->mDeviceId:I

    iput p3, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerId:I

    return-void
.end method

.method public blacklist setGamepadProfileName(ILjava/lang/String;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->setGamepadProfileName(ILjava/lang/String;)Z

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

.method public blacklist setIsStylusFromTouchpad(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIsStylusFromTouchpad:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIsStylusFromTouchpad:Z

    :cond_0
    return-void
.end method

.method public blacklist setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "keyboardLayoutDescriptor should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface/range {p0 .. p5}, Landroid/hardware/input/IInputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setPointerIconType(I)V
    .locals 0

    const-string p0, "InputManagerGlobal"

    const-string p1, "setPointerIconType: Unsupported app usage!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setRemapGamepadButton(III)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setRemapGamepadButton(III)Z

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

.method public blacklist setRemapGamepadStick(IIIZZZ)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface/range {p0 .. p6}, Landroid/hardware/input/IInputManager;->setRemapGamepadStick(IIIZZZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .locals 3

    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .locals 3

    const-string v0, "handler should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    :try_start_1
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .locals 3

    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .locals 3

    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .locals 1

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1}, Landroid/hardware/input/IInputManager;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .locals 3

    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

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

.method public blacklist updateDeviceToGamepadProfile(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2}, Landroid/hardware/input/IInputManager;->updateDeviceToGamepadProfile(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist updateDragPointerIcon(I)V
    .locals 6

    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mDragToken:Landroid/os/IBinder;

    if-eqz v5, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mDragPointerIcon:Landroid/view/PointerIcon;

    if-eqz v1, :cond_0

    iget v3, p0, Landroid/hardware/input/InputManagerGlobal;->mDeviceId:I

    iget v4, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerId:I

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    :cond_0
    return-void
.end method

.method blacklist vibrate(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

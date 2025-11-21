.class final Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceBatteryListenerDelegate"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$EFmjYNCJERYjTSX75R9ktl_HLAc(Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->lambda$notifyBatteryStateChanged$0(Landroid/hardware/input/IInputDeviceBatteryState;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/input/InputManager$InputDeviceBatteryListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$notifyBatteryStateChanged$0(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 6

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    iget v0, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    new-instance v3, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    iget-boolean v4, p1, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v5, p1, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget p1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-direct {v3, v4, v5, p1}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/hardware/input/InputManager$InputDeviceBatteryListener;->onBatteryStateChanged(IJLandroid/hardware/BatteryState;)V

    return-void
.end method


# virtual methods
.method blacklist notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;Landroid/hardware/input/IInputDeviceBatteryState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final blacklist TRANSACTION_abortTransient:I = 0x39

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x25

.field static final blacklist TRANSACTION_addQsTileToFrontOrEnd:I = 0x26

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x7

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x6

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x19

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x1b

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x18

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x47

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x29

.field static final blacklist TRANSACTION_confirmImmersivePrompt:I = 0x14

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_disableForAllDisplays:I = 0x4

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x3b

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x16

.field static final blacklist TRANSACTION_dumpProto:I = 0x4c

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2a

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x32

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xd

.field static final blacklist TRANSACTION_hideToast:I = 0x3d

.field static final blacklist TRANSACTION_immersiveModeChanged:I = 0x15

.field static final blacklist TRANSACTION_moveFocusedTaskToDesktop:I = 0x52

.field static final blacklist TRANSACTION_moveFocusedTaskToFullscreen:I = 0x4e

.field static final blacklist TRANSACTION_moveFocusedTaskToStageSplit:I = 0x4f

.field static final blacklist TRANSACTION_notifyPenState:I = 0x5e

.field static final blacklist TRANSACTION_notifyRequestedGameToolsWin:I = 0x5a

.field static final blacklist TRANSACTION_notifyRequestedSystemKey:I = 0x58

.field static final blacklist TRANSACTION_notifySamsungPayInfo:I = 0x56

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2f

.field static final blacklist TRANSACTION_onBiometricError:I = 0x31

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x30

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1e

.field static final blacklist TRANSACTION_onDisplayAddSystemDecorations:I = 0x35

.field static final blacklist TRANSACTION_onDisplayRemoveSystemDecorations:I = 0x36

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x20

.field static final blacklist TRANSACTION_onFlashlightKeyPressed:I = 0x5c

.field static final blacklist TRANSACTION_onFocusedDisplayChanged:I = 0x57

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x23

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x37

.field static final blacklist TRANSACTION_onWalletLaunchGestureDetected:I = 0x1f

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x42

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0x11

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x4a

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x27

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x46

.field static final blacklist TRANSACTION_requestMagnificationConnection:I = 0x41

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x45

.field static final blacklist TRANSACTION_resetScheduleAutoHide:I = 0x55

.field static final blacklist TRANSACTION_runGcForTest:I = 0x44

.field static final blacklist TRANSACTION_sendKeyEventToDesktopTaskbar:I = 0x5d

.field static final blacklist TRANSACTION_sendThreeFingerGestureKeyEvent:I = 0x59

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x33

.field static final blacklist TRANSACTION_setBlueLightFilter:I = 0x53

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xa

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x43

.field static final blacklist TRANSACTION_setNavigationBarShortcut:I = 0x54

.field static final blacklist TRANSACTION_setQsTiles:I = 0x28

.field static final blacklist TRANSACTION_setSplitscreenFocus:I = 0x50

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x24

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x34

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xb

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x1c

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2e

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x22

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x3a

.field static final blacklist TRANSACTION_showMediaOutputSwitcher:I = 0x51

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x21

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2b

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2c

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4d

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xc

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x2d

.field static final blacklist TRANSACTION_showToast:I = 0x3c

.field static final blacklist TRANSACTION_showTransient:I = 0x38

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x9

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x1d

.field static final blacklist TRANSACTION_startSearcleByHomeKey:I = 0x5b

.field static final blacklist TRANSACTION_startTracing:I = 0x3e

.field static final blacklist TRANSACTION_stopTracing:I = 0x3f

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x40

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x17

.field static final blacklist TRANSACTION_toggleNotificationsPanel:I = 0x8

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xe

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0x10

.field static final blacklist TRANSACTION_toggleTaskbar:I = 0xf

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x4b

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x49

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x48


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "notifyPenState"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "sendKeyEventToDesktopTaskbar"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "onFlashlightKeyPressed"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "startSearcleByHomeKey"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "notifyRequestedGameToolsWin"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "sendThreeFingerGestureKeyEvent"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "notifyRequestedSystemKey"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "onFocusedDisplayChanged"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "notifySamsungPayInfo"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "resetScheduleAutoHide"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "setNavigationBarShortcut"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "setBlueLightFilter"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "moveFocusedTaskToDesktop"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "showMediaOutputSwitcher"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "setSplitscreenFocus"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "moveFocusedTaskToStageSplit"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "moveFocusedTaskToFullscreen"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "showRearDisplayDialog"

    return-object p0

    :pswitch_12
    const-string p0, "dumpProto"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "unregisterNearbyMediaDevicesProvider"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "registerNearbyMediaDevicesProvider"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "updateMediaTapToTransferReceiverDisplay"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "updateMediaTapToTransferSenderDisplay"

    return-object p0

    :pswitch_17
    const-string p0, "cancelRequestAddTile"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "requestAddTile"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "requestTileServiceListeningState"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "runGcForTest"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "setNavigationBarLumaSamplingEnabled"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "passThroughShellCommand"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "requestMagnificationConnection"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "suppressAmbientDisplay"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "stopTracing"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "startTracing"

    return-object p0

    :pswitch_21
    const-string p0, "hideToast"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "showToast"

    return-object p0

    :pswitch_23
    const-string p0, "dismissInattentiveSleepWarning"

    return-object p0

    :pswitch_24
    const-string/jumbo p0, "showInattentiveSleepWarning"

    return-object p0

    :pswitch_25
    const-string p0, "abortTransient"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "showTransient"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "onSystemBarAttributesChanged"

    return-object p0

    :pswitch_28
    const-string/jumbo p0, "onDisplayRemoveSystemDecorations"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "onDisplayAddSystemDecorations"

    return-object p0

    :pswitch_2a
    const-string/jumbo p0, "setUdfpsRefreshRateCallback"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "setBiometicContextListener"

    return-object p0

    :pswitch_2c
    const-string p0, "hideAuthenticationDialog"

    return-object p0

    :pswitch_2d
    const-string/jumbo p0, "onBiometricError"

    return-object p0

    :pswitch_2e
    const-string/jumbo p0, "onBiometricHelp"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "onBiometricAuthenticated"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "showAuthenticationDialog"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "showShutdownUi"

    return-object p0

    :pswitch_32
    const-string/jumbo p0, "showPinningEscapeToast"

    return-object p0

    :pswitch_33
    const-string/jumbo p0, "showPinningEnterExitToast"

    return-object p0

    :pswitch_34
    const-string p0, "handleSystemKey"

    return-object p0

    :pswitch_35
    const-string p0, "clickQsTile"

    return-object p0

    :pswitch_36
    const-string/jumbo p0, "setQsTiles"

    return-object p0

    :pswitch_37
    const-string/jumbo p0, "remQsTile"

    return-object p0

    :pswitch_38
    const-string p0, "addQsTileToFrontOrEnd"

    return-object p0

    :pswitch_39
    const-string p0, "addQsTile"

    return-object p0

    :pswitch_3a
    const-string/jumbo p0, "setTopAppHidesStatusBar"

    return-object p0

    :pswitch_3b
    const-string/jumbo p0, "onProposedRotationChanged"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "showGlobalActionsMenu"

    return-object p0

    :pswitch_3d
    const-string/jumbo p0, "showPictureInPictureMenu"

    return-object p0

    :pswitch_3e
    const-string/jumbo p0, "onEmergencyActionLaunchGestureDetected"

    return-object p0

    :pswitch_3f
    const-string/jumbo p0, "onWalletLaunchGestureDetected"

    return-object p0

    :pswitch_40
    const-string/jumbo p0, "onCameraLaunchGestureDetected"

    return-object p0

    :pswitch_41
    const-string/jumbo p0, "startAssist"

    return-object p0

    :pswitch_42
    const-string/jumbo p0, "showAssistDisclosure"

    return-object p0

    :pswitch_43
    const-string p0, "appTransitionFinished"

    return-object p0

    :pswitch_44
    const-string p0, "appTransitionStarting"

    return-object p0

    :pswitch_45
    const-string p0, "appTransitionCancelled"

    return-object p0

    :pswitch_46
    const-string p0, "appTransitionPending"

    return-object p0

    :pswitch_47
    const-string/jumbo p0, "toggleKeyboardShortcutsMenu"

    return-object p0

    :pswitch_48
    const-string p0, "dismissKeyboardShortcutsMenu"

    return-object p0

    :pswitch_49
    const-string p0, "immersiveModeChanged"

    return-object p0

    :pswitch_4a
    const-string p0, "confirmImmersivePrompt"

    return-object p0

    :pswitch_4b
    const-string/jumbo p0, "showScreenPinningRequest"

    return-object p0

    :pswitch_4c
    const-string p0, "cancelPreloadRecentApps"

    return-object p0

    :pswitch_4d
    const-string/jumbo p0, "preloadRecentApps"

    return-object p0

    :pswitch_4e
    const-string/jumbo p0, "toggleSplitScreen"

    return-object p0

    :pswitch_4f
    const-string/jumbo p0, "toggleTaskbar"

    return-object p0

    :pswitch_50
    const-string/jumbo p0, "toggleRecentApps"

    return-object p0

    :pswitch_51
    const-string p0, "hideRecentApps"

    return-object p0

    :pswitch_52
    const-string/jumbo p0, "showRecentApps"

    return-object p0

    :pswitch_53
    const-string/jumbo p0, "setWindowState"

    return-object p0

    :pswitch_54
    const-string/jumbo p0, "setImeWindowStatus"

    return-object p0

    :pswitch_55
    const-string/jumbo p0, "showWirelessChargingAnimation"

    return-object p0

    :pswitch_56
    const-string/jumbo p0, "toggleNotificationsPanel"

    return-object p0

    :pswitch_57
    const-string p0, "animateCollapsePanels"

    return-object p0

    :pswitch_58
    const-string p0, "animateExpandSettingsPanel"

    return-object p0

    :pswitch_59
    const-string p0, "animateExpandNotificationsPanel"

    return-object p0

    :pswitch_5a
    const-string p0, "disableForAllDisplays"

    return-object p0

    :pswitch_5b
    const-string p0, "disable"

    return-object p0

    :pswitch_5c
    const-string/jumbo p0, "removeIcon"

    return-object p0

    :pswitch_5d
    const-string/jumbo p0, "setIcon"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x5d

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v2, p2

    const-string v3, "com.android.internal.statusbar.IStatusBar"

    const/4 v12, 0x1

    if-lt p1, v12, :cond_0

    const v4, 0xffffff

    if-gt p1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :cond_1
    move-object/from16 v4, p3

    packed-switch p1, :pswitch_data_0

    move-object v13, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyPenState(I)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFlashlightKeyPressed(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startSearcleByHomeKey(ZZ)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedGameToolsWin(Z)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedSystemKey(ZZ)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFocusedDisplayChanged(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->resetScheduleAutoHide()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBlueLightFilter(ZI)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToDesktop(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSplitscreenFocus(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToStageSplit(IZ)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToFullscreen(I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRearDisplayDialog(I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v6, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    goto/16 :goto_0

    :pswitch_19
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestMagnificationConnection(Z)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move-object v2, v4

    move-object v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v8

    move-object/from16 v9, p2

    move-object v7, v8

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    goto/16 :goto_0

    :pswitch_23
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    goto/16 :goto_0

    :pswitch_25
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(II)V

    goto/16 :goto_0

    :pswitch_26
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(IIZ)V

    goto/16 :goto_0

    :pswitch_27
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    goto/16 :goto_0

    :pswitch_28
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayRemoveSystemDecorations(I)V

    goto/16 :goto_0

    :pswitch_29
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayAddSystemDecorations(I)V

    goto/16 :goto_0

    :pswitch_2a
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    goto/16 :goto_0

    :pswitch_2b
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    goto/16 :goto_0

    :pswitch_2c
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    goto/16 :goto_0

    :pswitch_2d
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    goto/16 :goto_0

    :pswitch_2e
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2f
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    goto/16 :goto_0

    :pswitch_30
    move-object v9, v2

    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, p2

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_31
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    goto/16 :goto_0

    :pswitch_33
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    goto/16 :goto_0

    :pswitch_34
    move-object v13, v2

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_35
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :pswitch_36
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setQsTiles([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_37
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :pswitch_38
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0

    :pswitch_39
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :pswitch_3a
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    goto/16 :goto_0

    :pswitch_3b
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    goto/16 :goto_0

    :pswitch_3c
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu(I)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onWalletLaunchGestureDetected()V

    goto/16 :goto_0

    :pswitch_40
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    goto/16 :goto_0

    :pswitch_41
    move-object v13, v2

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    goto/16 :goto_0

    :pswitch_43
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    goto/16 :goto_0

    :pswitch_44
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    goto/16 :goto_0

    :pswitch_45
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    goto/16 :goto_0

    :pswitch_46
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    goto/16 :goto_0

    :pswitch_47
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    goto/16 :goto_0

    :pswitch_49
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->immersiveModeChanged(IZI)V

    goto/16 :goto_0

    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->confirmImmersivePrompt()V

    goto/16 :goto_0

    :pswitch_4b
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    goto/16 :goto_0

    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    goto/16 :goto_0

    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    goto/16 :goto_0

    :pswitch_4e
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    goto/16 :goto_0

    :pswitch_4f
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleTaskbar()V

    goto/16 :goto_0

    :pswitch_50
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    goto/16 :goto_0

    :pswitch_51
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    goto/16 :goto_0

    :pswitch_52
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    goto/16 :goto_0

    :pswitch_53
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    goto/16 :goto_0

    :pswitch_54
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(IIIZ)V

    goto/16 :goto_0

    :pswitch_55
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    goto :goto_0

    :pswitch_56
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationsPanel()V

    goto :goto_0

    :pswitch_57
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    goto :goto_0

    :pswitch_58
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_59
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    goto :goto_0

    :pswitch_5a
    move-object v13, v2

    sget-object v1, Lcom/android/internal/statusbar/DisableStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/DisableStates;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disableForAllDisplays(Lcom/android/internal/statusbar/DisableStates;)V

    goto :goto_0

    :pswitch_5b
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    goto :goto_0

    :pswitch_5c
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5d
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final greylist-max-o TRANSACTION_addTile:I = 0x2a

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x40

.field static final blacklist TRANSACTION_clearInlineReplyUriPermissions:I = 0x22

.field static final greylist-max-o TRANSACTION_clearNotificationEffects:I = 0x12

.field static final greylist-max-o TRANSACTION_clickTile:I = 0x2c

.field static final greylist-max-o TRANSACTION_collapsePanels:I = 0x2

.field static final blacklist TRANSACTION_collapsePanelsToType:I = 0x56

.field static final greylist-max-o TRANSACTION_disable:I = 0x4

.field static final greylist-max-o TRANSACTION_disable2:I = 0x6

.field static final greylist-max-o TRANSACTION_disable2ForUser:I = 0x7

.field static final blacklist TRANSACTION_disable2ForUserToType:I = 0x4f

.field static final blacklist TRANSACTION_disable2ToType:I = 0x4e

.field static final greylist-max-o TRANSACTION_disableForUser:I = 0x5

.field static final blacklist TRANSACTION_disableForUserToType:I = 0x4d

.field static final blacklist TRANSACTION_disableToType:I = 0x4c

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x39

.field static final greylist-max-o TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final blacklist TRANSACTION_expandNotificationsPanelToType:I = 0x55

.field static final greylist-max-o TRANSACTION_expandSettingsPanel:I = 0xd

.field static final blacklist TRANSACTION_expandSettingsPanelForDisplay:I = 0x59

.field static final blacklist TRANSACTION_expandSettingsPanelToType:I = 0x57

.field static final blacklist TRANSACTION_getDisableFlags:I = 0x8

.field static final blacklist TRANSACTION_getDisableFlagsToType:I = 0x50

.field static final blacklist TRANSACTION_getLastSystemKey:I = 0x2e

.field static final blacklist TRANSACTION_getNavBarMode:I = 0x42

.field static final blacklist TRANSACTION_getPanelExpandStateToType:I = 0x53

.field static final blacklist TRANSACTION_getQuickSettingPanelExpandStateToType:I = 0x54

.field static final blacklist TRANSACTION_grantInlineReplyUriPermission:I = 0x21

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2d

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x35

.field static final blacklist TRANSACTION_hideCurrentInputMethodForBubbles:I = 0x20

.field static final blacklist TRANSACTION_isFOTAAvailableForGlobalActions:I = 0x28

.field static final blacklist TRANSACTION_isSysUiSafeModeEnabled:I = 0x5e

.field static final blacklist TRANSACTION_isTracing:I = 0x3c

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x32

.field static final blacklist TRANSACTION_onBiometricError:I = 0x34

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x33

.field static final blacklist TRANSACTION_onBubbleMetadataFlagChanged:I = 0x1f

.field static final greylist-max-o TRANSACTION_onClearAllNotifications:I = 0x16

.field static final greylist-max-o TRANSACTION_onGlobalActionsHidden:I = 0x25

.field static final greylist-max-o TRANSACTION_onGlobalActionsShown:I = 0x24

.field static final greylist-max-o TRANSACTION_onNotificationActionClick:I = 0x14

.field static final blacklist TRANSACTION_onNotificationBubbleChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_onNotificationClear:I = 0x17

.field static final greylist-max-o TRANSACTION_onNotificationClick:I = 0x13

.field static final blacklist TRANSACTION_onNotificationDataUpdateFromPDC:I = 0x63

.field static final greylist-max-o TRANSACTION_onNotificationDirectReplied:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationError:I = 0x15

.field static final greylist-max-o TRANSACTION_onNotificationExpansionChanged:I = 0x19

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x23

.field static final greylist-max-o TRANSACTION_onNotificationSettingsViewed:I = 0x1d

.field static final greylist-max-o TRANSACTION_onNotificationSmartReplySent:I = 0x1c

.field static final blacklist TRANSACTION_onNotificationSmartSuggestionsAdded:I = 0x1b

.field static final greylist-max-o TRANSACTION_onNotificationVisibilityChanged:I = 0x18

.field static final greylist-max-o TRANSACTION_onPanelHidden:I = 0x11

.field static final greylist-max-o TRANSACTION_onPanelRevealed:I = 0x10

.field static final blacklist TRANSACTION_onSessionEnded:I = 0x46

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x45

.field static final greylist-max-o TRANSACTION_reboot:I = 0x27

.field static final blacklist TRANSACTION_rebootByBixby:I = 0x60

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x49

.field static final blacklist TRANSACTION_registerSessionListener:I = 0x43

.field static final greylist-max-o TRANSACTION_registerStatusBar:I = 0xe

.field static final blacklist TRANSACTION_registerStatusBarAsType:I = 0x51

.field static final blacklist TRANSACTION_registerStatusBarForAllDisplays:I = 0xf

.field static final blacklist TRANSACTION_registerStatusBarForCarLife:I = 0x61

.field static final greylist-max-o TRANSACTION_remTile:I = 0x2b

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0xb

.field static final blacklist TRANSACTION_requestAddTile:I = 0x3f

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3e

.field static final blacklist TRANSACTION_resetScheduleAutoHide:I = 0x5b

.field static final blacklist TRANSACTION_restart:I = 0x29

.field static final blacklist TRANSACTION_sendKeyEventToDesktopTaskbar:I = 0x62

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x36

.field static final blacklist TRANSACTION_setBlueLightFilter:I = 0x5d

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setIconVisibility:I = 0xa

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xc

.field static final blacklist TRANSACTION_setIndicatorBgColor:I = 0x5c

.field static final blacklist TRANSACTION_setNavBarMode:I = 0x41

.field static final blacklist TRANSACTION_setNavigationBarShortcut:I = 0x5a

.field static final blacklist TRANSACTION_setPanelExpandStateToType:I = 0x52

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x37

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x31

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x38

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2f

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x30

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4b

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x26

.field static final blacklist TRANSACTION_shutdownByBixby:I = 0x5f

.field static final blacklist TRANSACTION_startTracing:I = 0x3a

.field static final blacklist TRANSACTION_stopTracing:I = 0x3b

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3d

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x3

.field static final blacklist TRANSACTION_togglePanelForDisplay:I = 0x58

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x4a

.field static final blacklist TRANSACTION_unregisterSessionListener:I = 0x44

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x48

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x47


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "onNotificationDataUpdateFromPDC"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "sendKeyEventToDesktopTaskbar"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "registerStatusBarForCarLife"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "rebootByBixby"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "shutdownByBixby"

    return-object p0

    :pswitch_5
    const-string p0, "isSysUiSafeModeEnabled"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "setBlueLightFilter"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setIndicatorBgColor"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "resetScheduleAutoHide"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "setNavigationBarShortcut"

    return-object p0

    :pswitch_a
    const-string p0, "expandSettingsPanelForDisplay"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "togglePanelForDisplay"

    return-object p0

    :pswitch_c
    const-string p0, "expandSettingsPanelToType"

    return-object p0

    :pswitch_d
    const-string p0, "collapsePanelsToType"

    return-object p0

    :pswitch_e
    const-string p0, "expandNotificationsPanelToType"

    return-object p0

    :pswitch_f
    const-string p0, "getQuickSettingPanelExpandStateToType"

    return-object p0

    :pswitch_10
    const-string p0, "getPanelExpandStateToType"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "setPanelExpandStateToType"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "registerStatusBarAsType"

    return-object p0

    :pswitch_13
    const-string p0, "getDisableFlagsToType"

    return-object p0

    :pswitch_14
    const-string p0, "disable2ForUserToType"

    return-object p0

    :pswitch_15
    const-string p0, "disable2ToType"

    return-object p0

    :pswitch_16
    const-string p0, "disableForUserToType"

    return-object p0

    :pswitch_17
    const-string p0, "disableToType"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "showRearDisplayDialog"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "unregisterNearbyMediaDevicesProvider"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "registerNearbyMediaDevicesProvider"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "updateMediaTapToTransferReceiverDisplay"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "updateMediaTapToTransferSenderDisplay"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "onSessionEnded"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "onSessionStarted"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "unregisterSessionListener"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "registerSessionListener"

    return-object p0

    :pswitch_21
    const-string p0, "getNavBarMode"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "setNavBarMode"

    return-object p0

    :pswitch_23
    const-string p0, "cancelRequestAddTile"

    return-object p0

    :pswitch_24
    const-string/jumbo p0, "requestAddTile"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "requestTileServiceListeningState"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "suppressAmbientDisplay"

    return-object p0

    :pswitch_27
    const-string p0, "isTracing"

    return-object p0

    :pswitch_28
    const-string/jumbo p0, "stopTracing"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "startTracing"

    return-object p0

    :pswitch_2a
    const-string p0, "dismissInattentiveSleepWarning"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "showInattentiveSleepWarning"

    return-object p0

    :pswitch_2c
    const-string/jumbo p0, "setUdfpsRefreshRateCallback"

    return-object p0

    :pswitch_2d
    const-string/jumbo p0, "setBiometicContextListener"

    return-object p0

    :pswitch_2e
    const-string p0, "hideAuthenticationDialog"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "onBiometricError"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "onBiometricHelp"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "onBiometricAuthenticated"

    return-object p0

    :pswitch_32
    const-string/jumbo p0, "showAuthenticationDialog"

    return-object p0

    :pswitch_33
    const-string/jumbo p0, "showPinningEscapeToast"

    return-object p0

    :pswitch_34
    const-string/jumbo p0, "showPinningEnterExitToast"

    return-object p0

    :pswitch_35
    const-string p0, "getLastSystemKey"

    return-object p0

    :pswitch_36
    const-string p0, "handleSystemKey"

    return-object p0

    :pswitch_37
    const-string p0, "clickTile"

    return-object p0

    :pswitch_38
    const-string/jumbo p0, "remTile"

    return-object p0

    :pswitch_39
    const-string p0, "addTile"

    return-object p0

    :pswitch_3a
    const-string/jumbo p0, "restart"

    return-object p0

    :pswitch_3b
    const-string p0, "isFOTAAvailableForGlobalActions"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "reboot"

    return-object p0

    :pswitch_3d
    const-string/jumbo p0, "shutdown"

    return-object p0

    :pswitch_3e
    const-string/jumbo p0, "onGlobalActionsHidden"

    return-object p0

    :pswitch_3f
    const-string/jumbo p0, "onGlobalActionsShown"

    return-object p0

    :pswitch_40
    const-string/jumbo p0, "onNotificationFeedbackReceived"

    return-object p0

    :pswitch_41
    const-string p0, "clearInlineReplyUriPermissions"

    return-object p0

    :pswitch_42
    const-string p0, "grantInlineReplyUriPermission"

    return-object p0

    :pswitch_43
    const-string p0, "hideCurrentInputMethodForBubbles"

    return-object p0

    :pswitch_44
    const-string/jumbo p0, "onBubbleMetadataFlagChanged"

    return-object p0

    :pswitch_45
    const-string/jumbo p0, "onNotificationBubbleChanged"

    return-object p0

    :pswitch_46
    const-string/jumbo p0, "onNotificationSettingsViewed"

    return-object p0

    :pswitch_47
    const-string/jumbo p0, "onNotificationSmartReplySent"

    return-object p0

    :pswitch_48
    const-string/jumbo p0, "onNotificationSmartSuggestionsAdded"

    return-object p0

    :pswitch_49
    const-string/jumbo p0, "onNotificationDirectReplied"

    return-object p0

    :pswitch_4a
    const-string/jumbo p0, "onNotificationExpansionChanged"

    return-object p0

    :pswitch_4b
    const-string/jumbo p0, "onNotificationVisibilityChanged"

    return-object p0

    :pswitch_4c
    const-string/jumbo p0, "onNotificationClear"

    return-object p0

    :pswitch_4d
    const-string/jumbo p0, "onClearAllNotifications"

    return-object p0

    :pswitch_4e
    const-string/jumbo p0, "onNotificationError"

    return-object p0

    :pswitch_4f
    const-string/jumbo p0, "onNotificationActionClick"

    return-object p0

    :pswitch_50
    const-string/jumbo p0, "onNotificationClick"

    return-object p0

    :pswitch_51
    const-string p0, "clearNotificationEffects"

    return-object p0

    :pswitch_52
    const-string/jumbo p0, "onPanelHidden"

    return-object p0

    :pswitch_53
    const-string/jumbo p0, "onPanelRevealed"

    return-object p0

    :pswitch_54
    const-string/jumbo p0, "registerStatusBarForAllDisplays"

    return-object p0

    :pswitch_55
    const-string/jumbo p0, "registerStatusBar"

    return-object p0

    :pswitch_56
    const-string p0, "expandSettingsPanel"

    return-object p0

    :pswitch_57
    const-string/jumbo p0, "setImeWindowStatus"

    return-object p0

    :pswitch_58
    const-string/jumbo p0, "removeIcon"

    return-object p0

    :pswitch_59
    const-string/jumbo p0, "setIconVisibility"

    return-object p0

    :pswitch_5a
    const-string/jumbo p0, "setIcon"

    return-object p0

    :pswitch_5b
    const-string p0, "getDisableFlags"

    return-object p0

    :pswitch_5c
    const-string p0, "disable2ForUser"

    return-object p0

    :pswitch_5d
    const-string p0, "disable2"

    return-object p0

    :pswitch_5e
    const-string p0, "disableForUser"

    return-object p0

    :pswitch_5f
    const-string p0, "disable"

    return-object p0

    :pswitch_60
    const-string/jumbo p0, "togglePanel"

    return-object p0

    :pswitch_61
    const-string p0, "collapsePanels"

    return-object p0

    :pswitch_62
    const-string p0, "expandNotificationsPanel"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x62

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    const-string v3, "com.android.internal.statusbar.IStatusBarService"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_1
    packed-switch v1, :pswitch_data_0

    move-object v14, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDataUpdateFromPDC(Ljava/util/List;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarForCarLife(Lcom/android/internal/carlife/IStatusBarCarLife;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->rebootByBixby(Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdownByBixby()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isSysUiSafeModeEnabled()Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBlueLightFilter(ZI)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIndicatorBgColor(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->resetScheduleAutoHide()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
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

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanelForDisplay(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanelForDisplay(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanelToType(Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanelsToType(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanelToType(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getQuickSettingPanelExpandStateToType(I)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getPanelExpandStateToType(I)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setPanelExpandStateToType(ZI)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;I)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlagsToType(Landroid/os/IBinder;II)[I

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ToType(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableToType(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRearDisplayDialog(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1f
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getNavBarMode()I

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_22
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavBarMode(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_24
    move-object v6, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v5

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_25
    move-object v6, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_26
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->suppressAmbientDisplay(Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isTracing()Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->stopTracing()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startTracing()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->dismissInattentiveSleepWarning(Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showInattentiveSleepWarning()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2c
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideAuthenticationDialog(J)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2f
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricError(III)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_30
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricHelp(ILjava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_31
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricAuthenticated(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_32
    move-object v6, v2

    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v14, p2

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEscapeToast()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_34
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEnterExitToast(Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getLastSystemKey()I

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_36
    move-object v14, v2

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_37
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_38
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_39
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->restart()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isFOTAAvailableForGlobalActions()Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3c
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->reboot(Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdown()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsHidden()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsShown()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_40
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_41
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearInlineReplyUriPermissions(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_42
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_43
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideCurrentInputMethodForBubbles(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_44
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_45
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_46
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSettingsViewed(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_47
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_48
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_49
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDirectReplied(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4a
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4b
    move-object v14, v2

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4c
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(IZ)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4e
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4f
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/Notification$Action;

    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_50
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_51
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    goto/16 :goto_0

    :pswitch_52
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_53
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_54
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarForAllDisplays(Lcom/android/internal/statusbar/IStatusBar;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12}, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    :pswitch_55
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_56
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_57
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(IIIZ)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_58
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_59
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5a
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5b
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_5c
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_5d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_5e
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_5f
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_60
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanel()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_61
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_62
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
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

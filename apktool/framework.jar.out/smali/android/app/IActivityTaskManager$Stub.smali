.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAppTask:I = 0x2b

.field static final blacklist TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x52

.field static final blacklist TRANSACTION_canBeUniversalResizeable:I = 0x1f

.field static final blacklist TRANSACTION_cancelTaskWindowTransition:I = 0x49

.field static final blacklist TRANSACTION_clearAppLockedUnLockedApp:I = 0x86

.field static final blacklist TRANSACTION_clearLaunchParamsForPackages:I = 0x5d

.field static final blacklist TRANSACTION_clearRecentTasks:I = 0x61

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0x60

.field static final blacklist TRANSACTION_finishVoiceTask:I = 0x2a

.field static final blacklist TRANSACTION_focusTopTask:I = 0x23

.field static final blacklist TRANSACTION_getActivityClientController:I = 0x11

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x37

.field static final blacklist TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x39

.field static final blacklist TRANSACTION_getAppCompatAlignment:I = 0x76

.field static final blacklist TRANSACTION_getAppLockedCheckAction:I = 0x88

.field static final blacklist TRANSACTION_getAppLockedLockType:I = 0x87

.field static final blacklist TRANSACTION_getAppLockedPackageList:I = 0x83

.field static final blacklist TRANSACTION_getAppTaskThumbnailSize:I = 0x2c

.field static final blacklist TRANSACTION_getAppTasks:I = 0x27

.field static final blacklist TRANSACTION_getApplockLockedAppsClass:I = 0x91

.field static final blacklist TRANSACTION_getApplockLockedAppsPackage:I = 0x90

.field static final blacklist TRANSACTION_getApplockType:I = 0x92

.field static final blacklist TRANSACTION_getAssistContextExtras:I = 0x3c

.field static final blacklist TRANSACTION_getCompatChangeablePackageInfoList:I = 0x6a

.field static final blacklist TRANSACTION_getCoverLauncherAppCompatAlignment:I = 0x78

.field static final blacklist TRANSACTION_getCoverLauncherAvailableAppList:I = 0x96

.field static final blacklist TRANSACTION_getCoverLauncherEnabledAppList:I = 0x97

.field static final blacklist TRANSACTION_getCoverLauncherEnabledAppListByType:I = 0x98

.field static final blacklist TRANSACTION_getCutoutPolicy:I = 0x7f

.field static final blacklist TRANSACTION_getCutoutPolicyForSettings:I = 0x80

.field static final blacklist TRANSACTION_getDeviceConfigurationInfo:I = 0x48

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x21

.field static final blacklist TRANSACTION_getFoldStarManagerService:I = 0x69

.field static final blacklist TRANSACTION_getFrontActivityScreenCompatMode:I = 0x12

.field static final blacklist TRANSACTION_getLastResumedActivityUserId:I = 0x4c

.field static final blacklist TRANSACTION_getLockTaskModeState:I = 0x26

.field static final blacklist TRANSACTION_getMultiTaskingBinder:I = 0x68

.field static final blacklist TRANSACTION_getOrientationControlPolicy:I = 0x71

.field static final blacklist TRANSACTION_getPackageAskScreenCompat:I = 0x5b

.field static final blacklist TRANSACTION_getPackageFeatureInfo:I = 0x6d

.field static final blacklist TRANSACTION_getPackageScreenCompatMode:I = 0x59

.field static final blacklist TRANSACTION_getRecentTasks:I = 0x1c

.field static final blacklist TRANSACTION_getResumedTaskThumbnail:I = 0x7d

.field static final blacklist TRANSACTION_getRootTaskInfo:I = 0x38

.field static final blacklist TRANSACTION_getRootTaskInfoOnDisplay:I = 0x3a

.field static final blacklist TRANSACTION_getScpmVersion:I = 0x6c

.field static final blacklist TRANSACTION_getSsecureHiddenAppsPackages:I = 0x94

.field static final blacklist TRANSACTION_getTaskBounds:I = 0x22

.field static final blacklist TRANSACTION_getTaskDescriptionIcon:I = 0x2e

.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x4a

.field static final blacklist TRANSACTION_getTaskSnapshotLowResolution:I = 0xa0

.field static final blacklist TRANSACTION_getTasks:I = 0x1a

.field static final blacklist TRANSACTION_getUserOrSystemMinAspectRatioOverrideCode:I = 0x74

.field static final blacklist TRANSACTION_getVoiceInteractorPackageName:I = 0x9

.field static final blacklist TRANSACTION_getWindowOrganizerController:I = 0x45

.field static final blacklist TRANSACTION_isActivityStartAllowedOnDisplay:I = 0xf

.field static final blacklist TRANSACTION_isAppLockedPackage:I = 0x85

.field static final blacklist TRANSACTION_isAppLockedVerifying:I = 0x8a

.field static final blacklist TRANSACTION_isApplockEnabled:I = 0x93

.field static final blacklist TRANSACTION_isAssistDataAllowed:I = 0x3f

.field static final blacklist TRANSACTION_isInLockTaskMode:I = 0x25

.field static final blacklist TRANSACTION_isPackageEnabledForCoverLauncher:I = 0x99

.field static final blacklist TRANSACTION_isPackageEnabledInInnerAppListForCoverLauncher:I = 0x9a

.field static final blacklist TRANSACTION_isPackageSettingsEnabledForCoverLauncher:I = 0x9b

.field static final blacklist TRANSACTION_isTopActivityImmersive:I = 0x1d

.field static final blacklist TRANSACTION_keyguardGoingAway:I = 0x43

.field static final blacklist TRANSACTION_moveRootTaskToDisplay:I = 0x33

.field static final blacklist TRANSACTION_moveTaskToFront:I = 0x1b

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x34

.field static final blacklist TRANSACTION_notifyPerformStop:I = 0x95

.field static final blacklist TRANSACTION_onPictureInPictureUiStateChanged:I = 0x5f

.field static final blacklist TRANSACTION_onSplashScreenViewCopyFinished:I = 0x5e

.field static final blacklist TRANSACTION_preloadRecentsActivity:I = 0xe

.field static final blacklist TRANSACTION_registKeyEventListener:I = 0x81

.field static final blacklist TRANSACTION_registerBackgroundActivityStartCallback:I = 0x64

.field static final blacklist TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x4f

.field static final blacklist TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x51

.field static final blacklist TRANSACTION_registerRemoteTransitionForNextActivityStart:I = 0x50

.field static final blacklist TRANSACTION_registerScreenCaptureObserver:I = 0x66

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2f

.field static final blacklist TRANSACTION_releaseSomeActivities:I = 0x2d

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasks:I = 0x19

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasksExt:I = 0xa1

.field static final blacklist TRANSACTION_removeRootTasksInWindowingModes:I = 0x35

.field static final blacklist TRANSACTION_removeRootTasksWithActivityTypes:I = 0x36

.field static final blacklist TRANSACTION_removeTask:I = 0x16

.field static final blacklist TRANSACTION_removeTaskWithFlags:I = 0x18

.field static final blacklist TRANSACTION_reportAssistContextExtras:I = 0x1e

.field static final blacklist TRANSACTION_requestAssistContextExtras:I = 0x3d

.field static final blacklist TRANSACTION_requestAssistContextExtrasFromCapture:I = 0x41

.field static final blacklist TRANSACTION_requestAssistDataForTask:I = 0x40

.field static final blacklist TRANSACTION_requestAssistDataForTaskFromCapture:I = 0x42

.field static final blacklist TRANSACTION_requestAutofillData:I = 0x3e

.field static final blacklist TRANSACTION_requestOpenInBrowserEducation:I = 0x47

.field static final blacklist TRANSACTION_resetUserPackageSettings:I = 0x6b

.field static final blacklist TRANSACTION_resizeTask:I = 0x32

.field static final blacklist TRANSACTION_resumeAppSwitches:I = 0x56

.field static final blacklist TRANSACTION_scheduleRecomputeConfigurationLocked:I = 0x7a

.field static final blacklist TRANSACTION_sendSaLoggingBroadcast:I = 0x7b

.field static final blacklist TRANSACTION_sendSaLoggingBroadcastForSetting:I = 0x7c

.field static final blacklist TRANSACTION_setActivityController:I = 0x57

.field static final blacklist TRANSACTION_setAdaptiveAppByDefaultOverride:I = 0x6e

.field static final blacklist TRANSACTION_setAppCompatAlignment:I = 0x77

.field static final blacklist TRANSACTION_setAppLockedUnLockPackage:I = 0x84

.field static final blacklist TRANSACTION_setAppLockedVerifying:I = 0x89

.field static final blacklist TRANSACTION_setApplockEnabled:I = 0x8e

.field static final blacklist TRANSACTION_setApplockLockedAppsClass:I = 0x8c

.field static final blacklist TRANSACTION_setApplockLockedAppsPackage:I = 0x8b

.field static final blacklist TRANSACTION_setApplockType:I = 0x8d

.field static final blacklist TRANSACTION_setCoverLauncherAppCompatAlignment:I = 0x79

.field static final blacklist TRANSACTION_setCoverLauncherPackageDisabled:I = 0x9d

.field static final blacklist TRANSACTION_setCoverLauncherPackageEnabled:I = 0x9c

.field static final blacklist TRANSACTION_setCutoutPolicy:I = 0x7e

.field static final blacklist TRANSACTION_setDisallowWhenLandscape:I = 0x73

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x20

.field static final blacklist TRANSACTION_setFocusedTask:I = 0x14

.field static final blacklist TRANSACTION_setFrontActivityScreenCompatMode:I = 0x13

.field static final blacklist TRANSACTION_setLockScreenShown:I = 0x3b

.field static final blacklist TRANSACTION_setOrientationControlDefault:I = 0x72

.field static final blacklist TRANSACTION_setOrientationControlPolicy:I = 0x70

.field static final blacklist TRANSACTION_setPackageAskScreenCompat:I = 0x5c

.field static final blacklist TRANSACTION_setPackageScreenCompatMode:I = 0x5a

.field static final blacklist TRANSACTION_setPersistentVrThread:I = 0x54

.field static final blacklist TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x62

.field static final blacklist TRANSACTION_setSsecureHiddenAppsPackages:I = 0x8f

.field static final blacklist TRANSACTION_setTaskIsPerceptible:I = 0x15

.field static final blacklist TRANSACTION_setTaskResizeable:I = 0x31

.field static final blacklist TRANSACTION_setUseLetterbox:I = 0x6f

.field static final blacklist TRANSACTION_setUserMinAspectRatioOverrideCode:I = 0x75

.field static final blacklist TRANSACTION_setVoiceKeepAwake:I = 0x58

.field static final blacklist TRANSACTION_setVrThread:I = 0x53

.field static final blacklist TRANSACTION_startActivities:I = 0x2

.field static final blacklist TRANSACTION_startActivity:I = 0x1

.field static final blacklist TRANSACTION_startActivityAndWait:I = 0x6

.field static final blacklist TRANSACTION_startActivityAsCaller:I = 0xd

.field static final blacklist TRANSACTION_startActivityAsUser:I = 0x3

.field static final blacklist TRANSACTION_startActivityForCoverLauncher:I = 0x9e

.field static final blacklist TRANSACTION_startActivityForCoverLauncherAsUser:I = 0x9f

.field static final blacklist TRANSACTION_startActivityFromGameSession:I = 0xb

.field static final blacklist TRANSACTION_startActivityFromRecents:I = 0xc

.field static final blacklist TRANSACTION_startActivityIntentSender:I = 0x5

.field static final blacklist TRANSACTION_startActivityWithConfig:I = 0x7

.field static final blacklist TRANSACTION_startAppLockService:I = 0x82

.field static final blacklist TRANSACTION_startAssistantActivity:I = 0xa

.field static final blacklist TRANSACTION_startBackNavigation:I = 0x63

.field static final blacklist TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final blacklist TRANSACTION_startSystemLockTaskMode:I = 0x28

.field static final blacklist TRANSACTION_startVoiceActivity:I = 0x8

.field static final blacklist TRANSACTION_stopAppSwitches:I = 0x55

.field static final blacklist TRANSACTION_stopSystemLockTaskMode:I = 0x29

.field static final blacklist TRANSACTION_supportsLocalVoiceInteraction:I = 0x46

.field static final blacklist TRANSACTION_suppressResizeConfigChanges:I = 0x44

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x4b

.field static final blacklist TRANSACTION_unhandledBack:I = 0x10

.field static final blacklist TRANSACTION_unregisterBackgroundActivityStartCallback:I = 0x65

.field static final blacklist TRANSACTION_unregisterScreenCaptureObserver:I = 0x67

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x30

.field static final blacklist TRANSACTION_updateActiveRecents:I = 0x17

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x4d

.field static final blacklist TRANSACTION_updateLockTaskFeatures:I = 0x4e

.field static final blacklist TRANSACTION_updateLockTaskPackages:I = 0x24


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IActivityTaskManager;

    return-object v0

    :cond_1
    new-instance v0, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "removeAllVisibleRecentTasksExt"

    return-object p0

    :pswitch_1
    const-string p0, "getTaskSnapshotLowResolution"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "startActivityForCoverLauncherAsUser"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "startActivityForCoverLauncher"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "setCoverLauncherPackageDisabled"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "setCoverLauncherPackageEnabled"

    return-object p0

    :pswitch_6
    const-string p0, "isPackageSettingsEnabledForCoverLauncher"

    return-object p0

    :pswitch_7
    const-string p0, "isPackageEnabledInInnerAppListForCoverLauncher"

    return-object p0

    :pswitch_8
    const-string p0, "isPackageEnabledForCoverLauncher"

    return-object p0

    :pswitch_9
    const-string p0, "getCoverLauncherEnabledAppListByType"

    return-object p0

    :pswitch_a
    const-string p0, "getCoverLauncherEnabledAppList"

    return-object p0

    :pswitch_b
    const-string p0, "getCoverLauncherAvailableAppList"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "notifyPerformStop"

    return-object p0

    :pswitch_d
    const-string p0, "getSsecureHiddenAppsPackages"

    return-object p0

    :pswitch_e
    const-string p0, "isApplockEnabled"

    return-object p0

    :pswitch_f
    const-string p0, "getApplockType"

    return-object p0

    :pswitch_10
    const-string p0, "getApplockLockedAppsClass"

    return-object p0

    :pswitch_11
    const-string p0, "getApplockLockedAppsPackage"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "setSsecureHiddenAppsPackages"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "setApplockEnabled"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "setApplockType"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "setApplockLockedAppsClass"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "setApplockLockedAppsPackage"

    return-object p0

    :pswitch_17
    const-string p0, "isAppLockedVerifying"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "setAppLockedVerifying"

    return-object p0

    :pswitch_19
    const-string p0, "getAppLockedCheckAction"

    return-object p0

    :pswitch_1a
    const-string p0, "getAppLockedLockType"

    return-object p0

    :pswitch_1b
    const-string p0, "clearAppLockedUnLockedApp"

    return-object p0

    :pswitch_1c
    const-string p0, "isAppLockedPackage"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "setAppLockedUnLockPackage"

    return-object p0

    :pswitch_1e
    const-string p0, "getAppLockedPackageList"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "startAppLockService"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "registKeyEventListener"

    return-object p0

    :pswitch_21
    const-string p0, "getCutoutPolicyForSettings"

    return-object p0

    :pswitch_22
    const-string p0, "getCutoutPolicy"

    return-object p0

    :pswitch_23
    const-string/jumbo p0, "setCutoutPolicy"

    return-object p0

    :pswitch_24
    const-string p0, "getResumedTaskThumbnail"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "sendSaLoggingBroadcastForSetting"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "sendSaLoggingBroadcast"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "scheduleRecomputeConfigurationLocked"

    return-object p0

    :pswitch_28
    const-string/jumbo p0, "setCoverLauncherAppCompatAlignment"

    return-object p0

    :pswitch_29
    const-string p0, "getCoverLauncherAppCompatAlignment"

    return-object p0

    :pswitch_2a
    const-string/jumbo p0, "setAppCompatAlignment"

    return-object p0

    :pswitch_2b
    const-string p0, "getAppCompatAlignment"

    return-object p0

    :pswitch_2c
    const-string/jumbo p0, "setUserMinAspectRatioOverrideCode"

    return-object p0

    :pswitch_2d
    const-string p0, "getUserOrSystemMinAspectRatioOverrideCode"

    return-object p0

    :pswitch_2e
    const-string/jumbo p0, "setDisallowWhenLandscape"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "setOrientationControlDefault"

    return-object p0

    :pswitch_30
    const-string p0, "getOrientationControlPolicy"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "setOrientationControlPolicy"

    return-object p0

    :pswitch_32
    const-string/jumbo p0, "setUseLetterbox"

    return-object p0

    :pswitch_33
    const-string/jumbo p0, "setAdaptiveAppByDefaultOverride"

    return-object p0

    :pswitch_34
    const-string p0, "getPackageFeatureInfo"

    return-object p0

    :pswitch_35
    const-string p0, "getScpmVersion"

    return-object p0

    :pswitch_36
    const-string/jumbo p0, "resetUserPackageSettings"

    return-object p0

    :pswitch_37
    const-string p0, "getCompatChangeablePackageInfoList"

    return-object p0

    :pswitch_38
    const-string p0, "getFoldStarManagerService"

    return-object p0

    :pswitch_39
    const-string p0, "getMultiTaskingBinder"

    return-object p0

    :pswitch_3a
    const-string/jumbo p0, "unregisterScreenCaptureObserver"

    return-object p0

    :pswitch_3b
    const-string/jumbo p0, "registerScreenCaptureObserver"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "unregisterBackgroundActivityStartCallback"

    return-object p0

    :pswitch_3d
    const-string/jumbo p0, "registerBackgroundActivityStartCallback"

    return-object p0

    :pswitch_3e
    const-string/jumbo p0, "startBackNavigation"

    return-object p0

    :pswitch_3f
    const-string/jumbo p0, "setRunningRemoteTransitionDelegate"

    return-object p0

    :pswitch_40
    const-string p0, "clearRecentTasks"

    return-object p0

    :pswitch_41
    const-string p0, "detachNavigationBarFromApp"

    return-object p0

    :pswitch_42
    const-string/jumbo p0, "onPictureInPictureUiStateChanged"

    return-object p0

    :pswitch_43
    const-string/jumbo p0, "onSplashScreenViewCopyFinished"

    return-object p0

    :pswitch_44
    const-string p0, "clearLaunchParamsForPackages"

    return-object p0

    :pswitch_45
    const-string/jumbo p0, "setPackageAskScreenCompat"

    return-object p0

    :pswitch_46
    const-string p0, "getPackageAskScreenCompat"

    return-object p0

    :pswitch_47
    const-string/jumbo p0, "setPackageScreenCompatMode"

    return-object p0

    :pswitch_48
    const-string p0, "getPackageScreenCompatMode"

    return-object p0

    :pswitch_49
    const-string/jumbo p0, "setVoiceKeepAwake"

    return-object p0

    :pswitch_4a
    const-string/jumbo p0, "setActivityController"

    return-object p0

    :pswitch_4b
    const-string/jumbo p0, "resumeAppSwitches"

    return-object p0

    :pswitch_4c
    const-string/jumbo p0, "stopAppSwitches"

    return-object p0

    :pswitch_4d
    const-string/jumbo p0, "setPersistentVrThread"

    return-object p0

    :pswitch_4e
    const-string/jumbo p0, "setVrThread"

    return-object p0

    :pswitch_4f
    const-string p0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object p0

    :pswitch_50
    const-string/jumbo p0, "registerRemoteAnimationsForDisplay"

    return-object p0

    :pswitch_51
    const-string/jumbo p0, "registerRemoteTransitionForNextActivityStart"

    return-object p0

    :pswitch_52
    const-string/jumbo p0, "registerRemoteAnimationForNextActivityStart"

    return-object p0

    :pswitch_53
    const-string/jumbo p0, "updateLockTaskFeatures"

    return-object p0

    :pswitch_54
    const-string/jumbo p0, "updateConfiguration"

    return-object p0

    :pswitch_55
    const-string p0, "getLastResumedActivityUserId"

    return-object p0

    :pswitch_56
    const-string/jumbo p0, "takeTaskSnapshot"

    return-object p0

    :pswitch_57
    const-string p0, "getTaskSnapshot"

    return-object p0

    :pswitch_58
    const-string p0, "cancelTaskWindowTransition"

    return-object p0

    :pswitch_59
    const-string p0, "getDeviceConfigurationInfo"

    return-object p0

    :pswitch_5a
    const-string/jumbo p0, "requestOpenInBrowserEducation"

    return-object p0

    :pswitch_5b
    const-string/jumbo p0, "supportsLocalVoiceInteraction"

    return-object p0

    :pswitch_5c
    const-string p0, "getWindowOrganizerController"

    return-object p0

    :pswitch_5d
    const-string/jumbo p0, "suppressResizeConfigChanges"

    return-object p0

    :pswitch_5e
    const-string p0, "keyguardGoingAway"

    return-object p0

    :pswitch_5f
    const-string/jumbo p0, "requestAssistDataForTaskFromCapture"

    return-object p0

    :pswitch_60
    const-string/jumbo p0, "requestAssistContextExtrasFromCapture"

    return-object p0

    :pswitch_61
    const-string/jumbo p0, "requestAssistDataForTask"

    return-object p0

    :pswitch_62
    const-string p0, "isAssistDataAllowed"

    return-object p0

    :pswitch_63
    const-string/jumbo p0, "requestAutofillData"

    return-object p0

    :pswitch_64
    const-string/jumbo p0, "requestAssistContextExtras"

    return-object p0

    :pswitch_65
    const-string p0, "getAssistContextExtras"

    return-object p0

    :pswitch_66
    const-string/jumbo p0, "setLockScreenShown"

    return-object p0

    :pswitch_67
    const-string p0, "getRootTaskInfoOnDisplay"

    return-object p0

    :pswitch_68
    const-string p0, "getAllRootTaskInfosOnDisplay"

    return-object p0

    :pswitch_69
    const-string p0, "getRootTaskInfo"

    return-object p0

    :pswitch_6a
    const-string p0, "getAllRootTaskInfos"

    return-object p0

    :pswitch_6b
    const-string/jumbo p0, "removeRootTasksWithActivityTypes"

    return-object p0

    :pswitch_6c
    const-string/jumbo p0, "removeRootTasksInWindowingModes"

    return-object p0

    :pswitch_6d
    const-string/jumbo p0, "moveTaskToRootTask"

    return-object p0

    :pswitch_6e
    const-string/jumbo p0, "moveRootTaskToDisplay"

    return-object p0

    :pswitch_6f
    const-string/jumbo p0, "resizeTask"

    return-object p0

    :pswitch_70
    const-string/jumbo p0, "setTaskResizeable"

    return-object p0

    :pswitch_71
    const-string/jumbo p0, "unregisterTaskStackListener"

    return-object p0

    :pswitch_72
    const-string/jumbo p0, "registerTaskStackListener"

    return-object p0

    :pswitch_73
    const-string p0, "getTaskDescriptionIcon"

    return-object p0

    :pswitch_74
    const-string/jumbo p0, "releaseSomeActivities"

    return-object p0

    :pswitch_75
    const-string p0, "getAppTaskThumbnailSize"

    return-object p0

    :pswitch_76
    const-string p0, "addAppTask"

    return-object p0

    :pswitch_77
    const-string p0, "finishVoiceTask"

    return-object p0

    :pswitch_78
    const-string/jumbo p0, "stopSystemLockTaskMode"

    return-object p0

    :pswitch_79
    const-string/jumbo p0, "startSystemLockTaskMode"

    return-object p0

    :pswitch_7a
    const-string p0, "getAppTasks"

    return-object p0

    :pswitch_7b
    const-string p0, "getLockTaskModeState"

    return-object p0

    :pswitch_7c
    const-string p0, "isInLockTaskMode"

    return-object p0

    :pswitch_7d
    const-string/jumbo p0, "updateLockTaskPackages"

    return-object p0

    :pswitch_7e
    const-string p0, "focusTopTask"

    return-object p0

    :pswitch_7f
    const-string p0, "getTaskBounds"

    return-object p0

    :pswitch_80
    const-string p0, "getFocusedRootTaskInfo"

    return-object p0

    :pswitch_81
    const-string/jumbo p0, "setFocusedRootTask"

    return-object p0

    :pswitch_82
    const-string p0, "canBeUniversalResizeable"

    return-object p0

    :pswitch_83
    const-string/jumbo p0, "reportAssistContextExtras"

    return-object p0

    :pswitch_84
    const-string p0, "isTopActivityImmersive"

    return-object p0

    :pswitch_85
    const-string p0, "getRecentTasks"

    return-object p0

    :pswitch_86
    const-string/jumbo p0, "moveTaskToFront"

    return-object p0

    :pswitch_87
    const-string p0, "getTasks"

    return-object p0

    :pswitch_88
    const-string/jumbo p0, "removeAllVisibleRecentTasks"

    return-object p0

    :pswitch_89
    const-string/jumbo p0, "removeTaskWithFlags"

    return-object p0

    :pswitch_8a
    const-string/jumbo p0, "updateActiveRecents"

    return-object p0

    :pswitch_8b
    const-string/jumbo p0, "removeTask"

    return-object p0

    :pswitch_8c
    const-string/jumbo p0, "setTaskIsPerceptible"

    return-object p0

    :pswitch_8d
    const-string/jumbo p0, "setFocusedTask"

    return-object p0

    :pswitch_8e
    const-string/jumbo p0, "setFrontActivityScreenCompatMode"

    return-object p0

    :pswitch_8f
    const-string p0, "getFrontActivityScreenCompatMode"

    return-object p0

    :pswitch_90
    const-string p0, "getActivityClientController"

    return-object p0

    :pswitch_91
    const-string/jumbo p0, "unhandledBack"

    return-object p0

    :pswitch_92
    const-string p0, "isActivityStartAllowedOnDisplay"

    return-object p0

    :pswitch_93
    const-string/jumbo p0, "preloadRecentsActivity"

    return-object p0

    :pswitch_94
    const-string/jumbo p0, "startActivityAsCaller"

    return-object p0

    :pswitch_95
    const-string/jumbo p0, "startActivityFromRecents"

    return-object p0

    :pswitch_96
    const-string/jumbo p0, "startActivityFromGameSession"

    return-object p0

    :pswitch_97
    const-string/jumbo p0, "startAssistantActivity"

    return-object p0

    :pswitch_98
    const-string p0, "getVoiceInteractorPackageName"

    return-object p0

    :pswitch_99
    const-string/jumbo p0, "startVoiceActivity"

    return-object p0

    :pswitch_9a
    const-string/jumbo p0, "startActivityWithConfig"

    return-object p0

    :pswitch_9b
    const-string/jumbo p0, "startActivityAndWait"

    return-object p0

    :pswitch_9c
    const-string/jumbo p0, "startActivityIntentSender"

    return-object p0

    :pswitch_9d
    const-string/jumbo p0, "startNextMatchingActivity"

    return-object p0

    :pswitch_9e
    const-string/jumbo p0, "startActivityAsUser"

    return-object p0

    :pswitch_9f
    const-string/jumbo p0, "startActivities"

    return-object p0

    :pswitch_a0
    const-string/jumbo p0, "startActivity"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0xa0

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v13, p3

    const-string v3, "android.app.IActivityTaskManager"

    const/4 v14, 0x1

    if-lt v1, v14, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :cond_1
    packed-switch v1, :pswitch_data_0

    move-object v0, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasksExt(Z[I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshotLowResolution(I)Landroid/window/TaskSnapshot;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_2
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->startActivityForCoverLauncherAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->startActivityForCoverLauncher(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setCoverLauncherPackageDisabled(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setCoverLauncherPackageEnabled(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->isPackageSettingsEnabledForCoverLauncher(Ljava/lang/String;II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->isPackageEnabledInInnerAppListForCoverLauncher(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getCoverLauncherEnabledAppListByType(II)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->getCoverLauncherEnabledAppList(I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->getCoverLauncherAvailableAppList(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->notifyPerformStop(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->isApplockEnabled()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockType()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setApplockEnabled(Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setApplockType(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setApplockLockedAppsClass(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setAppLockedVerifying(Ljava/lang/String;Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedLockType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->clearAppLockedUnLockedApp()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/IActivityTaskManager$Stub;->startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/IKeyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IKeyEventListener;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->registKeyEventListener(Lcom/samsung/android/multiwindow/IKeyEventListener;)V

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getCutoutPolicyForSettings(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->setCutoutPolicy(ILjava/lang/String;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_24
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_25
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_26
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-gez v9, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 v11, 0x0

    invoke-static {v11, v9}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v9

    new-instance v11, Landroid/app/IActivityTaskManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v11, v2, v10}, Landroid/app/IActivityTaskManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v9, v11}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v8

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_1

    :pswitch_27
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->scheduleRecomputeConfigurationLocked()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_28
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setCoverLauncherAppCompatAlignment(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_29
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getCoverLauncherAppCompatAlignment()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setAppCompatAlignment(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2b
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getAppCompatAlignment()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getUserOrSystemMinAspectRatioOverrideCode(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2e
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setDisallowWhenLandscape(Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setOrientationControlDefault(Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_30
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getOrientationControlPolicy(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_31
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->setOrientationControlPolicy(ILjava/lang/String;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_32
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setUseLetterbox(Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setAdaptiveAppByDefaultOverride(Ljava/lang/String;Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageFeatureInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getScpmVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->resetUserPackageSettings(II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getCompatChangeablePackageInfoList(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterBackgroundActivityStartCallback(Landroid/os/IBinder;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerBackgroundActivityStartCallback(Landroid/os/IBinder;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_3e
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    sget-object v3, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/BackAnimationAdapter;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->clearRecentTasks(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_42
    sget-object v1, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureUiState;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_45
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_46
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_47
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_48
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_49
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4b
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4c
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4d
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4f
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_50
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationDefinition;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_51
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v5, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteTransitionForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;Landroid/window/RemoteTransition;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_52
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_53
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_54
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_55
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_56
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_57
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_59
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_5a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->requestOpenInBrowserEducation(Landroid/os/IBinder;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_5b
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_5c
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_5d
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_5e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_5f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    move-object/from16 v7, p2

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTaskFromCapture(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_60
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    move-object v0, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtrasFromCapture(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZZ)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_61
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_62
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowed()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_63
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_64
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_65
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_66
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_67
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_68
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_69
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_6a
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_6b
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6c
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6d
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6e
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6f
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_70
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_71
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_72
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_73
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_74
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    goto/16 :goto_1

    :pswitch_75
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_76
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    sget-object v4, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$TaskDescription;

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_77
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_78
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_79
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_7a
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_7b
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_7c
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_7d
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_7e
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->focusTopTask(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_7f
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_80
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_81
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_82
    move-object v0, v2

    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_83
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    sget-object v4, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistContent;

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_84
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_85
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_86
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_87
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_88
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_89
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->removeTaskWithFlags(II)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_8a
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->updateActiveRecents(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_8b
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_8c
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->setTaskIsPerceptible(IZ)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_8d
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_8e
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_8f
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_90
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_91
    invoke-virtual {p0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_92
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_93
    move-object v0, v2

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->preloadRecentsActivity(Landroid/content/Intent;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_94
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v9, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ProfilerInfo;

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_95
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_96
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_97
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_98
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_99
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_9a
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v10, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Configuration;

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_9b
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_9c
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_9d
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_9e
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_9f
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_a0
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
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

.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final blacklist PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_removeImeSurface:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_showInputMethodPickerFromSystemWithUserId:[Ljava/lang/String;

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegation:I = 0x21

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegationAsync:I = 0x22

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_addVirtualStylusIdForTestSession:I = 0x24

.field static final blacklist TRANSACTION_dismissAndShowAgainInputMethodPicker:I = 0x30

.field static final blacklist TRANSACTION_forceHideSoftInput:I = 0x29

.field static final blacklist TRANSACTION_getCurTokenDisplayId:I = 0x32

.field static final blacklist TRANSACTION_getCurrentFocusDisplayID:I = 0x31

.field static final blacklist TRANSACTION_getCurrentInputMethodInfoAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_getCurrentInputMethodSubtype:I = 0x13

.field static final blacklist TRANSACTION_getDexSettingsValue:I = 0x2e

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodList:I = 0x4

.field static final blacklist TRANSACTION_getEnabledInputMethodListLegacy:I = 0x6

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x7

.field static final blacklist TRANSACTION_getImeTrackerService:I = 0x26

.field static final greylist-max-o TRANSACTION_getInputMethodList:I = 0x3

.field static final blacklist TRANSACTION_getInputMethodListLegacy:I = 0x5

.field static final greylist-max-o TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x16

.field static final greylist-max-o TRANSACTION_getLastInputMethodSubtype:I = 0x8

.field static final blacklist TRANSACTION_getWACOMPen:I = 0x2b

.field static final blacklist TRANSACTION_handleVoiceHWKey:I = 0x33

.field static final greylist-max-o TRANSACTION_hideSoftInput:I = 0xa

.field static final blacklist TRANSACTION_hideSoftInputFromServerForTest:I = 0xb

.field static final blacklist TRANSACTION_isAccessoryKeyboard:I = 0x2a

.field static final blacklist TRANSACTION_isCurrentInputMethodAsSamsungKeyboard:I = 0x2d

.field static final blacklist TRANSACTION_isImeTraceEnabled:I = 0x1b

.field static final greylist-max-o TRANSACTION_isInputMethodPickerShownForTest:I = 0x10

.field static final blacklist TRANSACTION_isInputMethodShown:I = 0x2c

.field static final blacklist TRANSACTION_isStylusHandwritingAvailableAsUser:I = 0x23

.field static final blacklist TRANSACTION_minimizeSoftInput:I = 0x27

.field static final blacklist TRANSACTION_onImeSwitchButtonClickFromSystem:I = 0x11

.field static final blacklist TRANSACTION_prepareStylusHandwritingDelegation:I = 0x20

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x18

.field static final blacklist TRANSACTION_removeImeSurfaceFromWindowAsync:I = 0x19

.field static final blacklist TRANSACTION_reportPerceptibleAsync:I = 0x17

.field static final greylist-max-o TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x14

.field static final blacklist TRANSACTION_setExplicitlyEnabledInputMethodSubtypes:I = 0x15

.field static final blacklist TRANSACTION_setInputMethodSwitchDisable:I = 0x2f

.field static final blacklist TRANSACTION_setStylusWindowIdleTimeoutForTest:I = 0x25

.field static final blacklist TRANSACTION_shouldShowImeSwitcherButtonForTest:I = 0x12

.field static final greylist-max-o TRANSACTION_showInputMethodPickerFromClient:I = 0xe

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystem:I = 0xf

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystemWithUserId:I = 0x34

.field static final greylist-max-o TRANSACTION_showSoftInput:I = 0x9

.field static final blacklist TRANSACTION_startConnectionlessStylusHandwriting:I = 0x1f

.field static final blacklist TRANSACTION_startImeTrace:I = 0x1c

.field static final greylist-max-o TRANSACTION_startInputOrWindowGainedFocus:I = 0xc

.field static final blacklist TRANSACTION_startInputOrWindowGainedFocusAsync:I = 0xd

.field static final blacklist TRANSACTION_startProtoDump:I = 0x1a

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0x1e

.field static final blacklist TRANSACTION_stopImeTrace:I = 0x1d

.field static final blacklist TRANSACTION_undoMinimizeSoftInput:I = 0x28


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_removeImeSurface:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystemWithUserId:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enforcer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "showInputMethodPickerFromSystemWithUserId"

    return-object p0

    :pswitch_1
    const-string p0, "handleVoiceHWKey"

    return-object p0

    :pswitch_2
    const-string p0, "getCurTokenDisplayId"

    return-object p0

    :pswitch_3
    const-string p0, "getCurrentFocusDisplayID"

    return-object p0

    :pswitch_4
    const-string p0, "dismissAndShowAgainInputMethodPicker"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "setInputMethodSwitchDisable"

    return-object p0

    :pswitch_6
    const-string p0, "getDexSettingsValue"

    return-object p0

    :pswitch_7
    const-string p0, "isCurrentInputMethodAsSamsungKeyboard"

    return-object p0

    :pswitch_8
    const-string p0, "isInputMethodShown"

    return-object p0

    :pswitch_9
    const-string p0, "getWACOMPen"

    return-object p0

    :pswitch_a
    const-string p0, "isAccessoryKeyboard"

    return-object p0

    :pswitch_b
    const-string p0, "forceHideSoftInput"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "undoMinimizeSoftInput"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "minimizeSoftInput"

    return-object p0

    :pswitch_e
    const-string p0, "getImeTrackerService"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "setStylusWindowIdleTimeoutForTest"

    return-object p0

    :pswitch_10
    const-string p0, "addVirtualStylusIdForTestSession"

    return-object p0

    :pswitch_11
    const-string p0, "isStylusHandwritingAvailableAsUser"

    return-object p0

    :pswitch_12
    const-string p0, "acceptStylusHandwritingDelegationAsync"

    return-object p0

    :pswitch_13
    const-string p0, "acceptStylusHandwritingDelegation"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "prepareStylusHandwritingDelegation"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "startConnectionlessStylusHandwriting"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "startStylusHandwriting"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "stopImeTrace"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "startImeTrace"

    return-object p0

    :pswitch_19
    const-string p0, "isImeTraceEnabled"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "startProtoDump"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "removeImeSurfaceFromWindowAsync"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "removeImeSurface"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "reportPerceptibleAsync"

    return-object p0

    :pswitch_1e
    const-string p0, "getInputMethodWindowVisibleHeight"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "setExplicitlyEnabledInputMethodSubtypes"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "setAdditionalInputMethodSubtypes"

    return-object p0

    :pswitch_21
    const-string p0, "getCurrentInputMethodSubtype"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "shouldShowImeSwitcherButtonForTest"

    return-object p0

    :pswitch_23
    const-string/jumbo p0, "onImeSwitchButtonClickFromSystem"

    return-object p0

    :pswitch_24
    const-string p0, "isInputMethodPickerShownForTest"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "showInputMethodPickerFromSystem"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "showInputMethodPickerFromClient"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "startInputOrWindowGainedFocusAsync"

    return-object p0

    :pswitch_28
    const-string/jumbo p0, "startInputOrWindowGainedFocus"

    return-object p0

    :pswitch_29
    const-string p0, "hideSoftInputFromServerForTest"

    return-object p0

    :pswitch_2a
    const-string p0, "hideSoftInput"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "showSoftInput"

    return-object p0

    :pswitch_2c
    const-string p0, "getLastInputMethodSubtype"

    return-object p0

    :pswitch_2d
    const-string p0, "getEnabledInputMethodSubtypeList"

    return-object p0

    :pswitch_2e
    const-string p0, "getEnabledInputMethodListLegacy"

    return-object p0

    :pswitch_2f
    const-string p0, "getInputMethodListLegacy"

    return-object p0

    :pswitch_30
    const-string p0, "getEnabledInputMethodList"

    return-object p0

    :pswitch_31
    const-string p0, "getInputMethodList"

    return-object p0

    :pswitch_32
    const-string p0, "getCurrentInputMethodInfoAsUser"

    return-object p0

    :pswitch_33
    const-string p0, "addClient"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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
.method protected blacklist addVirtualStylusIdForTestSession_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x33

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist hideSoftInputFromServerForTest_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isInputMethodPickerShownForTest_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist onImeSwitchButtonClickFromSystem_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    const-string v3, "com.android.internal.view.IInputMethodManager"

    const/4 v7, 0x1

    if-lt v1, v7, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :cond_1
    packed-switch v1, :pswitch_data_0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystemWithUserId(III)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->handleVoiceHWKey()V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurTokenDisplayId()I

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentFocusDisplayID()I

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->dismissAndShowAgainInputMethodPicker()V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodShown()Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getWACOMPen()Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isAccessoryKeyboard()I

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->forceHideSoftInput()V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->undoMinimizeSoftInput()V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, p2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IBooleanListener;

    move-result-object v6

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    goto/16 :goto_0

    :pswitch_13
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    move-result-object v6

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    goto/16 :goto_0

    :pswitch_16
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace()V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace()V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isImeTraceEnabled()Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->startProtoDump([BILjava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface(I)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :pswitch_1e
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1f
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_21
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_22
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldShowImeSwitcherButtonForTest()Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_23
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->onImeSwitchButtonClickFromSystem(I)V

    goto :goto_0

    :pswitch_24
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v0

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_25
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem(II)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_26
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    move v13, v7

    goto/16 :goto_1

    :pswitch_27
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v9, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v10

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v11

    move-object v12, v10

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v13, v7

    move-object v7, v9

    move-object v9, v11

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    sget-object v14, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/ImeOnBackInvokedDispatcher;

    move v15, v13

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    move-object v8, v12

    move-object v12, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    goto/16 :goto_1

    :pswitch_28
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v7, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    sget-object v12, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v9, p3

    const/4 v13, 0x1

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_29
    move-object v9, v6

    move v13, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest()V

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2a
    move-object v0, v2

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_2b
    move-object v0, v2

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v6, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_2c
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_2d
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_2e
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_2f
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_30
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_31
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_32
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_33
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v9, v6

    move v13, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist removeImeSurface_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_removeImeSurface:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setStylusWindowIdleTimeoutForTest_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist shouldShowImeSwitcherButtonForTest_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist showInputMethodPickerFromSystemWithUserId_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystemWithUserId:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist showInputMethodPickerFromSystem_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist startImeTrace_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist stopImeTrace_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.class public Landroid/os/PowerExemptionManager;
.super Ljava/lang/Object;
.source "PowerExemptionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerExemptionManager$ReasonCode;,
        Landroid/os/PowerExemptionManager$TempAllowListType;,
        Landroid/os/PowerExemptionManager$AllowListEvent;
    }
.end annotation


# static fields
.field public static final whitelist EVENT_MMS:I = 0x2

.field public static final whitelist EVENT_SMS:I = 0x1

.field public static final whitelist EVENT_UNSPECIFIED:I = 0x0

.field public static final whitelist REASON_ACCOUNT_TRANSFER:I = 0x68

.field public static final blacklist REASON_ACTIVE_DEVICE_ADMIN:I = 0x144

.field public static final whitelist REASON_ACTIVITY_RECOGNITION:I = 0x67

.field public static final blacklist REASON_ACTIVITY_STARTER:I = 0x34

.field public static final blacklist REASON_ACTIVITY_VISIBILITY_GRACE_PERIOD:I = 0x43

.field public static final blacklist REASON_ALARM_MANAGER_ALARM_CLOCK:I = 0x12d

.field public static final blacklist REASON_ALARM_MANAGER_WHILE_IDLE:I = 0x12e

.field public static final blacklist REASON_ALLOWLISTED_PACKAGE:I = 0x41

.field public static final blacklist REASON_APPOP:I = 0x42

.field public static final blacklist REASON_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3a

.field public static final blacklist REASON_BACKGROUND_FGS_PERMISSION:I = 0x3b

.field public static final whitelist REASON_BLUETOOTH_BROADCAST:I = 0xcb

.field public static final blacklist REASON_BOOT_COMPLETED:I = 0xc8

.field public static final blacklist REASON_CARRIER_PRIVILEGED_APP:I = 0x141

.field public static final blacklist REASON_COMPANION_DEVICE_MANAGER:I = 0x39

.field public static final blacklist REASON_CURRENT_INPUT_METHOD:I = 0x47

.field public static final blacklist REASON_DENIED:I = -0x1

.field public static final blacklist REASON_DEVICE_DEMO_MODE:I = 0x3f

.field public static final blacklist REASON_DEVICE_OWNER:I = 0x37

.field public static final blacklist REASON_DISALLOW_APPS_CONTROL:I = 0x143

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V1:I = 0x133

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V2:I = 0x134

.field public static final blacklist REASON_DPO_PROTECTED_APP:I = 0x142

.field public static final blacklist REASON_EVENT_MMS:I = 0x13b

.field public static final blacklist REASON_EVENT_SMS:I = 0x13a

.field public static final blacklist REASON_FGS_BINDING:I = 0x36

.field public static final whitelist REASON_GEOFENCING:I = 0x64

.field public static final blacklist REASON_INSTR_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3c

.field public static final blacklist REASON_INSTR_BACKGROUND_FGS_PERMISSION:I = 0x3d

.field public static final blacklist REASON_KEY_CHAIN:I = 0x130

.field public static final blacklist REASON_LOCALE_CHANGED:I = 0xce

.field public static final whitelist REASON_LOCATION_PROVIDER:I = 0x138
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REASON_LOCKED_BOOT_COMPLETED:I = 0xca

.field public static final whitelist REASON_MARS_MANAGED_APP:I = 0x15e

.field public static final blacklist REASON_MEDIA_BUTTON:I = 0x139

.field public static final blacklist REASON_MEDIA_NOTIFICATION_TRANSFER:I = 0x145

.field public static final blacklist REASON_MEDIA_SESSION_CALLBACK:I = 0x13d

.field public static final blacklist REASON_NOTIFICATION_SERVICE:I = 0x136

.field public static final blacklist REASON_OPT_OUT_REQUESTED:I = 0x3e8

.field public static final blacklist REASON_OP_ACTIVATE_PLATFORM_VPN:I = 0x45

.field public static final blacklist REASON_OP_ACTIVATE_VPN:I = 0x44

.field public static final whitelist REASON_OTHER:I = 0x1

.field public static final blacklist REASON_PACKAGE_INSTALLER:I = 0x146

.field public static final blacklist REASON_PACKAGE_REPLACED:I = 0x137

.field public static final blacklist REASON_PACKAGE_UNARCHIVE:I = 0x148

.field public static final blacklist REASON_PACKAGE_VERIFIER:I = 0x131

.field public static final blacklist REASON_PRE_BOOT_COMPLETED:I = 0xc9

.field public static final blacklist REASON_PROC_STATE_BFGS:I = 0xf

.field public static final blacklist REASON_PROC_STATE_BTOP:I = 0xd

.field public static final blacklist REASON_PROC_STATE_FGS:I = 0xe

.field public static final blacklist REASON_PROC_STATE_PERSISTENT:I = 0xa

.field public static final blacklist REASON_PROC_STATE_PERSISTENT_UI:I = 0xb

.field public static final blacklist REASON_PROC_STATE_TOP:I = 0xc

.field public static final blacklist REASON_PROFILE_OWNER:I = 0x38

.field public static final whitelist REASON_PUSH_MESSAGING:I = 0x65

.field public static final blacklist REASON_PUSH_MESSAGING_DEFERRABLE:I = 0x69

.field public static final whitelist REASON_PUSH_MESSAGING_OVER_QUOTA:I = 0x66

.field public static final whitelist REASON_REFRESH_SAFETY_SOURCES:I = 0xd0

.field public static final blacklist REASON_ROLE_DIALER:I = 0x13e

.field public static final blacklist REASON_ROLE_EMERGENCY:I = 0x13f

.field public static final blacklist REASON_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED:I = 0xcf

.field public static final blacklist REASON_SERVICE_LAUNCH:I = 0x12f

.field public static final blacklist REASON_SHELL:I = 0x13c

.field public static final blacklist REASON_START_ACTIVITY_FLAG:I = 0x35

.field public static final blacklist REASON_SYNC_MANAGER:I = 0x132

.field public static final blacklist REASON_SYSTEM_ALERT_WINDOW_PERMISSION:I = 0x3e

.field public static final blacklist REASON_SYSTEM_ALLOW_LISTED:I = 0x12c

.field public static final blacklist REASON_SYSTEM_EXEMPT_APP_OP:I = 0x147

.field public static final blacklist REASON_SYSTEM_MODULE:I = 0x140

.field public static final blacklist REASON_SYSTEM_UID:I = 0x33

.field public static final blacklist REASON_TEMP_ALLOWED_WHILE_IN_USE:I = 0x46

.field public static final blacklist REASON_TILE_ONCLICK:I = 0x149

.field public static final blacklist REASON_TIMEZONE_CHANGED:I = 0xcc

.field public static final blacklist REASON_TIME_CHANGED:I = 0xcd

.field public static final blacklist REASON_UID_VISIBLE:I = 0x32

.field public static final whitelist REASON_UNKNOWN:I = 0x0

.field public static final blacklist REASON_VPN:I = 0x135

.field public static final blacklist TEMPORARY_ALLOW_LIST_TYPE_APP_FREEZING_DELAYED:I = 0x4

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_FOREGROUND_SERVICE_ALLOWED:I = 0x0

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_FOREGROUND_SERVICE_NOT_ALLOWED:I = 0x1

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_NONE:I = -0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DeviceIdleManager;

    invoke-virtual {p1}, Landroid/os/DeviceIdleManager;->getService()Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    return-void
.end method

.method public static blacklist getExemptionReasonForStatsd(I)I
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x44

    if-eq p0, v0, :cond_0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/16 p0, 0x144

    return p0

    :pswitch_1
    const/16 p0, 0x143

    return p0

    :pswitch_2
    const/16 p0, 0x142

    return p0

    :pswitch_3
    const/16 p0, 0x141

    return p0

    :pswitch_4
    const/16 p0, 0x140

    return p0

    :pswitch_5
    const/16 p0, 0x13f

    return p0

    :pswitch_6
    const/16 p0, 0x13e

    return p0

    :pswitch_7
    const/16 p0, 0x39

    return p0

    :pswitch_8
    const/16 p0, 0x38

    return p0

    :pswitch_9
    const/16 p0, 0x37

    return p0

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getReasonCodeFromProcState(I)I
    .locals 1

    if-gtz p0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    const/16 p0, 0xb

    return p0

    :cond_1
    const/4 v0, 0x2

    if-gt p0, v0, :cond_2

    const/16 p0, 0xc

    return p0

    :cond_2
    const/4 v0, 0x3

    if-gt p0, v0, :cond_3

    const/16 p0, 0xd

    return p0

    :cond_3
    const/4 v0, 0x4

    if-gt p0, v0, :cond_4

    const/16 p0, 0xe

    return p0

    :cond_4
    const/4 v0, 0x5

    if-gt p0, v0, :cond_5

    const/16 p0, 0xf

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist reasonCodeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(unknown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "REASON_PACKAGE_INSTALLER"

    return-object p0

    :pswitch_1
    const-string p0, "REASON_MEDIA_NOTIFICATION_TRANSFER"

    return-object p0

    :pswitch_2
    const-string p0, "ACTIVE_DEVICE_ADMIN"

    return-object p0

    :pswitch_3
    const-string p0, "DISALLOW_APPS_CONTROL"

    return-object p0

    :pswitch_4
    const-string p0, "DPO_PROTECTED_APP"

    return-object p0

    :pswitch_5
    const-string p0, "CARRIER_PRIVILEGED_APP"

    return-object p0

    :pswitch_6
    const-string p0, "SYSTEM_MODULE"

    return-object p0

    :pswitch_7
    const-string p0, "ROLE_EMERGENCY"

    return-object p0

    :pswitch_8
    const-string p0, "ROLE_DIALER"

    return-object p0

    :pswitch_9
    const-string p0, "MEDIA_SESSION_CALLBACK"

    return-object p0

    :pswitch_a
    const-string p0, "SHELL"

    return-object p0

    :pswitch_b
    const-string p0, "EVENT_MMS"

    return-object p0

    :pswitch_c
    const-string p0, "EVENT_SMS"

    return-object p0

    :pswitch_d
    const-string p0, "MEDIA_BUTTON"

    return-object p0

    :pswitch_e
    const-string p0, "LOCATION_PROVIDER"

    return-object p0

    :pswitch_f
    const-string p0, "PACKAGE_REPLACED"

    return-object p0

    :pswitch_10
    const-string p0, "NOTIFICATION_SERVICE"

    return-object p0

    :pswitch_11
    const-string p0, "VPN"

    return-object p0

    :pswitch_12
    const-string p0, "DOMAIN_VERIFICATION_V2"

    return-object p0

    :pswitch_13
    const-string p0, "DOMAIN_VERIFICATION_V1"

    return-object p0

    :pswitch_14
    const-string p0, "SYNC_MANAGER"

    return-object p0

    :pswitch_15
    const-string p0, "PACKAGE_VERIFIER"

    return-object p0

    :pswitch_16
    const-string p0, "KEY_CHAIN"

    return-object p0

    :pswitch_17
    const-string p0, "SERVICE_LAUNCH"

    return-object p0

    :pswitch_18
    const-string p0, "ALARM_MANAGER_WHILE_IDLE"

    return-object p0

    :pswitch_19
    const-string p0, "ALARM_MANAGER_ALARM_CLOCK"

    return-object p0

    :pswitch_1a
    const-string p0, "SYSTEM_ALLOW_LISTED"

    return-object p0

    :pswitch_1b
    const-string p0, "REASON_REFRESH_SAFETY_SOURCES"

    return-object p0

    :pswitch_1c
    const-string p0, "REASON_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    return-object p0

    :pswitch_1d
    const-string p0, "LOCALE_CHANGED"

    return-object p0

    :pswitch_1e
    const-string p0, "TIME_CHANGED"

    return-object p0

    :pswitch_1f
    const-string p0, "TIMEZONE_CHANGED"

    return-object p0

    :pswitch_20
    const-string p0, "BLUETOOTH_BROADCAST"

    return-object p0

    :pswitch_21
    const-string p0, "LOCKED_BOOT_COMPLETED"

    return-object p0

    :pswitch_22
    const-string p0, "PRE_BOOT_COMPLETED"

    return-object p0

    :pswitch_23
    const-string p0, "BOOT_COMPLETED"

    return-object p0

    :pswitch_24
    const-string p0, "PUSH_MESSAGING_DEFERRABLE"

    return-object p0

    :pswitch_25
    const-string p0, "REASON_ACCOUNT_TRANSFER"

    return-object p0

    :pswitch_26
    const-string p0, "ACTIVITY_RECOGNITION"

    return-object p0

    :pswitch_27
    const-string p0, "PUSH_MESSAGING_OVER_QUOTA"

    return-object p0

    :pswitch_28
    const-string p0, "PUSH_MESSAGING"

    return-object p0

    :pswitch_29
    const-string p0, "GEOFENCING"

    return-object p0

    :pswitch_2a
    const-string p0, "CURRENT_INPUT_METHOD"

    return-object p0

    :pswitch_2b
    const-string p0, "TEMP_ALLOWED_WHILE_IN_USE"

    return-object p0

    :pswitch_2c
    const-string p0, "OP_ACTIVATE_PLATFORM_VPN"

    return-object p0

    :pswitch_2d
    const-string p0, "OP_ACTIVATE_VPN"

    return-object p0

    :pswitch_2e
    const-string p0, "ACTIVITY_VISIBILITY_GRACE_PERIOD"

    return-object p0

    :pswitch_2f
    const-string p0, "APPOP"

    return-object p0

    :pswitch_30
    const-string p0, "ALLOWLISTED_PACKAGE"

    return-object p0

    :pswitch_31
    const-string p0, "DEVICE_DEMO_MODE"

    return-object p0

    :pswitch_32
    const-string p0, "SYSTEM_ALERT_WINDOW_PERMISSION"

    return-object p0

    :pswitch_33
    const-string p0, "INSTR_BACKGROUND_FGS_PERMISSION"

    return-object p0

    :pswitch_34
    const-string p0, "INSTR_BACKGROUND_ACTIVITY_PERMISSION"

    return-object p0

    :pswitch_35
    const-string p0, "BACKGROUND_FGS_PERMISSION"

    return-object p0

    :pswitch_36
    const-string p0, "BACKGROUND_ACTIVITY_PERMISSION"

    return-object p0

    :pswitch_37
    const-string p0, "COMPANION_DEVICE_MANAGER"

    return-object p0

    :pswitch_38
    const-string p0, "PROFILE_OWNER"

    return-object p0

    :pswitch_39
    const-string p0, "DEVICE_OWNER"

    return-object p0

    :pswitch_3a
    const-string p0, "FGS_BINDING"

    return-object p0

    :pswitch_3b
    const-string p0, "START_ACTIVITY_FLAG"

    return-object p0

    :pswitch_3c
    const-string p0, "ACTIVITY_STARTER"

    return-object p0

    :pswitch_3d
    const-string p0, "SYSTEM_UID"

    return-object p0

    :pswitch_3e
    const-string p0, "UID_VISIBLE"

    return-object p0

    :pswitch_3f
    const-string p0, "PROC_STATE_BFGS"

    return-object p0

    :pswitch_40
    const-string p0, "PROC_STATE_FGS"

    return-object p0

    :pswitch_41
    const-string p0, "PROC_STATE_BTOP"

    return-object p0

    :pswitch_42
    const-string p0, "PROC_STATE_TOP"

    return-object p0

    :pswitch_43
    const-string p0, "PROC_STATE_PERSISTENT_UI"

    return-object p0

    :pswitch_44
    const-string p0, "PROC_STATE_PERSISTENT"

    return-object p0

    :cond_0
    const-string p0, "REASON_OPT_OUT_REQUESTED"

    return-object p0

    :cond_1
    const-string p0, "REASON_MARS_MANAGED_APP"

    return-object p0

    :cond_2
    const-string p0, "OTHER"

    return-object p0

    :cond_3
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_4
    const-string p0, "DENIED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc8
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x12c
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
.method public blacklist addToPermanentAllowList(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/util/List;)V

    return-void
.end method

.method public blacklist addToPermanentAllowList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApps(Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    move-wide v2, p4

    invoke-interface/range {v0 .. v6}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist addToTemporaryAllowListForEvent(Ljava/lang/String;ILjava/lang/String;I)J
    .locals 1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    :try_start_0
    iget-object p4, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {p4, p1, p0, p2, p3}, Landroid/os/IDeviceIdleController;->whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p4, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {p4, p1, p0, p2, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    iget-object p4, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {p4, p1, p0, p2, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getAllowListedAppIds(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

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

.method public blacklist isAllowListed(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

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

.method public blacklist removeFromPermanentAllowList(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

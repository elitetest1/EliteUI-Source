.class public abstract Landroid/hardware/face/IFaceService$Stub;
.super Landroid/os/Binder;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAuthenticatorsRegisteredCallback:I = 0x1e

.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x1a

.field static final blacklist TRANSACTION_authenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0xe

.field static final blacklist TRANSACTION_cancelFaceDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFace:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final blacklist TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_enrollRemotely:I = 0xd

.field static final blacklist TRANSACTION_generateChallenge:I = 0x13

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x18

.field static final blacklist TRANSACTION_getEnrolledFaces:I = 0x11

.field static final blacklist TRANSACTION_getFeature:I = 0x1c

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x16

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledFaces:I = 0x15

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x17

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x12

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticationStateListener:I = 0x1f

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x1d

.field static final blacklist TRANSACTION_registerBiometricStateListener:I = 0x21

.field static final blacklist TRANSACTION_remove:I = 0xf

.field static final blacklist TRANSACTION_removeAll:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x19

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x14

.field static final blacklist TRANSACTION_scheduleWatchdog:I = 0x22

.field static final blacklist TRANSACTION_semAuthenticate:I = 0x23

.field static final blacklist TRANSACTION_semAuthenticateExt:I = 0x24

.field static final blacklist TRANSACTION_semGetInfo:I = 0x2a

.field static final blacklist TRANSACTION_semGetRemainingLockoutTime:I = 0x31

.field static final blacklist TRANSACTION_semGetSecurityLevel:I = 0x2f

.field static final blacklist TRANSACTION_semIsEnrollSession:I = 0x25

.field static final blacklist TRANSACTION_semIsFrameworkHandleLockout:I = 0x30

.field static final blacklist TRANSACTION_semIsSessionClose:I = 0x2e

.field static final blacklist TRANSACTION_semPauseAuth:I = 0x28

.field static final blacklist TRANSACTION_semPauseEnroll:I = 0x26

.field static final blacklist TRANSACTION_semResetAuthenticationTimeout:I = 0x2b

.field static final blacklist TRANSACTION_semResumeAuth:I = 0x29

.field static final blacklist TRANSACTION_semResumeEnroll:I = 0x27

.field static final blacklist TRANSACTION_semSessionClose:I = 0x2d

.field static final blacklist TRANSACTION_semSessionOpen:I = 0x2c

.field static final blacklist TRANSACTION_semShouldRemoveTemplate:I = 0x32

.field static final blacklist TRANSACTION_setFeature:I = 0x1b

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8

.field static final blacklist TRANSACTION_unregisterAuthenticationStateListener:I = 0x20


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
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

    invoke-direct {p0, v0}, Landroid/hardware/face/IFaceService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enforcer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.hardware.face.IFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/face/IFaceService;

    return-object v0

    :cond_1
    new-instance v0, Landroid/hardware/face/IFaceService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/face/IFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "semShouldRemoveTemplate"

    return-object p0

    :pswitch_1
    const-string p0, "semGetRemainingLockoutTime"

    return-object p0

    :pswitch_2
    const-string p0, "semIsFrameworkHandleLockout"

    return-object p0

    :pswitch_3
    const-string p0, "semGetSecurityLevel"

    return-object p0

    :pswitch_4
    const-string p0, "semIsSessionClose"

    return-object p0

    :pswitch_5
    const-string p0, "semSessionClose"

    return-object p0

    :pswitch_6
    const-string p0, "semSessionOpen"

    return-object p0

    :pswitch_7
    const-string p0, "semResetAuthenticationTimeout"

    return-object p0

    :pswitch_8
    const-string p0, "semGetInfo"

    return-object p0

    :pswitch_9
    const-string p0, "semResumeAuth"

    return-object p0

    :pswitch_a
    const-string p0, "semPauseAuth"

    return-object p0

    :pswitch_b
    const-string p0, "semResumeEnroll"

    return-object p0

    :pswitch_c
    const-string p0, "semPauseEnroll"

    return-object p0

    :pswitch_d
    const-string p0, "semIsEnrollSession"

    return-object p0

    :pswitch_e
    const-string p0, "semAuthenticateExt"

    return-object p0

    :pswitch_f
    const-string p0, "semAuthenticate"

    return-object p0

    :pswitch_10
    const-string p0, "scheduleWatchdog"

    return-object p0

    :pswitch_11
    const-string p0, "registerBiometricStateListener"

    return-object p0

    :pswitch_12
    const-string p0, "unregisterAuthenticationStateListener"

    return-object p0

    :pswitch_13
    const-string p0, "registerAuthenticationStateListener"

    return-object p0

    :pswitch_14
    const-string p0, "addAuthenticatorsRegisteredCallback"

    return-object p0

    :pswitch_15
    const-string p0, "registerAuthenticators"

    return-object p0

    :pswitch_16
    const-string p0, "getFeature"

    return-object p0

    :pswitch_17
    const-string p0, "setFeature"

    return-object p0

    :pswitch_18
    const-string p0, "addLockoutResetCallback"

    return-object p0

    :pswitch_19
    const-string p0, "resetLockout"

    return-object p0

    :pswitch_1a
    const-string p0, "getAuthenticatorId"

    return-object p0

    :pswitch_1b
    const-string p0, "invalidateAuthenticatorId"

    return-object p0

    :pswitch_1c
    const-string p0, "getLockoutModeForUser"

    return-object p0

    :pswitch_1d
    const-string p0, "hasEnrolledFaces"

    return-object p0

    :pswitch_1e
    const-string p0, "revokeChallenge"

    return-object p0

    :pswitch_1f
    const-string p0, "generateChallenge"

    return-object p0

    :pswitch_20
    const-string p0, "isHardwareDetected"

    return-object p0

    :pswitch_21
    const-string p0, "getEnrolledFaces"

    return-object p0

    :pswitch_22
    const-string p0, "removeAll"

    return-object p0

    :pswitch_23
    const-string p0, "remove"

    return-object p0

    :pswitch_24
    const-string p0, "cancelEnrollment"

    return-object p0

    :pswitch_25
    const-string p0, "enrollRemotely"

    return-object p0

    :pswitch_26
    const-string p0, "enroll"

    return-object p0

    :pswitch_27
    const-string p0, "cancelAuthenticationFromService"

    return-object p0

    :pswitch_28
    const-string p0, "cancelFaceDetect"

    return-object p0

    :pswitch_29
    const-string p0, "cancelAuthentication"

    return-object p0

    :pswitch_2a
    const-string p0, "startPreparedClient"

    return-object p0

    :pswitch_2b
    const-string p0, "prepareForAuthentication"

    return-object p0

    :pswitch_2c
    const-string p0, "detectFace"

    return-object p0

    :pswitch_2d
    const-string p0, "authenticate"

    return-object p0

    :pswitch_2e
    const-string p0, "getSensorProperties"

    return-object p0

    :pswitch_2f
    const-string p0, "getSensorPropertiesInternal"

    return-object p0

    :pswitch_30
    const-string p0, "dumpSensorServiceStateProto"

    return-object p0

    :pswitch_31
    const-string p0, "createTestSession"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method protected blacklist addLockoutResetCallback_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist authenticate_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist cancelAuthenticationFromService_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist cancelAuthentication_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist cancelEnrollment_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist cancelFaceDetect_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createTestSession_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist detectFace_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist dumpSensorServiceStateProto_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist enrollRemotely_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist enroll_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist generateChallenge_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAuthenticatorId_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getEnrolledFaces_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getFeature_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getLockoutModeForUser_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

.method protected blacklist getSensorPropertiesInternal_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getSensorProperties_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/hardware/face/IFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist hasEnrolledFaces_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist invalidateAuthenticatorId_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isHardwareDetected_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    const-string v3, "android.hardware.face.IFaceService"

    const/4 v12, 0x1

    if-lt p1, v12, :cond_0

    const v4, 0xffffff

    if-gt p1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object v13, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semShouldRemoveTemplate()Z

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->semGetRemainingLockoutTime(I)I

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semIsFrameworkHandleLockout()Z

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->semGetSecurityLevel(Z)I

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semIsSessionClose()Z

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->semSessionClose(I)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semSessionOpen()V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semResetAuthenticationTimeout()Z

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->semGetInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeAuth()V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseAuth()V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeEnroll()V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseEnroll()V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semIsEnrollSession()Z

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v5

    sget-object v6, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceAuthenticateOptions;

    sget-object v7, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    move-object v8, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->semAuthenticateExt(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;Landroid/view/Surface;[B)J

    move-result-wide v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_f
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    sget-object v0, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/face/FaceAuthenticateOptions;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->semAuthenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;Landroid/os/Bundle;[B)J

    move-result-wide v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->scheduleWatchdog()V

    goto/16 :goto_0

    :pswitch_11
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricStateListener;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    move-object v8, v2

    sget-object v1, Landroid/hardware/face/FaceSensorConfigurations;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorConfigurations;

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticators(Landroid/hardware/face/FaceSensorConfigurations;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v6

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getAuthenticatorId(II)J

    move-result-wide v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_1b
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getLockoutModeForUser(II)I

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1d
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1e
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1f
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_21
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_22
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_24
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_25
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_26
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    sget-object v9, Landroid/hardware/face/FaceEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/face/FaceEnrollOptions;

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/face/IFaceService$Stub;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J

    move-result-wide v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_27
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_28
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->startPreparedClient(II)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v5

    sget-object v6, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceAuthenticateOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v13, p2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/face/IFaceService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/face/FaceAuthenticateOptions;JIZ)V

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2c
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    sget-object v3, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceAuthenticateOptions;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->detectFace(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_2d
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v4

    sget-object v5, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceAuthenticateOptions;

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    move-result-wide v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_2e
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2f
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/face/IFaceService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_30
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_31
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist prepareForAuthentication_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerAuthenticationStateListener_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerAuthenticators_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeAll_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist remove_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist resetLockout_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist revokeChallenge_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist scheduleWatchdog_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semGetInfo_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semGetRemainingLockoutTime_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semGetSecurityLevel_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semIsEnrollSession_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semIsFrameworkHandleLockout_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semIsSessionClose_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semPauseAuth_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semPauseEnroll_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semResetAuthenticationTimeout_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semResumeAuth_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semResumeEnroll_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semSessionClose_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semSessionOpen_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist semShouldRemoveTemplate_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setFeature_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist startPreparedClient_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterAuthenticationStateListener_enforcePermission()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/face/IFaceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/hardware/face/IFaceService$Stub;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

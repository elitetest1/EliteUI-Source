.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final greylist-max-o TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x18

.field static final blacklist TRANSACTION_acknowledgeFullBackupOrRestoreForUser:I = 0x17

.field static final greylist-max-o TRANSACTION_adbBackup:I = 0x13

.field static final greylist-max-o TRANSACTION_adbRestore:I = 0x16

.field static final greylist-max-o TRANSACTION_backupNow:I = 0x12

.field static final blacklist TRANSACTION_backupNowForUser:I = 0x11

.field static final blacklist TRANSACTION_beginRestoreSessionForUser:I = 0x2b

.field static final greylist-max-o TRANSACTION_cancelBackups:I = 0x37

.field static final blacklist TRANSACTION_cancelBackupsForUser:I = 0x36

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0x4

.field static final blacklist TRANSACTION_clearBackupDataForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_dataChanged:I = 0x2

.field static final blacklist TRANSACTION_dataChangedForUser:I = 0x1

.field static final blacklist TRANSACTION_excludeKeysFromRestore:I = 0x47

.field static final blacklist TRANSACTION_filterAppsEligibleForBackupForUser:I = 0x33

.field static final blacklist TRANSACTION_fullBackupCustomized:I = 0x38

.field static final blacklist TRANSACTION_fullRestoreCustomized:I = 0x15

.field static final blacklist TRANSACTION_fullTransportBackupForUser:I = 0x14

.field static final blacklist TRANSACTION_getAvailableRestoreTokenForUser:I = 0x31

.field static final greylist-max-o TRANSACTION_getConfigurationIntent:I = 0x25

.field static final blacklist TRANSACTION_getConfigurationIntentForUser:I = 0x24

.field static final greylist-max-o TRANSACTION_getCurrentTransport:I = 0x1b

.field static final blacklist TRANSACTION_getCurrentTransportComponentForUser:I = 0x1c

.field static final blacklist TRANSACTION_getCurrentTransportForUser:I = 0x1a

.field static final greylist-max-o TRANSACTION_getDataManagementIntent:I = 0x29

.field static final blacklist TRANSACTION_getDataManagementIntentForUser:I = 0x28

.field static final blacklist TRANSACTION_getDataManagementLabelForUser:I = 0x2a

.field static final greylist-max-o TRANSACTION_getDestinationString:I = 0x27

.field static final blacklist TRANSACTION_getDestinationStringForUser:I = 0x26

.field static final greylist-max-o TRANSACTION_getTransportWhitelist:I = 0x20

.field static final blacklist TRANSACTION_getUserForAncestralSerialNumber:I = 0x39

.field static final greylist-max-o TRANSACTION_hasBackupPassword:I = 0x10

.field static final blacklist TRANSACTION_initializeTransportsForUser:I = 0x5

.field static final blacklist TRANSACTION_isAppEligibleForBackupForUser:I = 0x32

.field static final greylist-max-o TRANSACTION_isBackupEnabled:I = 0xe

.field static final blacklist TRANSACTION_isBackupEnabledForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_isBackupServiceActive:I = 0x2f

.field static final blacklist TRANSACTION_isSubUserSupported:I = 0x3b

.field static final blacklist TRANSACTION_isUserReadyForBackup:I = 0x30

.field static final blacklist TRANSACTION_listAllTransportComponentsForUser:I = 0x1f

.field static final greylist-max-o TRANSACTION_listAllTransports:I = 0x1e

.field static final blacklist TRANSACTION_listAllTransportsForUser:I = 0x1d

.field static final greylist-max-o TRANSACTION_opComplete:I = 0x2d

.field static final blacklist TRANSACTION_opCompleteForUser:I = 0x2c

.field static final blacklist TRANSACTION_reportDelayedRestoreResult:I = 0x48

.field static final greylist-max-o TRANSACTION_requestBackup:I = 0x35

.field static final blacklist TRANSACTION_requestBackupForUser:I = 0x34

.field static final greylist-max-o TRANSACTION_restoreAtInstall:I = 0x7

.field static final blacklist TRANSACTION_restoreAtInstallForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_selectBackupTransport:I = 0x22

.field static final blacklist TRANSACTION_selectBackupTransportAsyncForUser:I = 0x23

.field static final blacklist TRANSACTION_selectBackupTransportForUser:I = 0x21

.field static final blacklist TRANSACTION_semBackupPackage:I = 0x3c

.field static final blacklist TRANSACTION_semBackupPackagePath:I = 0x3d

.field static final blacklist TRANSACTION_semCancelBackupAndRestore:I = 0x42

.field static final blacklist TRANSACTION_semDisableDataExtractionRule:I = 0x45

.field static final blacklist TRANSACTION_semDisableRestrictedModeForAdbBackUp:I = 0x46

.field static final blacklist TRANSACTION_semIsBackupEnabled:I = 0x3f

.field static final blacklist TRANSACTION_semRestorePackage:I = 0x3e

.field static final blacklist TRANSACTION_semSetAutoRestoreEnabled:I = 0x41

.field static final blacklist TRANSACTION_semSetBackupEnabled:I = 0x40

.field static final blacklist TRANSACTION_semSetTimeoutBackupAndRestore:I = 0x43

.field static final blacklist TRANSACTION_semSetTransportFlagsForAdbBackup:I = 0x44

.field static final blacklist TRANSACTION_setAncestralSerialNumber:I = 0x3a

.field static final greylist-max-o TRANSACTION_setAutoRestore:I = 0xc

.field static final blacklist TRANSACTION_setAutoRestoreForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_setBackupEnabled:I = 0xa

.field static final blacklist TRANSACTION_setBackupEnabledForUser:I = 0x8

.field static final greylist-max-o TRANSACTION_setBackupPassword:I = 0xf

.field static final greylist-max-o TRANSACTION_setBackupServiceActive:I = 0x2e

.field static final blacklist TRANSACTION_setFrameworkSchedulingEnabledForUser:I = 0x9

.field static final blacklist TRANSACTION_updateTransportAttributesForUser:I = 0x19


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/backup/IBackupManager;

    return-object v0

    :cond_1
    new-instance v0, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "reportDelayedRestoreResult"

    return-object p0

    :pswitch_1
    const-string p0, "excludeKeysFromRestore"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "semDisableRestrictedModeForAdbBackUp"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "semDisableDataExtractionRule"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "semSetTransportFlagsForAdbBackup"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "semSetTimeoutBackupAndRestore"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "semCancelBackupAndRestore"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "semSetAutoRestoreEnabled"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "semSetBackupEnabled"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "semIsBackupEnabled"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "semRestorePackage"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "semBackupPackagePath"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "semBackupPackage"

    return-object p0

    :pswitch_d
    const-string p0, "isSubUserSupported"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "setAncestralSerialNumber"

    return-object p0

    :pswitch_f
    const-string p0, "getUserForAncestralSerialNumber"

    return-object p0

    :pswitch_10
    const-string p0, "fullBackupCustomized"

    return-object p0

    :pswitch_11
    const-string p0, "cancelBackups"

    return-object p0

    :pswitch_12
    const-string p0, "cancelBackupsForUser"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "requestBackup"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "requestBackupForUser"

    return-object p0

    :pswitch_15
    const-string p0, "filterAppsEligibleForBackupForUser"

    return-object p0

    :pswitch_16
    const-string p0, "isAppEligibleForBackupForUser"

    return-object p0

    :pswitch_17
    const-string p0, "getAvailableRestoreTokenForUser"

    return-object p0

    :pswitch_18
    const-string p0, "isUserReadyForBackup"

    return-object p0

    :pswitch_19
    const-string p0, "isBackupServiceActive"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "setBackupServiceActive"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "opComplete"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "opCompleteForUser"

    return-object p0

    :pswitch_1d
    const-string p0, "beginRestoreSessionForUser"

    return-object p0

    :pswitch_1e
    const-string p0, "getDataManagementLabelForUser"

    return-object p0

    :pswitch_1f
    const-string p0, "getDataManagementIntent"

    return-object p0

    :pswitch_20
    const-string p0, "getDataManagementIntentForUser"

    return-object p0

    :pswitch_21
    const-string p0, "getDestinationString"

    return-object p0

    :pswitch_22
    const-string p0, "getDestinationStringForUser"

    return-object p0

    :pswitch_23
    const-string p0, "getConfigurationIntent"

    return-object p0

    :pswitch_24
    const-string p0, "getConfigurationIntentForUser"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "selectBackupTransportAsyncForUser"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "selectBackupTransport"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "selectBackupTransportForUser"

    return-object p0

    :pswitch_28
    const-string p0, "getTransportWhitelist"

    return-object p0

    :pswitch_29
    const-string p0, "listAllTransportComponentsForUser"

    return-object p0

    :pswitch_2a
    const-string p0, "listAllTransports"

    return-object p0

    :pswitch_2b
    const-string p0, "listAllTransportsForUser"

    return-object p0

    :pswitch_2c
    const-string p0, "getCurrentTransportComponentForUser"

    return-object p0

    :pswitch_2d
    const-string p0, "getCurrentTransport"

    return-object p0

    :pswitch_2e
    const-string p0, "getCurrentTransportForUser"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "updateTransportAttributesForUser"

    return-object p0

    :pswitch_30
    const-string p0, "acknowledgeFullBackupOrRestore"

    return-object p0

    :pswitch_31
    const-string p0, "acknowledgeFullBackupOrRestoreForUser"

    return-object p0

    :pswitch_32
    const-string p0, "adbRestore"

    return-object p0

    :pswitch_33
    const-string p0, "fullRestoreCustomized"

    return-object p0

    :pswitch_34
    const-string p0, "fullTransportBackupForUser"

    return-object p0

    :pswitch_35
    const-string p0, "adbBackup"

    return-object p0

    :pswitch_36
    const-string p0, "backupNow"

    return-object p0

    :pswitch_37
    const-string p0, "backupNowForUser"

    return-object p0

    :pswitch_38
    const-string p0, "hasBackupPassword"

    return-object p0

    :pswitch_39
    const-string/jumbo p0, "setBackupPassword"

    return-object p0

    :pswitch_3a
    const-string p0, "isBackupEnabled"

    return-object p0

    :pswitch_3b
    const-string p0, "isBackupEnabledForUser"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "setAutoRestore"

    return-object p0

    :pswitch_3d
    const-string/jumbo p0, "setAutoRestoreForUser"

    return-object p0

    :pswitch_3e
    const-string/jumbo p0, "setBackupEnabled"

    return-object p0

    :pswitch_3f
    const-string/jumbo p0, "setFrameworkSchedulingEnabledForUser"

    return-object p0

    :pswitch_40
    const-string/jumbo p0, "setBackupEnabledForUser"

    return-object p0

    :pswitch_41
    const-string/jumbo p0, "restoreAtInstall"

    return-object p0

    :pswitch_42
    const-string/jumbo p0, "restoreAtInstallForUser"

    return-object p0

    :pswitch_43
    const-string p0, "initializeTransportsForUser"

    return-object p0

    :pswitch_44
    const-string p0, "clearBackupData"

    return-object p0

    :pswitch_45
    const-string p0, "clearBackupDataForUser"

    return-object p0

    :pswitch_46
    const-string p0, "dataChanged"

    return-object p0

    :pswitch_47
    const-string p0, "dataChangedForUser"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x47

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    const-string v3, "android.app.backup.IBackupManager"

    const/4 v6, 0x1

    if-lt v1, v6, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :cond_1
    packed-switch v1, :pswitch_data_0

    move-object v14, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/backup/IBackupManager$Stub;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/backup/IBackupManager$Stub;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semDisableRestrictedModeForAdbBackUp(Z)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semDisableDataExtractionRule(Z)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semSetTransportFlagsForAdbBackup(I)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semSetTimeoutBackupAndRestore(I)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->semCancelBackupAndRestore()Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semSetAutoRestoreEnabled(Z)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semSetBackupEnabled(Z)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->semIsBackupEnabled()Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/app/backup/IBackupManager$Stub;->semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v7, p2

    invoke-virtual {v7}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_c
    move-object v7, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->isSubUserSupported()Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_e
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setAncestralSerialNumber(J)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_f
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_0
    move v12, v6

    goto/16 :goto_2

    :pswitch_10
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    move v8, v6

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    move v10, v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    move v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, p2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v14, v16

    invoke-virtual/range {v0 .. v14}, Landroid/app/backup/IBackupManager$Stub;->fullBackupCustomized(ILjava/lang/String;ZZZZZZZ[Ljava/lang/String;ZLjava/lang/String;ZLandroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_12
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->cancelBackupsForUser(I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_13
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_14
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_15
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_16
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_17
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1

    :pswitch_18
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isUserReadyForBackup(I)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_19
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_1a
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_1b
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_1c
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->opCompleteForUser(IIJ)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_1d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_2

    :pswitch_1e
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, v15, v12}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_2

    :cond_2
    const/4 v12, 0x1

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_1f
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_20
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_21
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_22
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_23
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_24
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_25
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_26
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_27
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_28
    move v12, v6

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_29
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_2a
    move v12, v6

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2b
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2c
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_2d
    move v12, v6

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2e
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2f
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v7}, Landroid/app/backup/IBackupManager$Stub;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_30
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_31
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v6

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_32
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_33
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->fullRestoreCustomized(ILjava/lang/String;ZLjava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_34
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackupForUser(I[Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_35
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v11}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_36
    move v12, v6

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_37
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->backupNowForUser(I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_38
    move v12, v6

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_39
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_3a
    move v12, v6

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_3b
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabledForUser(I)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_3c
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_3d
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestoreForUser(IZ)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_3e
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_3f
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setFrameworkSchedulingEnabledForUser(IZ)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_40
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabledForUser(IZ)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_41
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_42
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstallForUser(ILjava/lang/String;I)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_43
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_44
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_45
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_46
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_47
    move-object v14, v2

    move v12, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->dataChangedForUser(ILjava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.class public abstract Landroid/content/pm/IASKSManager$Stub;
.super Landroid/os/Binder;
.source "IASKSManager.java"

# interfaces
.implements Landroid/content/pm/IASKSManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IASKSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IASKSManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyScpmPolicyFromService:I = 0x13

.field static final blacklist TRANSACTION_checkASKSTarget:I = 0xc

.field static final blacklist TRANSACTION_checkDeletableListForASKS:I = 0x9

.field static final blacklist TRANSACTION_checkFollowingLegitimateWay:I = 0x8

.field static final blacklist TRANSACTION_checkIfSuspiciousValue:I = 0x10

.field static final blacklist TRANSACTION_checkRestrictedPermission:I = 0x5

.field static final blacklist TRANSACTION_checkSecurityEnabled:I = 0x16

.field static final blacklist TRANSACTION_checkUnknownSourcePackage:I = 0xd

.field static final blacklist TRANSACTION_clearASKSruleForRemovedPackage:I = 0x4

.field static final blacklist TRANSACTION_getIMEIList:I = 0x7

.field static final blacklist TRANSACTION_getPolicyVersion:I = 0x11

.field static final blacklist TRANSACTION_getSEInfo:I = 0x6

.field static final blacklist TRANSACTION_getUNvalueForASKS:I = 0xb

.field static final blacklist TRANSACTION_getUnknownAppList:I = 0xf

.field static final blacklist TRANSACTION_isSuspiciousMsgTarget:I = 0x12

.field static final blacklist TRANSACTION_isTrustedStore:I = 0x15

.field static final blacklist TRANSACTION_isUnknownApps:I = 0xe

.field static final blacklist TRANSACTION_postASKSsetup:I = 0x3

.field static final blacklist TRANSACTION_readASKSFiles:I = 0x14

.field static final blacklist TRANSACTION_setASKSPolicyVersion:I = 0x17

.field static final blacklist TRANSACTION_setTrustTimebyStatusChanged:I = 0xa

.field static final blacklist TRANSACTION_systemReady:I = 0x1

.field static final blacklist TRANSACTION_verifyASKStokenForPackage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.IASKSManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IASKSManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IASKSManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.content.pm.IASKSManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IASKSManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/pm/IASKSManager;

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/IASKSManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IASKSManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "setASKSPolicyVersion"

    return-object p0

    :pswitch_1
    const-string p0, "checkSecurityEnabled"

    return-object p0

    :pswitch_2
    const-string p0, "isTrustedStore"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "readASKSFiles"

    return-object p0

    :pswitch_4
    const-string p0, "applyScpmPolicyFromService"

    return-object p0

    :pswitch_5
    const-string p0, "isSuspiciousMsgTarget"

    return-object p0

    :pswitch_6
    const-string p0, "getPolicyVersion"

    return-object p0

    :pswitch_7
    const-string p0, "checkIfSuspiciousValue"

    return-object p0

    :pswitch_8
    const-string p0, "getUnknownAppList"

    return-object p0

    :pswitch_9
    const-string p0, "isUnknownApps"

    return-object p0

    :pswitch_a
    const-string p0, "checkUnknownSourcePackage"

    return-object p0

    :pswitch_b
    const-string p0, "checkASKSTarget"

    return-object p0

    :pswitch_c
    const-string p0, "getUNvalueForASKS"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "setTrustTimebyStatusChanged"

    return-object p0

    :pswitch_e
    const-string p0, "checkDeletableListForASKS"

    return-object p0

    :pswitch_f
    const-string p0, "checkFollowingLegitimateWay"

    return-object p0

    :pswitch_10
    const-string p0, "getIMEIList"

    return-object p0

    :pswitch_11
    const-string p0, "getSEInfo"

    return-object p0

    :pswitch_12
    const-string p0, "checkRestrictedPermission"

    return-object p0

    :pswitch_13
    const-string p0, "clearASKSruleForRemovedPackage"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "postASKSsetup"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "verifyASKStokenForPackage"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "systemReady"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x16

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/content/pm/IASKSManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v14, p3

    const-string v3, "android.content.pm.IASKSManager"

    const/4 v15, 0x1

    if-lt v1, v15, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :cond_1
    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/content/pm/IASKSManager$Stub;->setASKSPolicyVersion(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0}, Landroid/content/pm/IASKSManager$Stub;->checkSecurityEnabled()I

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/IASKSManager$Stub;->isTrustedStore(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/IASKSManager$Stub;->readASKSFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/content/pm/IASKSManager$Stub;->applyScpmPolicyFromService(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/content/pm/IASKSManager$Stub;->isSuspiciousMsgTarget(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/content/pm/IASKSManager$Stub;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v7, Landroid/content/pm/IASKSManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2, v6}, Landroid/content/pm/IASKSManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v5, v7}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/content/pm/IASKSManager$Stub;->checkIfSuspiciousValue(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-nez v6, :cond_3

    const/4 v0, -0x1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/content/pm/IASKSManager$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v0, v14}, Landroid/content/pm/IASKSManager$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v6, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0}, Landroid/content/pm/IASKSManager$Stub;->getUnknownAppList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/Signature;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/IASKSManager$Stub;->isUnknownApps(Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_1
    move/from16 v16, v15

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/Signature;

    move-object v7, v5

    move-object v5, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v10, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v11, v10

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v12, v11

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v13, v12

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move/from16 v16, v15

    sget-object v15, Landroid/content/pm/AsksParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/AsksParcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, v13

    move-object v13, v15

    invoke-virtual/range {v0 .. v13}, Landroid/content/pm/IASKSManager$Stub;->checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/content/pm/AsksParcel;)I

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_b
    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/content/pm/IASKSManager$Stub;->checkASKSTarget(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_c
    move/from16 v16, v15

    invoke-virtual {v0}, Landroid/content/pm/IASKSManager$Stub;->getUNvalueForASKS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_d
    move/from16 v16, v15

    invoke-virtual {v0}, Landroid/content/pm/IASKSManager$Stub;->setTrustTimebyStatusChanged()V

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_e
    move/from16 v16, v15

    invoke-virtual {v0}, Landroid/content/pm/IASKSManager$Stub;->checkDeletableListForASKS()V

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_f
    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/IASKSManager$Stub;->checkFollowingLegitimateWay(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_10
    move/from16 v16, v15

    invoke-virtual {v0}, Landroid/content/pm/IASKSManager$Stub;->getIMEIList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_2

    :pswitch_11
    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/content/pm/IASKSManager$Stub;->getSEInfo(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_12
    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/IASKSManager$Stub;->checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_13
    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/content/pm/IASKSManager$Stub;->clearASKSruleForRemovedPackage(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_14
    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/pm/IASKSManager$Stub;->postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_15
    move/from16 v16, v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    sget-object v6, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/Signature;

    move-object v2, v5

    move-object v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/IASKSManager$Stub;->verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_16
    move/from16 v16, v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->systemReady()V

    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

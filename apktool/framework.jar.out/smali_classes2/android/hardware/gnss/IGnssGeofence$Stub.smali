.class public abstract Landroid/hardware/gnss/IGnssGeofence$Stub;
.super Landroid/os/Binder;
.source "IGnssGeofence.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGeofence:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_pauseGeofence:I = 0x3

.field static final blacklist TRANSACTION_removeGeofence:I = 0x5

.field static final blacklist TRANSACTION_resumeGeofence:I = 0x4

.field static final blacklist TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofence;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/gnss/IGnssGeofence;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/gnss/IGnssGeofence;

    return-object v0

    :cond_1
    new-instance v0, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    :cond_0
    const-string p0, "removeGeofence"

    return-object p0

    :cond_1
    const-string p0, "resumeGeofence"

    return-object p0

    :cond_2
    const-string p0, "pauseGeofence"

    return-object p0

    :cond_3
    const-string p0, "addGeofence"

    return-object p0

    :cond_4
    const-string p0, "setCallback"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
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

    const p0, 0xfffffe

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v12, p3

    sget-object v2, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v3, 0xffffff

    const/4 v13, 0x1

    if-lt p1, v13, :cond_0

    if-gt p1, v3, :cond_0

    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    const v5, 0x5f4e5446

    if-ne p1, v5, :cond_1

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_1
    if-ne p1, v3, :cond_2

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :cond_2
    const v2, 0xfffffe

    if-ne p1, v2, :cond_3

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_3
    if-eq p1, v13, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->removeGeofence(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/IGnssGeofence$Stub;->resumeGeofence(II)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->pauseGeofence(I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/gnss/IGnssGeofence$Stub;->addGeofence(IDDDIIII)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofenceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->setCallback(Landroid/hardware/gnss/IGnssGeofenceCallback;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v13
.end method

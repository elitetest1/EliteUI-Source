.class public abstract Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;
.super Landroid/os/Binder;
.source "ISehRadioSim.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/sim/ISehRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/ISehRadioSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_accessPhonebookEntry:I = 0xb

.field static final blacklist TRANSACTION_changeIccPersonalization:I = 0x9

.field static final blacklist TRANSACTION_getAtr:I = 0xc

.field static final blacklist TRANSACTION_getIccCardStatus:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPhonebookEntry:I = 0xa

.field static final blacklist TRANSACTION_getPhonebookStorageInfo:I = 0x3

.field static final blacklist TRANSACTION_getSimLockInfo:I = 0x7

.field static final blacklist TRANSACTION_getUsimPhonebookCapability:I = 0x4

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0xd

.field static final blacklist TRANSACTION_setSimInitEvent:I = 0x6

.field static final blacklist TRANSACTION_setSimOnOff:I = 0x5

.field static final blacklist TRANSACTION_supplyIccPersonalization:I = 0x8

.field static final blacklist TRANSACTION_supplyNetworkDepersonalization:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->markVintfStability()V

    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSim;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    if-eqz v1, :cond_1

    check-cast v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-object v0

    :cond_1
    new-instance v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    move-object v3, p0

    invoke-super {v3, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p4}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getAtr(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    sget-object p1, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getPhonebookEntry(III)V

    goto/16 :goto_0

    :pswitch_4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->supplyIccPersonalization(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getSimLockInfo(III)V

    goto :goto_0

    :pswitch_7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->setSimInitEvent(I)V

    goto :goto_0

    :pswitch_8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->setSimOnOff(II)V

    goto :goto_0

    :pswitch_9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getUsimPhonebookCapability(I)V

    goto :goto_0

    :pswitch_a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getPhonebookStorageInfo(II)V

    goto :goto_0

    :pswitch_b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getIccCardStatus(I)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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

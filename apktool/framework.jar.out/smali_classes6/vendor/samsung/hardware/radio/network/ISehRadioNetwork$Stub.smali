.class public abstract Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;
.super Landroid/os/Binder;
.source "ISehRadioNetwork.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cfrmCpaiFeatureInfo:I = 0x1c

.field static final blacklist TRANSACTION_emergencyControl:I = 0x1

.field static final blacklist TRANSACTION_emergencySearch:I = 0x2

.field static final blacklist TRANSACTION_evtCpaiDataGathering:I = 0x1e

.field static final blacklist TRANSACTION_execCpaiModelUpdate:I = 0x1a

.field static final blacklist TRANSACTION_getAvailableNetworks:I = 0x3

.field static final blacklist TRANSACTION_getCnap:I = 0x4

.field static final blacklist TRANSACTION_getCpaiFeatureInfo:I = 0x1b

.field static final blacklist TRANSACTION_getCpaiModelVersion:I = 0x19

.field static final blacklist TRANSACTION_getCsgList:I = 0x5

.field static final blacklist TRANSACTION_getDisable2g:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNrIconType:I = 0x7

.field static final blacklist TRANSACTION_getNrMode:I = 0x8

.field static final blacklist TRANSACTION_getPreferredNetworkList:I = 0x9

.field static final blacklist TRANSACTION_getRoamingNetworkInfoViaBLE:I = 0xa

.field static final blacklist TRANSACTION_getVendorSpecificConfiguration:I = 0xb

.field static final blacklist TRANSACTION_selectCsgManual:I = 0xc

.field static final blacklist TRANSACTION_sendEncodedUssd:I = 0xd

.field static final blacklist TRANSACTION_sendRequestRaw:I = 0xe

.field static final blacklist TRANSACTION_sendRequestStrings:I = 0xf

.field static final blacklist TRANSACTION_setCpaiDataGathering:I = 0x1d

.field static final blacklist TRANSACTION_setCpaiDevAppMessage:I = 0x1f

.field static final blacklist TRANSACTION_setCurrentNetworkInfoViaBLE:I = 0x10

.field static final blacklist TRANSACTION_setDisable2g:I = 0x11

.field static final blacklist TRANSACTION_setImsCallList:I = 0x12

.field static final blacklist TRANSACTION_setNrMode:I = 0x13

.field static final blacklist TRANSACTION_setPreferredNetworkList:I = 0x14

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x15

.field static final blacklist TRANSACTION_setRoamingNetworkInfoViaBLE:I = 0x16

.field static final blacklist TRANSACTION_setScanResultViaBLE:I = 0x17

.field static final blacklist TRANSACTION_setVendorSpecificConfiguration:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->markVintfStability()V

    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    if-eqz v1, :cond_1

    check-cast v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-object v0

    :cond_1
    new-instance v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getInterfaceHash()Ljava/lang/String;

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setCpaiDevAppMessage(III[B)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3, p4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->evtCpaiDataGathering(II[B)V

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setCpaiDataGathering(IIIII)V

    goto/16 :goto_0

    :pswitch_3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3, p4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->cfrmCpaiFeatureInfo(III[B)V

    goto/16 :goto_0

    :pswitch_4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getCpaiFeatureInfo(II)V

    goto/16 :goto_0

    :pswitch_5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->execCpaiModelUpdate(II)V

    goto/16 :goto_0

    :pswitch_6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getCpaiModelVersion(I)V

    goto/16 :goto_0

    :pswitch_7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    sget-object p1, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setVendorSpecificConfiguration(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    goto/16 :goto_0

    :pswitch_8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setScanResultViaBLE(IBB)V

    goto/16 :goto_0

    :pswitch_9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    sget-object p1, Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setRoamingNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V

    goto/16 :goto_0

    :pswitch_a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    sget-object p1, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V

    goto/16 :goto_0

    :pswitch_c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setNrMode(IIZ)V

    goto/16 :goto_0

    :pswitch_d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    sget-object p1, Lvendor/samsung/hardware/radio/network/SehImsCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvendor/samsung/hardware/radio/network/SehImsCall;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setImsCallList(I[Lvendor/samsung/hardware/radio/network/SehImsCall;)V

    goto/16 :goto_0

    :pswitch_e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setDisable2g(II)V

    goto/16 :goto_0

    :pswitch_f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    sget-object p1, Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setCurrentNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;)V

    goto/16 :goto_0

    :pswitch_10
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->sendRequestStrings(I[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->sendRequestRaw(I[B)V

    goto/16 :goto_0

    :pswitch_12
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    sget-object p1, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->sendEncodedUssd(ILvendor/samsung/hardware/radio/network/SehEncodedUssd;)V

    goto/16 :goto_0

    :pswitch_13
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    sget-object p1, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/samsung/hardware/radio/network/SehCsgInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->selectCsgManual(ILvendor/samsung/hardware/radio/network/SehCsgInfo;)V

    goto/16 :goto_0

    :pswitch_14
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getVendorSpecificConfiguration(I)V

    goto/16 :goto_0

    :pswitch_15
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1, p3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getRoamingNetworkInfoViaBLE(IBLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getPreferredNetworkList(I)V

    goto/16 :goto_0

    :pswitch_17
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getNrMode(I)V

    goto :goto_0

    :pswitch_18
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getNrIconType(I)V

    goto :goto_0

    :pswitch_19
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getDisable2g(I)V

    goto :goto_0

    :pswitch_1a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getCsgList(I)V

    goto :goto_0

    :pswitch_1b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getCnap(I)V

    goto :goto_0

    :pswitch_1c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getAvailableNetworks(I)V

    goto :goto_0

    :pswitch_1d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->emergencySearch(I)V

    goto :goto_0

    :pswitch_1e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v3, p0, p1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->emergencyControl(II)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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

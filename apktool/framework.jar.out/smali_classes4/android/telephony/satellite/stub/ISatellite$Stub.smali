.class public abstract Landroid/telephony/satellite/stub/ISatellite$Stub;
.super Landroid/os/Binder;
.source "ISatellite.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatellite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatellite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortSendingSatelliteDatagrams:I = 0x14

.field static final blacklist TRANSACTION_enableTerrestrialNetworkScanWhileSatelliteModeIsOn:I = 0x3

.field static final blacklist TRANSACTION_pollPendingSatelliteDatagrams:I = 0xa

.field static final blacklist TRANSACTION_requestIsSatelliteEnabled:I = 0x5

.field static final blacklist TRANSACTION_requestIsSatelliteEnabledForCarrier:I = 0x10

.field static final blacklist TRANSACTION_requestIsSatelliteSupported:I = 0x6

.field static final blacklist TRANSACTION_requestSatelliteCapabilities:I = 0x7

.field static final blacklist TRANSACTION_requestSatelliteEnabled:I = 0x4

.field static final blacklist TRANSACTION_requestSatelliteListeningEnabled:I = 0x2

.field static final blacklist TRANSACTION_requestSatelliteModemState:I = 0xc

.field static final blacklist TRANSACTION_requestSignalStrength:I = 0x11

.field static final blacklist TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0xd

.field static final blacklist TRANSACTION_sendSatelliteDatagram:I = 0xb

.field static final blacklist TRANSACTION_setSatelliteEnabledForCarrier:I = 0xf

.field static final blacklist TRANSACTION_setSatelliteListener:I = 0x1

.field static final blacklist TRANSACTION_setSatellitePlmn:I = 0xe

.field static final blacklist TRANSACTION_startSendingNtnSignalStrength:I = 0x12

.field static final blacklist TRANSACTION_startSendingSatellitePointingInfo:I = 0x8

.field static final blacklist TRANSACTION_stopSendingNtnSignalStrength:I = 0x13

.field static final blacklist TRANSACTION_stopSendingSatellitePointingInfo:I = 0x9

.field static final blacklist TRANSACTION_updateSatelliteSubscription:I = 0x15

.field static final blacklist TRANSACTION_updateSystemSelectionChannels:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatellite$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatellite;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatellite;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/telephony/satellite/stub/ISatellite;

    return-object v0

    :cond_1
    new-instance v0, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "updateSystemSelectionChannels"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "updateSatelliteSubscription"

    return-object p0

    :pswitch_2
    const-string p0, "abortSendingSatelliteDatagrams"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "stopSendingNtnSignalStrength"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "startSendingNtnSignalStrength"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "requestSignalStrength"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "requestIsSatelliteEnabledForCarrier"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setSatelliteEnabledForCarrier"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "setSatellitePlmn"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "requestTimeForNextSatelliteVisibility"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "requestSatelliteModemState"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "sendSatelliteDatagram"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "pollPendingSatelliteDatagrams"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "stopSendingSatellitePointingInfo"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "startSendingSatellitePointingInfo"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "requestSatelliteCapabilities"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "requestIsSatelliteSupported"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "requestIsSatelliteEnabled"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "requestSatelliteEnabled"

    return-object p0

    :pswitch_13
    const-string p0, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "requestSatelliteListeningEnabled"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "setSatelliteListener"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x15

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.telephony.satellite.stub.ISatellite"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p1, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/SatelliteDatagram;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBooleanConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V

    goto :goto_0

    :pswitch_12
    sget-object p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V

    goto :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IIntegerConsumer;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

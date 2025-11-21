.class public abstract Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;
.super Landroid/os/Binder;
.source "IFMEventListener.java"

# interfaces
.implements Lcom/samsung/android/media/fmradio/internal/IFMEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAlternateFrequencyReceived:I = 0xf

.field static final blacklist TRANSACTION_onAlternateFrequencyStarted:I = 0xe

.field static final blacklist TRANSACTION_onChannelFound:I = 0x3

.field static final blacklist TRANSACTION_onHeadsetConnected:I = 0x8

.field static final blacklist TRANSACTION_onHeadsetDisconnected:I = 0x9

.field static final blacklist TRANSACTION_onProgrammeIdentificationExtendedCountryCodesReceived:I = 0x12

.field static final blacklist TRANSACTION_onRadioDataSystemDisabled:I = 0xd

.field static final blacklist TRANSACTION_onRadioDataSystemEnabled:I = 0xc

.field static final blacklist TRANSACTION_onRadioDataSystemReceived:I = 0xa

.field static final blacklist TRANSACTION_onRadioDisabled:I = 0x2

.field static final blacklist TRANSACTION_onRadioEnabled:I = 0x1

.field static final blacklist TRANSACTION_onRadioTextPlusReceived:I = 0xb

.field static final blacklist TRANSACTION_onRecordingFinished:I = 0x11

.field static final blacklist TRANSACTION_onScanFinished:I = 0x6

.field static final blacklist TRANSACTION_onScanStarted:I = 0x4

.field static final blacklist TRANSACTION_onScanStopped:I = 0x5

.field static final blacklist TRANSACTION_onTuned:I = 0x7

.field static final blacklist TRANSACTION_onVolumeLocked:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "onProgrammeIdentificationExtendedCountryCodesReceived"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "onRecordingFinished"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "onVolumeLocked"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "onAlternateFrequencyReceived"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "onAlternateFrequencyStarted"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "onRadioDataSystemDisabled"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "onRadioDataSystemEnabled"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "onRadioTextPlusReceived"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "onRadioDataSystemReceived"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "onHeadsetDisconnected"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "onHeadsetConnected"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "onTuned"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "onScanFinished"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "onScanStopped"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "onScanStarted"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "onChannelFound"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "onRadioDisabled"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "onRadioEnabled"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x11

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

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
    const/4 v0, 0x0

    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRecordingFinished()V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onVolumeLocked()V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyStarted()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemDisabled()V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemEnabled()V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

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

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p3, p4, p1, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetDisconnected()V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetConnected()V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onTuned(J)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gt p1, v3, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, p1, [J

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanFinished([J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_2

    :cond_3
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gt p1, v3, :cond_5

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    new-array v0, p1, [J

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStopped([J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_2

    :cond_5
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStarted()V

    goto :goto_2

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onChannelFound(J)V

    goto :goto_2

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDisabled(I)V

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioEnabled()V

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

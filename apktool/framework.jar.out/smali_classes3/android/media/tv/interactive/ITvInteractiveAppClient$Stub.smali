.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppClient.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdBufferReady:I = 0x9

.field static final blacklist TRANSACTION_onAdRequest:I = 0x20

.field static final blacklist TRANSACTION_onBiInteractiveAppCreated:I = 0x7

.field static final blacklist TRANSACTION_onBroadcastInfoRequest:I = 0x4

.field static final blacklist TRANSACTION_onCommandRequest:I = 0xa

.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x3

.field static final blacklist TRANSACTION_onRemoveBroadcastInfo:I = 0x5

.field static final blacklist TRANSACTION_onRequestAvailableSpeeds:I = 0x15

.field static final blacklist TRANSACTION_onRequestCertificate:I = 0x1f

.field static final blacklist TRANSACTION_onRequestCurrentChannelLcn:I = 0xf

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0xe

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x13

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0xd

.field static final blacklist TRANSACTION_onRequestScheduleRecording:I = 0x18

.field static final blacklist TRANSACTION_onRequestScheduleRecording2:I = 0x19

.field static final blacklist TRANSACTION_onRequestSelectedTrackInfo:I = 0x12

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x1d

.field static final blacklist TRANSACTION_onRequestSigning2:I = 0x1e

.field static final blacklist TRANSACTION_onRequestStartRecording:I = 0x16

.field static final blacklist TRANSACTION_onRequestStopRecording:I = 0x17

.field static final blacklist TRANSACTION_onRequestStreamVolume:I = 0x10

.field static final blacklist TRANSACTION_onRequestTimeShiftMode:I = 0x14

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x11

.field static final blacklist TRANSACTION_onRequestTvRecordingInfo:I = 0x1b

.field static final blacklist TRANSACTION_onRequestTvRecordingInfoList:I = 0x1c

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onSessionStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onSetTvRecordingInfo:I = 0x1a

.field static final blacklist TRANSACTION_onSetVideoBounds:I = 0xc

.field static final blacklist TRANSACTION_onTeletextAppStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onTimeShiftCommandRequest:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    return-object v0

    :cond_1
    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "onAdRequest"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "onRequestCertificate"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "onRequestSigning2"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "onRequestSigning"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "onRequestTvRecordingInfoList"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "onRequestTvRecordingInfo"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "onSetTvRecordingInfo"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "onRequestScheduleRecording2"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "onRequestScheduleRecording"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "onRequestStopRecording"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "onRequestStartRecording"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "onRequestAvailableSpeeds"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "onRequestTimeShiftMode"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "onRequestCurrentTvInputId"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "onRequestSelectedTrackInfo"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "onRequestTrackInfoList"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "onRequestStreamVolume"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "onRequestCurrentChannelLcn"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "onRequestCurrentChannelUri"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "onRequestCurrentVideoBounds"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "onSetVideoBounds"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "onTimeShiftCommandRequest"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "onCommandRequest"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "onAdBufferReady"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "onTeletextAppStateChanged"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "onBiInteractiveAppCreated"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "onSessionStateChanged"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "onRemoveBroadcastInfo"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "onBroadcastInfoRequest"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "onLayoutSurface"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "onSessionReleased"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p0, 0x1f

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "android.media.tv.interactive.ITvInteractiveAppClient"

    const/4 v11, 0x1

    if-lt v1, v11, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    move-object/from16 v4, p3

    packed-switch v1, :pswitch_data_0

    move-object v9, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    sget-object v1, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdRequest;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdRequest(Landroid/media/tv/AdRequest;I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCertificate(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object/from16 v7, p2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V

    goto/16 :goto_0

    :pswitch_3
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    goto/16 :goto_0

    :pswitch_4
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfoList(II)V

    goto/16 :goto_0

    :pswitch_5
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfo(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_6
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V

    goto/16 :goto_0

    :pswitch_7
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-wide v9, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object v12, v6

    move-wide v13, v9

    move-object v9, v7

    move-wide v6, v13

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v9, v12

    invoke-virtual/range {v0 .. v10}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V

    goto/16 :goto_0

    :pswitch_8
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    :pswitch_9
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStopRecording(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_a
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V

    goto/16 :goto_0

    :pswitch_b
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestAvailableSpeeds(I)V

    goto/16 :goto_0

    :pswitch_c
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTimeShiftMode(I)V

    goto/16 :goto_0

    :pswitch_d
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentTvInputId(I)V

    goto/16 :goto_0

    :pswitch_e
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSelectedTrackInfo(I)V

    goto/16 :goto_0

    :pswitch_f
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTrackInfoList(I)V

    goto/16 :goto_0

    :pswitch_10
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStreamVolume(I)V

    goto/16 :goto_0

    :pswitch_11
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelLcn(I)V

    goto/16 :goto_0

    :pswitch_12
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelUri(I)V

    goto/16 :goto_0

    :pswitch_13
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentVideoBounds(I)V

    goto/16 :goto_0

    :pswitch_14
    move-object v9, v2

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetVideoBounds(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    :pswitch_15
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    :pswitch_16
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    :pswitch_17
    move-object v9, v2

    sget-object v1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdBuffer;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdBufferReady(Landroid/media/tv/AdBuffer;I)V

    goto/16 :goto_0

    :pswitch_18
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTeletextAppStateChanged(II)V

    goto/16 :goto_0

    :pswitch_19
    move-object v9, v2

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1a
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionStateChanged(III)V

    goto :goto_0

    :pswitch_1b
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRemoveBroadcastInfo(II)V

    goto :goto_0

    :pswitch_1c
    move-object v9, v2

    sget-object v1, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/BroadcastInfoRequest;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V

    goto :goto_0

    :pswitch_1d
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onLayoutSurface(IIIII)V

    goto :goto_0

    :pswitch_1e
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionReleased(I)V

    goto :goto_0

    :pswitch_1f
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputChannel;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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

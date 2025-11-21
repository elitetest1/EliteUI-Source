.class Landroid/media/tv/BroadcastInfoResponse$1;
.super Ljava/lang/Object;
.source "BroadcastInfoResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/BroadcastInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/BroadcastInfoResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoResponse;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected broadcast info response type (value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") in parcel."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Landroid/media/tv/SignalingDataResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SignalingDataResponse;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Landroid/media/tv/TimelineResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineResponse;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroid/media/tv/CommandResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandResponse;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroid/media/tv/DsmccResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccResponse;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Landroid/media/tv/StreamEventResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventResponse;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Landroid/media/tv/PesResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesResponse;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Landroid/media/tv/SectionResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionResponse;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Landroid/media/tv/TableResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableResponse;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p1}, Landroid/media/tv/TsResponse;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TsResponse;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoResponse;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/tv/BroadcastInfoResponse;
    .locals 0

    new-array p0, p1, [Landroid/media/tv/BroadcastInfoResponse;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoResponse$1;->newArray(I)[Landroid/media/tv/BroadcastInfoResponse;

    move-result-object p0

    return-object p0
.end method

.class public final Landroid/media/metrics/PlaybackErrorEvent;
.super Landroid/media/metrics/Event;
.source "PlaybackErrorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackErrorEvent$Builder;,
        Landroid/media/metrics/PlaybackErrorEvent$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_AUDIO_TRACK_INIT_FAILED:I = 0x11

.field public static final whitelist ERROR_AUDIO_TRACK_OTHER:I = 0x13

.field public static final whitelist ERROR_AUDIO_TRACK_WRITE_FAILED:I = 0x12

.field public static final whitelist ERROR_DECODER_INIT_FAILED:I = 0xd

.field public static final whitelist ERROR_DECODING_FAILED:I = 0xe

.field public static final whitelist ERROR_DECODING_FORMAT_EXCEEDS_CAPABILITIES:I = 0xf

.field public static final whitelist ERROR_DECODING_FORMAT_UNSUPPORTED:I = 0x23

.field public static final whitelist ERROR_DECODING_OTHER:I = 0x10

.field public static final whitelist ERROR_DRM_CONTENT_ERROR:I = 0x1c

.field public static final whitelist ERROR_DRM_DEVICE_REVOKED:I = 0x1d

.field public static final whitelist ERROR_DRM_DISALLOWED_OPERATION:I = 0x1a

.field public static final whitelist ERROR_DRM_LICENSE_ACQUISITION_FAILED:I = 0x19

.field public static final whitelist ERROR_DRM_OTHER:I = 0x1e

.field public static final whitelist ERROR_DRM_PROVISIONING_FAILED:I = 0x18

.field public static final whitelist ERROR_DRM_SCHEME_UNSUPPORTED:I = 0x17

.field public static final whitelist ERROR_DRM_SYSTEM_ERROR:I = 0x1b

.field public static final whitelist ERROR_IO_BAD_HTTP_STATUS:I = 0x5

.field public static final whitelist ERROR_IO_CONNECTION_CLOSED:I = 0x8

.field public static final whitelist ERROR_IO_CONNECTION_TIMEOUT:I = 0x7

.field public static final whitelist ERROR_IO_DNS_FAILED:I = 0x6

.field public static final whitelist ERROR_IO_FILE_NOT_FOUND:I = 0x1f

.field public static final whitelist ERROR_IO_NETWORK_CONNECTION_FAILED:I = 0x4

.field public static final whitelist ERROR_IO_NETWORK_UNAVAILABLE:I = 0x3

.field public static final whitelist ERROR_IO_NO_PERMISSION:I = 0x20

.field public static final whitelist ERROR_IO_OTHER:I = 0x9

.field public static final whitelist ERROR_OTHER:I = 0x1

.field public static final whitelist ERROR_PARSING_CONTAINER_MALFORMED:I = 0xb

.field public static final whitelist ERROR_PARSING_CONTAINER_UNSUPPORTED:I = 0x22

.field public static final whitelist ERROR_PARSING_MANIFEST_MALFORMED:I = 0xa

.field public static final whitelist ERROR_PARSING_MANIFEST_UNSUPPORTED:I = 0x21

.field public static final whitelist ERROR_PARSING_OTHER:I = 0xc

.field public static final whitelist ERROR_PLAYER_BEHIND_LIVE_WINDOW:I = 0x15

.field public static final whitelist ERROR_PLAYER_OTHER:I = 0x16

.field public static final whitelist ERROR_PLAYER_REMOTE:I = 0x14

.field public static final whitelist ERROR_RUNTIME:I = 0x2

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mExceptionStack:Ljava/lang/String;

.field private final blacklist mSubErrorCode:I

.field private final blacklist mTimeSinceCreatedMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/metrics/PlaybackErrorEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackErrorEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    iput v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    iput v2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    iput-wide v3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/PlaybackErrorEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/metrics/PlaybackErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    iput p2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    iput p3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    iput-wide p4, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p6}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIJLandroid/os/Bundle;Landroid/media/metrics/PlaybackErrorEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/media/metrics/PlaybackErrorEvent;-><init>(Ljava/lang/String;IIJLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/media/metrics/PlaybackErrorEvent;

    iget-object v2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    iget v3, p1, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    iget v3, p1, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    iget-wide p0, p1, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getErrorCode()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    return p0
.end method

.method public blacklist getExceptionStack()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getSubErrorCode()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    return p0
.end method

.method public whitelist getTimeSinceCreatedMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackErrorEvent { exceptionStack = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSinceCreatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget p2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

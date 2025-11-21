.class public final Landroid/telephony/ims/MediaQualityStatus;
.super Ljava/lang/Object;
.source "MediaQualityStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/MediaQualityStatus$MediaSessionType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/MediaQualityStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDIA_SESSION_TYPE_AUDIO:I = 0x1

.field public static final whitelist MEDIA_SESSION_TYPE_VIDEO:I = 0x2


# instance fields
.field private final blacklist mImsCallSessionId:Ljava/lang/String;

.field private final blacklist mMediaSessionType:I

.field private final blacklist mRtpInactivityTimeMillis:J

.field private final blacklist mRtpJitterMillis:I

.field private final blacklist mRtpPacketLossRate:I

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/MediaQualityStatus$1;

    invoke-direct {v0}, Landroid/telephony/ims/MediaQualityStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/MediaQualityStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/MediaQualityStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    iput p3, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    iput p4, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    iput p5, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    iput-wide p6, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

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
    check-cast p1, Landroid/telephony/ims/MediaQualityStatus;

    iget-object v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    iget v3, p1, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    iget v3, p1, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    iget v3, p1, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    iget v3, p1, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    iget-wide p0, p1, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getCallSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMediaSessionType()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    return p0
.end method

.method public whitelist getRtpInactivityMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    return-wide v0
.end method

.method public whitelist getRtpJitterMillis()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    return p0
.end method

.method public whitelist getRtpPacketLossRate()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    return p0
.end method

.method public whitelist getTransportType()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget-object v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaThreshold{mImsCallSessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaSessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRtpPacketLossRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRtpJitterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRtpInactivityTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/telephony/ims/MediaQualityStatus;->mImsCallSessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/ims/MediaQualityStatus;->mMediaSessionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ims/MediaQualityStatus;->mTransportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpPacketLossRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpJitterMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/ims/MediaQualityStatus;->mRtpInactivityTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

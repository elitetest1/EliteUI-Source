.class public final Landroid/media/metrics/PlaybackMetrics;
.super Ljava/lang/Object;
.source "PlaybackMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackMetrics$Builder;,
        Landroid/media/metrics/PlaybackMetrics$ContentType;,
        Landroid/media/metrics/PlaybackMetrics$DrmType;,
        Landroid/media/metrics/PlaybackMetrics$PlaybackType;,
        Landroid/media/metrics/PlaybackMetrics$StreamType;,
        Landroid/media/metrics/PlaybackMetrics$StreamSource;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE_AD:I = 0x2

.field public static final whitelist CONTENT_TYPE_MAIN:I = 0x1

.field public static final whitelist CONTENT_TYPE_OTHER:I = 0x3

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DRM_TYPE_CLEARKEY:I = 0x6

.field public static final whitelist DRM_TYPE_NONE:I = 0x0

.field public static final whitelist DRM_TYPE_OTHER:I = 0x1

.field public static final whitelist DRM_TYPE_PLAY_READY:I = 0x2

.field public static final whitelist DRM_TYPE_WIDEVINE_L1:I = 0x3

.field public static final whitelist DRM_TYPE_WIDEVINE_L3:I = 0x4

.field public static final whitelist DRM_TYPE_WV_L3_FALLBACK:I = 0x5

.field public static final whitelist PLAYBACK_TYPE_LIVE:I = 0x2

.field public static final whitelist PLAYBACK_TYPE_OTHER:I = 0x3

.field public static final whitelist PLAYBACK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_VOD:I = 0x1

.field public static final whitelist STREAM_SOURCE_DEVICE:I = 0x2

.field public static final whitelist STREAM_SOURCE_MIXED:I = 0x3

.field public static final whitelist STREAM_SOURCE_NETWORK:I = 0x1

.field public static final whitelist STREAM_SOURCE_UNKNOWN:I = 0x0

.field public static final whitelist STREAM_TYPE_DASH:I = 0x3

.field public static final whitelist STREAM_TYPE_HLS:I = 0x4

.field public static final whitelist STREAM_TYPE_OTHER:I = 0x1

.field public static final whitelist STREAM_TYPE_PROGRESSIVE:I = 0x2

.field public static final whitelist STREAM_TYPE_SS:I = 0x5

.field public static final whitelist STREAM_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAudioUnderrunCount:I

.field private final blacklist mContentType:I

.field private final blacklist mDrmSessionId:[B

.field private final blacklist mDrmType:I

.field private final blacklist mExperimentIds:[J

.field private final blacklist mLocalBytesRead:J

.field private final blacklist mMediaDurationMillis:J

.field private final blacklist mMetricsBundle:Landroid/os/Bundle;

.field private final blacklist mNetworkBytesRead:J

.field private final blacklist mNetworkTransferDurationMillis:J

.field private final blacklist mPlaybackType:I

.field private final blacklist mPlayerName:Ljava/lang/String;

.field private final blacklist mPlayerVersion:Ljava/lang/String;

.field private final blacklist mStreamSource:I

.field private final blacklist mStreamType:I

.field private final blacklist mVideoFramesDropped:I

.field private final blacklist mVideoFramesPlayed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/metrics/PlaybackMetrics$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iput p3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iput p4, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iput p5, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iput p6, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iput p7, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iput-object p8, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iput-object p9, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iput-object p10, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    invoke-static {p1, p2, p10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p11, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iput p12, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iput p13, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    iput-wide p14, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    move-wide/from16 p1, p18

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual/range {p21 .. p21}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const-wide/16 v10, 0x80

    and-long/2addr v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    const-wide/16 v14, 0x100

    and-long/2addr v1, v14

    cmp-long v1, v1, v12

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move/from16 v16, v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    move-wide/from16 v17, v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    move-wide/from16 v19, v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    new-array v15, v15, [B

    move-wide/from16 v21, v11

    move-object/from16 v11, p1

    invoke-virtual {v11, v15}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v11}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v11

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iput v8, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iput v9, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    const-class v1, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v1, v16

    iput v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iput v13, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iput v14, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    move-wide/from16 v1, v17

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    move-wide/from16 v1, v19

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    move-wide/from16 v1, v21

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iput-object v15, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iput-object v11, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

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

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroid/media/metrics/PlaybackMetrics;

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    iget-object v3, p1, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    iget v3, p1, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iget-wide v4, p1, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iget-object p1, p1, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAudioUnderrunCount()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    return p0
.end method

.method public whitelist getContentType()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    return p0
.end method

.method public whitelist getDrmSessionId()[B
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    return-object p0
.end method

.method public whitelist getDrmType()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    return p0
.end method

.method public whitelist getExperimentIds()[J
    .locals 1

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method

.method public whitelist getLocalBytesRead()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    return-wide v0
.end method

.method public whitelist getMediaDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getNetworkBytesRead()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    return-wide v0
.end method

.method public whitelist getNetworkTransferDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    return-wide v0
.end method

.method public whitelist getPlaybackType()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    return p0
.end method

.method public whitelist getPlayerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPlayerVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getStreamSource()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    return p0
.end method

.method public whitelist getStreamType()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    return p0
.end method

.method public whitelist getVideoFramesDropped()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    return p0
.end method

.method public whitelist getVideoFramesPlayed()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-object v0, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v3 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackMetrics { mediaDurationMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", streamSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playbackType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drmType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playerVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoFramesPlayed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoFramesDropped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioUnderrunCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkTransferDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "drmSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x80

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

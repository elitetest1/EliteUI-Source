.class public final Landroid/media/metrics/MediaItemInfo;
.super Ljava/lang/Object;
.source "MediaItemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/MediaItemInfo$Builder;,
        Landroid/media/metrics/MediaItemInfo$DataType;,
        Landroid/media/metrics/MediaItemInfo$SourceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/MediaItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_TYPE_AUDIO:J = 0x4L

.field public static final whitelist DATA_TYPE_DEPTH:J = 0x10L

.field public static final whitelist DATA_TYPE_GAIN_MAP:J = 0x20L

.field public static final whitelist DATA_TYPE_GAPLESS:J = 0x100L

.field public static final whitelist DATA_TYPE_HIGH_DYNAMIC_RANGE_VIDEO:J = 0x400L

.field public static final whitelist DATA_TYPE_HIGH_FRAME_RATE:J = 0x40L

.field public static final whitelist DATA_TYPE_IMAGE:J = 0x1L

.field public static final whitelist DATA_TYPE_METADATA:J = 0x8L

.field public static final whitelist DATA_TYPE_SPATIAL_AUDIO:J = 0x200L

.field public static final whitelist DATA_TYPE_SPEED_SETTING_CUE_POINTS:J = 0x80L

.field public static final whitelist DATA_TYPE_VIDEO:J = 0x2L

.field public static final whitelist SOURCE_TYPE_CAMERA:I = 0x2

.field public static final whitelist SOURCE_TYPE_EDITING_SESSION:I = 0x3

.field public static final whitelist SOURCE_TYPE_GALLERY:I = 0x1

.field public static final whitelist SOURCE_TYPE_GENERATED:I = 0x7

.field public static final whitelist SOURCE_TYPE_LOCAL_FILE:I = 0x4

.field public static final whitelist SOURCE_TYPE_REMOTE_FILE:I = 0x5

.field public static final whitelist SOURCE_TYPE_REMOTE_LIVE_STREAM:I = 0x6

.field public static final whitelist SOURCE_TYPE_UNSPECIFIED:I = 0x0

.field public static final whitelist VALUE_UNSPECIFIED:I = -0x1


# instance fields
.field private final blacklist mAudioChannelCount:I

.field private final blacklist mAudioSampleCount:J

.field private final blacklist mAudioSampleRateHz:I

.field private final blacklist mClipDurationMillis:J

.field private final blacklist mCodecNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContainerMimeType:Ljava/lang/String;

.field private final blacklist mDataTypes:J

.field private final blacklist mDurationMillis:J

.field private final blacklist mSampleMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceType:I

.field private final blacklist mVideoDataSpace:I

.field private final blacklist mVideoFrameRate:F

.field private final blacklist mVideoSampleCount:J

.field private final blacklist mVideoSize:Landroid/util/Size;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/metrics/MediaItemInfo$1;

    invoke-direct {v0}, Landroid/media/metrics/MediaItemInfo$1;-><init>()V

    sput-object v0, Landroid/media/metrics/MediaItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/util/Size;",
            "IFJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    iput-wide p2, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    iput-wide p4, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    iput-wide p6, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    iput-object p8, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    iput-object p9, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    iput-object p10, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    iput p11, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    iput p12, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    iput-wide p13, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    iput-object p15, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    move/from16 p1, p16

    iput p1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    move/from16 p1, p17

    iput p1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    move-wide/from16 p1, p18

    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    return-void
.end method

.method synthetic constructor blacklist <init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJLandroid/media/metrics/MediaItemInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Landroid/media/metrics/MediaItemInfo;-><init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/MediaItemInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/metrics/MediaItemInfo;-><init>(Landroid/os/Parcel;)V

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
    check-cast p1, Landroid/media/metrics/MediaItemInfo;

    iget v2, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    iget v3, p1, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    iget-wide v4, p1, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    iget-wide v4, p1, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    iget-wide v4, p1, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    iget-object v3, p1, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    iget-object v3, p1, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    iget v3, p1, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    iget v3, p1, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    iget-wide v4, p1, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    iget v3, p1, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    iget-wide p0, p1, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAudioChannelCount()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    return p0
.end method

.method public whitelist getAudioSampleCount()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    return-wide v0
.end method

.method public whitelist getAudioSampleRateHz()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    return p0
.end method

.method public whitelist getClipDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    return-wide v0
.end method

.method public whitelist getCodecNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getContainerMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getDataTypes()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    return-wide v0
.end method

.method public whitelist getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    return-wide v0
.end method

.method public whitelist getSampleMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getSourceType()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    return p0
.end method

.method public whitelist getVideoDataSpace()I
    .locals 0

    iget p0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    return p0
.end method

.method public whitelist getVideoFrameRate()F
    .locals 0

    iget p0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    return p0
.end method

.method public whitelist getVideoSampleCount()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    return-wide v0
.end method

.method public whitelist getVideoSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItemInfo { sourceType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", durationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clipDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", containerMimeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sampleMimeTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codecNames = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioSampleRateHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioChannelCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioSampleCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDataSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", videoSampleCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget p2, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.class public Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# static fields
.field static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final whitelist MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final whitelist MEDIA_TRACK_TYPE_SUBTITLE_OUTBAND:I = 0x6

.field public static final whitelist MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final whitelist MEDIA_TRACK_TYPE_TIMEDTEXT_OUTBAND:I = 0x5

.field public static final whitelist MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist MEDIA_TRACK_TYPE_VIDEO:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TrackInfo"


# instance fields
.field private blacklist mChannel:I

.field final blacklist mFormat:Landroid/media/MediaFormat;

.field private blacklist mFrameRate:I

.field private blacklist mLanguage:Ljava/lang/String;

.field private blacklist mMime:Ljava/lang/String;

.field private blacklist mRotationDegrees:I

.field private blacklist mSampleRate:I

.field blacklist mTrackName:Ljava/lang/String;

.field final blacklist mTrackType:I

.field private blacklist mVideoHeight:I

.field private blacklist mVideoWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/media/MediaFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    const-string v3, ", language : "

    const-string v4, "TrackInfo"

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videotype mime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audiotype mime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", samplingrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    :cond_2
    const-string v0, "is-autoselect"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "is-default"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "is-forced-subtitle"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getChannel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    return p0
.end method

.method public blacklist getFormat()Landroid/media/MediaFormat;
    .locals 2

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public whitelist getFrameRate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    return p0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "und"

    :cond_0
    return-object p0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSampleRate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    return p0
.end method

.method public whitelist getTrackType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    return p0
.end method

.method public whitelist getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    return p0
.end method

.method public whitelist getVideoRotation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    return p0
.end method

.method public whitelist getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "is-autoselect"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "is-default"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "is-forced-subtitle"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

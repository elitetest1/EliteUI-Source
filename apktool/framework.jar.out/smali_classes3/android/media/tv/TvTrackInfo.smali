.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$Builder;,
        Landroid/media/tv/TvTrackInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_BUNDLE_KEY_COMPONENT_TAG:Ljava/lang/String; = "component_tag"

.field public static final blacklist EXTRA_BUNDLE_KEY_PID:Ljava/lang/String; = "pid"

.field public static final whitelist TYPE_AUDIO:I = 0x0

.field public static final whitelist TYPE_SUBTITLE:I = 0x2

.field public static final whitelist TYPE_VIDEO:I = 0x1


# instance fields
.field private final greylist-max-o mAudioChannelCount:I

.field private final blacklist mAudioDescription:Z

.field private final greylist-max-o mAudioSampleRate:I

.field private final greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private final blacklist mEncoding:Ljava/lang/String;

.field private final blacklist mEncrypted:Z

.field private final greylist-max-o mExtra:Landroid/os/Bundle;

.field private final blacklist mHardOfHearing:Z

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLanguage:Ljava/lang/String;

.field private final blacklist mSpokenSubtitle:Z

.field private final greylist-max-o mType:I

.field private final greylist-max-o mVideoActiveFormatDescription:B

.field private final greylist-max-o mVideoFrameRate:F

.field private final greylist-max-o mVideoHeight:I

.field private final greylist-max-o mVideoPixelAspectRatio:F

.field private final greylist-max-o mVideoWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iput-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iput-object p5, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    iput p7, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iput p8, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iput-boolean p9, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    iput-boolean p10, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iput-boolean p11, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    iput p12, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iput p13, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iput p14, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iput p15, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    move/from16 p1, p16

    iput-byte p1, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

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
    instance-of v1, p1, Landroid/media/tv/TvTrackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/media/tv/TvTrackInfo;

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    iget-boolean v3, p1, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    return v0

    :cond_3
    iget-boolean p0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean p1, p1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    iget-byte p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    iget-byte p1, p1, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    if-ne p0, p1, :cond_6

    return v0

    :cond_6
    return v2

    :cond_7
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    if-ne v1, v3, :cond_8

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    iget-boolean v3, p1, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean v3, p1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne v1, v3, :cond_8

    iget-boolean p0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    iget-boolean p1, p1, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    if-ne p0, p1, :cond_8

    return v0

    :cond_8
    :goto_0
    return v2
.end method

.method public final whitelist getAudioChannelCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an audio track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist getAudioSampleRate()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an audio track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist getExtra()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-object p0
.end method

.method public final whitelist getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    return p0
.end method

.method public final whitelist getVideoActiveFormatDescription()B
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-byte p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist getVideoFrameRate()F
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist getVideoHeight()I
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist getVideoPixelAspectRatio()F
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist getVideoWidth()I
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public whitelist isAudioDescription()Z
    .locals 1

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an audio track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist isEncrypted()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    return p0
.end method

.method public whitelist isHardOfHearing()Z
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an audio or a subtitle track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-boolean p0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    return p0
.end method

.method public whitelist isSpokenSubtitle()Z
    .locals 1

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an audio track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-byte p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

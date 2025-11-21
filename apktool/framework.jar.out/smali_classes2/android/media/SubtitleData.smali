.class public final Landroid/media/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SubtitleData"


# instance fields
.field private greylist-max-o mData:[B

.field private greylist-max-o mDurationUs:J

.field private greylist-max-o mStartTimeUs:J

.field private greylist-max-o mTrackIndex:I


# direct methods
.method public constructor whitelist <init>(IJJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p6, :cond_0

    iput p1, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    iput-wide p2, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    iput-wide p4, p0, Landroid/media/SubtitleData;->mDurationUs:J

    iput-object p6, p0, Landroid/media/SubtitleData;->mData:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null data is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/media/SubtitleData;->parseParcel(Landroid/os/Parcel;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parseParcel() fails"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o parseParcel(Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist getData()[B
    .locals 0

    iget-object p0, p0, Landroid/media/SubtitleData;->mData:[B

    return-object p0
.end method

.method public whitelist getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    return-wide v0
.end method

.method public whitelist getStartTimeUs()J
    .locals 2

    iget-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    return-wide v0
.end method

.method public whitelist getTrackIndex()I
    .locals 0

    iget p0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    return p0
.end method

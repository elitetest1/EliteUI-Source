.class public final Landroid/media/AudioPlaybackConfiguration$FormatInfo;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPlaybackConfiguration$FormatInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;


# instance fields
.field final blacklist mIsSpatialized:Z

.field final blacklist mNativeChannelMask:I

.field final blacklist mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    iput p3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

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
    instance-of v1, p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget-boolean v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    iget-boolean v3, p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    iget v3, p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    iget p1, p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormatInfo{isSpatialized="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", channelMask=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

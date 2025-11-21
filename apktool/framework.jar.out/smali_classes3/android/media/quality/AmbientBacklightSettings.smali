.class public final Landroid/media/quality/AmbientBacklightSettings;
.super Ljava/lang/Object;
.source "AmbientBacklightSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/AmbientBacklightSettings$Source;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/AmbientBacklightSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SOURCE_AUDIO:I = 0x1

.field public static final whitelist SOURCE_AUDIO_VIDEO:I = 0x3

.field public static final whitelist SOURCE_NONE:I = 0x0

.field public static final whitelist SOURCE_VIDEO:I = 0x2


# instance fields
.field private final blacklist mColorFormat:I

.field private final blacklist mHorizontalZonesNumber:I

.field private final blacklist mIsLetterboxOmitted:Z

.field private final blacklist mMaxFps:I

.field private final blacklist mSource:I

.field private final blacklist mThreshold:I

.field private final blacklist mVerticalZonesNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/quality/AmbientBacklightSettings$1;

    invoke-direct {v0}, Landroid/media/quality/AmbientBacklightSettings$1;-><init>()V

    sput-object v0, Landroid/media/quality/AmbientBacklightSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    iput p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    iput p3, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    iput p4, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    iput p5, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    iput-boolean p6, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    iput p7, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/AmbientBacklightSettings-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/quality/AmbientBacklightSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getColorFormat()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    return p0
.end method

.method public whitelist getHorizontalZonesCount()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    return p0
.end method

.method public whitelist getMaxFps()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    return p0
.end method

.method public whitelist getSource()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    return p0
.end method

.method public whitelist getThreshold()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    return p0
.end method

.method public whitelist getVerticalZonesCount()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    return p0
.end method

.method public whitelist isLetterboxOmitted()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmbientBacklightSettings{Source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MaxFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ColorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HorizontalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", VerticalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsLetterboxOmitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p0, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

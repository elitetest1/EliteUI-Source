.class public final Landroid/media/quality/AmbientBacklightMetadata;
.super Ljava/lang/Object;
.source "AmbientBacklightMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/AmbientBacklightMetadata$CompressionAlgorithm;
    }
.end annotation


# static fields
.field public static final whitelist ALGORITHM_NONE:I = 0x0

.field public static final whitelist ALGORITHM_RLE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/AmbientBacklightMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mColorFormat:I

.field private final blacklist mCompressAlgorithm:I

.field private final blacklist mHorizontalZonesNumber:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSource:I

.field private final blacklist mVerticalZonesNumber:I

.field private final blacklist mZonesColors:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/quality/AmbientBacklightMetadata$1;

    invoke-direct {v0}, Landroid/media/quality/AmbientBacklightMetadata$1;-><init>()V

    sput-object v0, Landroid/media/quality/AmbientBacklightMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/AmbientBacklightMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/quality/AmbientBacklightMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IIIII[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    iput p3, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    iput p4, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    iput p5, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    iput p6, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    iput-object p7, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

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

    iget p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    return p0
.end method

.method public whitelist getCompressionAlgorithm()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    return p0
.end method

.method public whitelist getHorizontalZonesCount()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    return p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSource()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    return p0
.end method

.method public whitelist getVerticalZonesCount()I
    .locals 0

    iget p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    return p0
.end method

.method public whitelist getZoneColors()[I
    .locals 0

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmbientBacklightMetadata{packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compressAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verticalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zonesColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

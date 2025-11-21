.class public Landroid/media/AudioProfile;
.super Ljava/lang/Object;
.source "AudioProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioProfile$EncapsulationType;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_IEC61937:I = 0x1

.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_NONE:I = 0x0

.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_PCM:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChannelIndexMasks:[I

.field private final blacklist mChannelMasks:[I

.field private final blacklist mEncapsulationType:I

.field private final blacklist mFormat:I

.field private final blacklist mSamplingRates:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/AudioProfile$1;

    invoke-direct {v0}, Landroid/media/AudioProfile$1;-><init>()V

    sput-object v0, Landroid/media/AudioProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[I[I[II)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioProfile;->mFormat:I

    iput-object p2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    iput-object p3, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    iput-object p4, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    iput p5, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist hasIdenticalElements([I[I)Z
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$toHexString$0(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "0x%02X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist toHexString([I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
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
    check-cast p1, Landroid/media/AudioProfile;

    iget v2, p0, Landroid/media/AudioProfile;->mFormat:I

    iget v3, p1, Landroid/media/AudioProfile;->mFormat:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    iget-object v3, p1, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v2, v3}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    iget-object v3, p1, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v2, v3}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    iget-object v3, p1, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v2, v3}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    iget p1, p1, Landroid/media/AudioProfile;->mEncapsulationType:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getChannelIndexMasks()[I
    .locals 0

    iget-object p0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    return-object p0
.end method

.method public whitelist getChannelMasks()[I
    .locals 0

    iget-object p0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    return-object p0
.end method

.method public whitelist getEncapsulationType()I
    .locals 0

    iget p0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return p0
.end method

.method public whitelist getFormat()I
    .locals 0

    iget p0, p0, Landroid/media/AudioProfile;->mFormat:I

    return p0
.end method

.method public whitelist getSampleRates()[I
    .locals 0

    iget-object p0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ", sampling rates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, ", channel masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v1}, Landroid/media/AudioProfile;->toHexString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, ", channel index masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", encapsulation type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

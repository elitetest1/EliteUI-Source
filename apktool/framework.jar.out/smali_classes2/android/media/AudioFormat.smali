.class public final Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$SurroundSoundEncoding;,
        Landroid/media/AudioFormat$EncodingCanBeInvalid;,
        Landroid/media/AudioFormat$Encoding;,
        Landroid/media/AudioFormat$Builder;,
        Landroid/media/AudioFormat$ChannelOut;
    }
.end annotation


# static fields
.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final whitelist CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_INVALID:I = 0x0

.field public static final blacklist CHANNEL_IN_2POINT0POINT2:I = 0x60000c

.field public static final blacklist CHANNEL_IN_2POINT1POINT2:I = 0x70000c

.field public static final blacklist CHANNEL_IN_3POINT0POINT2:I = 0x64000c

.field public static final blacklist CHANNEL_IN_3POINT1POINT2:I = 0x74000c

.field public static final blacklist CHANNEL_IN_5POINT1:I = 0x17000c

.field public static final whitelist CHANNEL_IN_BACK:I = 0x20

.field public static final blacklist CHANNEL_IN_BACK_LEFT:I = 0x10000

.field public static final whitelist CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final blacklist CHANNEL_IN_BACK_RIGHT:I = 0x20000

.field public static final blacklist CHANNEL_IN_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_IN_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_IN_FRONT:I = 0x10

.field public static final greylist-max-o CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final whitelist CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final whitelist CHANNEL_IN_LEFT:I = 0x4

.field public static final whitelist CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final blacklist CHANNEL_IN_LOW_FREQUENCY:I = 0x100000

.field public static final whitelist CHANNEL_IN_MONO:I = 0x10

.field public static final whitelist CHANNEL_IN_PRESSURE:I = 0x400

.field public static final whitelist CHANNEL_IN_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final whitelist CHANNEL_IN_STEREO:I = 0xc

.field public static final blacklist CHANNEL_IN_TOP_LEFT:I = 0x200000

.field public static final blacklist CHANNEL_IN_TOP_RIGHT:I = 0x400000

.field public static final whitelist CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final whitelist CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final whitelist CHANNEL_IN_X_AXIS:I = 0x800

.field public static final whitelist CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final whitelist CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final blacklist CHANNEL_OUT_13POINT0:I = 0x1cbd81c

.field public static final blacklist CHANNEL_OUT_22POINT2:I = 0x3fffffc

.field public static final whitelist CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT2:I = 0x3000fc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT4:I = 0xb40fc

.field public static final greylist-max-o CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final whitelist CHANNEL_OUT_6POINT1:I = 0x4fc

.field public static final whitelist CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_OUT_7POINT1POINT2:I = 0x3018fc

.field public static final whitelist CHANNEL_OUT_7POINT1POINT4:I = 0xb58fc

.field public static final whitelist CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT4:I = 0xc0b58fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT6:I = 0xc3b58fc

.field public static final whitelist CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final whitelist CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final whitelist CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_CENTER:I = 0x800000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_LEFT:I = 0x400000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_RIGHT:I = 0x1000000

.field public static final whitelist CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_LEFT:I = 0x4000000

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_RIGHT:I = 0x8000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_A:I = 0x20000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_B:I = 0x10000000

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY_2:I = 0x2000000

.field public static final whitelist CHANNEL_OUT_MONO:I = 0x4

.field public static final whitelist CHANNEL_OUT_QUAD:I = 0xcc

.field public static final greylist-max-o CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final whitelist CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final whitelist CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final whitelist CHANNEL_OUT_STEREO:I = 0xc

.field public static final whitelist CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final whitelist CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final whitelist CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_LEFT:I = 0x100000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_RIGHT:I = 0x200000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ENCODING_AAC_ADTS_HE_V1:I = 0xc9

.field public static final blacklist ENCODING_AAC_ADTS_HE_V2:I = 0xca

.field public static final blacklist ENCODING_AAC_ADTS_LC:I = 0xc8

.field public static final whitelist ENCODING_AAC_ELD:I = 0xf

.field public static final whitelist ENCODING_AAC_HE_V1:I = 0xb

.field public static final whitelist ENCODING_AAC_HE_V2:I = 0xc

.field public static final whitelist ENCODING_AAC_LC:I = 0xa

.field public static final whitelist ENCODING_AAC_XHE:I = 0x10

.field public static final whitelist ENCODING_AC3:I = 0x5

.field public static final whitelist ENCODING_AC4:I = 0x11

.field public static final blacklist ENCODING_AC4_L4:I = 0x20

.field public static final whitelist ENCODING_DEFAULT:I = 0x1

.field public static final whitelist ENCODING_DOLBY_MAT:I = 0x13

.field public static final whitelist ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final whitelist ENCODING_DRA:I = 0x1c

.field public static final whitelist ENCODING_DSD:I = 0x1f

.field public static final whitelist ENCODING_DTS:I = 0x7

.field public static final whitelist ENCODING_DTS_HD:I = 0x8

.field public static final whitelist ENCODING_DTS_HD_MA:I = 0x1d

.field public static final whitelist ENCODING_DTS_UHD:I = 0x1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ENCODING_DTS_UHD_P1:I = 0x1b

.field public static final whitelist ENCODING_DTS_UHD_P2:I = 0x1e

.field public static final whitelist ENCODING_E_AC3:I = 0x6

.field public static final whitelist ENCODING_E_AC3_JOC:I = 0x12

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_AAC:I = 0x2a

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_FLAC:I = 0x2b

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_OPUS:I = 0x29

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_PCM:I = 0x2c

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_AAC:I = 0x26

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_FLAC:I = 0x27

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_OPUS:I = 0x25

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_PCM:I = 0x28

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_AAC:I = 0x22

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_FLAC:I = 0x23

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_OPUS:I = 0x21

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_PCM:I = 0x24

.field public static final whitelist ENCODING_IEC61937:I = 0xd

.field public static final whitelist ENCODING_INVALID:I = 0x0

.field public static final blacklist ENCODING_LEGACY_SHORT_ARRAY_THRESHOLD:I = 0x14

.field public static final whitelist ENCODING_MP3:I = 0x9

.field public static final whitelist ENCODING_MPEGH_BL_L3:I = 0x17

.field public static final whitelist ENCODING_MPEGH_BL_L4:I = 0x18

.field public static final whitelist ENCODING_MPEGH_LC_L3:I = 0x19

.field public static final whitelist ENCODING_MPEGH_LC_L4:I = 0x1a

.field public static final whitelist ENCODING_OPUS:I = 0x14

.field public static final whitelist ENCODING_PCM_16BIT:I = 0x2

.field public static final whitelist ENCODING_PCM_24BIT_PACKED:I = 0x15

.field public static final whitelist ENCODING_PCM_32BIT:I = 0x16

.field public static final whitelist ENCODING_PCM_8BIT:I = 0x3

.field public static final whitelist ENCODING_PCM_FLOAT:I = 0x4

.field public static final greylist-max-o SAMPLE_RATE_HZ_MAX:I

.field public static final greylist-max-o SAMPLE_RATE_HZ_MIN:I

.field public static final whitelist SAMPLE_RATE_UNSPECIFIED:I

.field public static final greylist-max-o SURROUND_SOUND_ENCODING:[I


# instance fields
.field private final blacklist mChannelCount:I

.field private final greylist-max-o mChannelIndexMask:I

.field private final greylist-max-r mChannelMask:I

.field private final greylist-max-r mEncoding:I

.field private final blacklist mFrameSizeInBytes:I

.field private final greylist-max-o mPropertySetMask:I

.field private final greylist-max-r mSampleRate:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChannelIndexMask(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelMask(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEncoding(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPropertySetMask(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSampleRate(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    new-instance v0, Landroid/media/AudioFormat$1;

    invoke-direct {v0}, Landroid/media/AudioFormat$1;-><init>()V

    sput-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xe
        0x11
        0x20
        0x12
        0x13
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "There is no valid usage of this constructor"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor greylist-max-r <init>(IIII)V
    .locals 6

    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput p2, p0, Landroid/media/AudioFormat;->mEncoding:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    iput p3, p0, Landroid/media/AudioFormat;->mSampleRate:I

    and-int/lit8 p3, p1, 0x4

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p4, v1

    :goto_2
    iput p4, p0, Landroid/media/AudioFormat;->mChannelMask:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move p5, v1

    :goto_3
    iput p5, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result p3

    invoke-static {p3}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result p3

    if-nez p3, :cond_4

    move v1, p1

    goto :goto_4

    :cond_4
    if-eq p3, p1, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, p3

    :goto_4
    iput v1, p0, Landroid/media/AudioFormat;->mChannelCount:I

    const/4 p1, 0x1

    :try_start_0
    invoke-static {p2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr p2, v1

    goto :goto_5

    :catch_0
    move p2, p1

    :goto_5
    if-eqz p2, :cond_6

    move p1, p2

    :cond_6
    iput p1, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/media/AudioFormat-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioFormat-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist channelCountFromInChannelMask(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static blacklist channelCountFromOutChannelMask(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o convertChannelOutMaskToNativeMask(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static greylist-max-o convertNativeChannelMaskToOutMask(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static greylist-max-o filterPublicFormats([I)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget v2, p0, v0

    invoke-static {v2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v1, v0, :cond_1

    aget v2, p0, v0

    aput v2, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBytesPerSample(I)I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/16 v3, 0xd

    if-eq p0, v3, :cond_3

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad audio format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0
.end method

.method public static greylist-max-o inChannelMaskFromOutChannelMask(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result p0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported channel configuration for input."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x10

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o isEncodingLinearFrames(I)Z
    .locals 3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad audio format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isEncodingLinearPcm(I)Z
    .locals 3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad audio format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o isPublicEncoding(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o isValidEncoding(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist javaChannelOutMaskToString(I)Ljava/lang/String;
    .locals 3

    const v0, -0x30000001

    and-int/2addr v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "9.1.6"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "9.1.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "22.2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    const-string v0, "360RA 13ch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_4
    const-string v0, "7.1.2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_5
    const-string v0, "5.1.2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_6
    const-string v0, "7.1.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_7
    const-string v0, "5.1.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_8
    const-string v0, "7.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_9
    const-string v0, "5.1 side"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_a
    const-string v0, "quad side"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_b
    const-string v0, "6.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_c
    const-string v0, "4.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_d
    const-string v0, "7.1 (5 fronts)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_e
    const-string v0, "5.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_f
    const-string v0, "quad"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_10
    const-string v0, "stereo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_11
    const-string v0, "mono"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/high16 v0, 0x30000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_2

    const-string v0, "(+haptic "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x20000000

    and-int v2, p0, v0

    if-ne v2, v0, :cond_0

    const-string v0, "A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    const-string p0, "B"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_11
        0xc -> :sswitch_10
        0xcc -> :sswitch_f
        0xfc -> :sswitch_e
        0x3fc -> :sswitch_d
        0x41c -> :sswitch_c
        0x4fc -> :sswitch_b
        0x180c -> :sswitch_a
        0x183c -> :sswitch_9
        0x18fc -> :sswitch_8
        0xb40fc -> :sswitch_7
        0xb58fc -> :sswitch_6
        0x3000fc -> :sswitch_5
        0x3018fc -> :sswitch_4
        0x1cbd81c -> :sswitch_3
        0x3fffffc -> :sswitch_2
        0xc0b58fc -> :sswitch_1
        0xc3b58fc -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o toDisplayName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_6

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "Unknown surround sound format"

    return-object p0

    :pswitch_0
    const-string p0, "DTS UHD Profile 2"

    return-object p0

    :pswitch_1
    const-string p0, "DTS HD Master Audio"

    return-object p0

    :pswitch_2
    const-string p0, "DRA"

    return-object p0

    :pswitch_3
    const-string p0, "DTS UHD Profile 1"

    return-object p0

    :pswitch_4
    const-string p0, "MPEG-H 3D Audio low complexity profile level 4"

    return-object p0

    :pswitch_5
    const-string p0, "MPEG-H 3D Audio low complexity profile level 3"

    return-object p0

    :pswitch_6
    const-string p0, "MPEG-H 3D Audio baseline profile level 4"

    return-object p0

    :pswitch_7
    const-string p0, "MPEG-H 3D Audio baseline profile level 3"

    return-object p0

    :pswitch_8
    const-string p0, "Dolby MAT"

    return-object p0

    :pswitch_9
    const-string p0, "Dolby Atmos in Dolby Digital Plus"

    return-object p0

    :pswitch_a
    const-string p0, "Dolby AC-4 levels 0-3"

    return-object p0

    :cond_0
    const-string p0, "Dolby AC-4 level 4"

    return-object p0

    :cond_1
    const-string p0, "Dolby TrueHD"

    return-object p0

    :cond_2
    const-string p0, "AAC"

    return-object p0

    :cond_3
    const-string p0, "DTS HD"

    return-object p0

    :cond_4
    const-string p0, "DTS"

    return-object p0

    :cond_5
    const-string p0, "Dolby Digital Plus"

    return-object p0

    :cond_6
    const-string p0, "Dolby Digital"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o toLogFriendlyEncoding(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid encoding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ENCODING_AAC_ADTS_HE_V2"

    return-object p0

    :pswitch_1
    const-string p0, "ENCODING_AAC_ADTS_HE_V1"

    return-object p0

    :pswitch_2
    const-string p0, "ENCODING_AAC_ADTS_LC"

    return-object p0

    :pswitch_3
    const-string p0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_PCM"

    return-object p0

    :pswitch_4
    const-string p0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_FLAC"

    return-object p0

    :pswitch_5
    const-string p0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_AAC"

    return-object p0

    :pswitch_6
    const-string p0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_OPUS"

    return-object p0

    :pswitch_7
    const-string p0, "ENCODING_IAMF_BASE_PROFILE_PCM"

    return-object p0

    :pswitch_8
    const-string p0, "ENCODING_IAMF_BASE_PROFILE_FLAC"

    return-object p0

    :pswitch_9
    const-string p0, "ENCODING_IAMF_BASE_PROFILE_AAC"

    return-object p0

    :pswitch_a
    const-string p0, "ENCODING_IAMF_BASE_PROFILE_OPUS"

    return-object p0

    :pswitch_b
    const-string p0, "ENCODING_IAMF_SIMPLE_PROFILE_PCM"

    return-object p0

    :pswitch_c
    const-string p0, "ENCODING_IAMF_SIMPLE_PROFILE_FLAC"

    return-object p0

    :pswitch_d
    const-string p0, "ENCODING_IAMF_SIMPLE_PROFILE_AAC"

    return-object p0

    :pswitch_e
    const-string p0, "ENCODING_IAMF_SIMPLE_PROFILE_OPUS"

    return-object p0

    :pswitch_f
    const-string p0, "ENCODING_AC4_L4"

    return-object p0

    :pswitch_10
    const-string p0, "ENCODING_DSD"

    return-object p0

    :pswitch_11
    const-string p0, "ENCODING_DTS_UHD_P2"

    return-object p0

    :pswitch_12
    const-string p0, "ENCODING_DTS_HD_MA"

    return-object p0

    :pswitch_13
    const-string p0, "ENCODING_DRA"

    return-object p0

    :pswitch_14
    const-string p0, "ENCODING_DTS_UHD_P1"

    return-object p0

    :pswitch_15
    const-string p0, "ENCODING_MPEGH_LC_L4"

    return-object p0

    :pswitch_16
    const-string p0, "ENCODING_MPEGH_LC_L3"

    return-object p0

    :pswitch_17
    const-string p0, "ENCODING_MPEGH_BL_L4"

    return-object p0

    :pswitch_18
    const-string p0, "ENCODING_MPEGH_BL_L3"

    return-object p0

    :pswitch_19
    const-string p0, "ENCODING_PCM_32BIT"

    return-object p0

    :pswitch_1a
    const-string p0, "ENCODING_PCM_24BIT_PACKED"

    return-object p0

    :pswitch_1b
    const-string p0, "ENCODING_OPUS"

    return-object p0

    :pswitch_1c
    const-string p0, "ENCODING_DOLBY_MAT"

    return-object p0

    :pswitch_1d
    const-string p0, "ENCODING_E_AC3_JOC"

    return-object p0

    :pswitch_1e
    const-string p0, "ENCODING_AC4"

    return-object p0

    :pswitch_1f
    const-string p0, "ENCODING_AAC_XHE"

    return-object p0

    :pswitch_20
    const-string p0, "ENCODING_AAC_ELD"

    return-object p0

    :pswitch_21
    const-string p0, "ENCODING_DOLBY_TRUEHD"

    return-object p0

    :pswitch_22
    const-string p0, "ENCODING_IEC61937"

    return-object p0

    :pswitch_23
    const-string p0, "ENCODING_AAC_HE_V2"

    return-object p0

    :pswitch_24
    const-string p0, "ENCODING_AAC_HE_V1"

    return-object p0

    :pswitch_25
    const-string p0, "ENCODING_AAC_LC"

    return-object p0

    :pswitch_26
    const-string p0, "ENCODING_MP3"

    return-object p0

    :pswitch_27
    const-string p0, "ENCODING_DTS_HD"

    return-object p0

    :pswitch_28
    const-string p0, "ENCODING_DTS"

    return-object p0

    :pswitch_29
    const-string p0, "ENCODING_E_AC3"

    return-object p0

    :pswitch_2a
    const-string p0, "ENCODING_AC3"

    return-object p0

    :pswitch_2b
    const-string p0, "ENCODING_PCM_FLOAT"

    return-object p0

    :pswitch_2c
    const-string p0, "ENCODING_PCM_8BIT"

    return-object p0

    :pswitch_2d
    const-string p0, "ENCODING_PCM_16BIT"

    return-object p0

    :cond_0
    const-string p0, "ENCODING_INVALID"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/media/AudioFormat;

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    iget v3, p1, Landroid/media/AudioFormat;->mPropertySetMask:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/AudioFormat;->mEncoding:I

    iget v4, p1, Landroid/media/AudioFormat;->mEncoding:I

    if-ne v3, v4, :cond_6

    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iget v4, p1, Landroid/media/AudioFormat;->mSampleRate:I

    if-ne v3, v4, :cond_6

    :cond_4
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iget v4, p1, Landroid/media/AudioFormat;->mChannelMask:I

    if-ne v3, v4, :cond_6

    :cond_5
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    iget p1, p1, Landroid/media/AudioFormat;->mChannelIndexMask:I

    if-ne p0, p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public whitelist getChannelCount()I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mChannelCount:I

    return p0
.end method

.method public whitelist getChannelIndexMask()I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p0
.end method

.method public whitelist getChannelMask()I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p0
.end method

.method public whitelist getEncoding()I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p0
.end method

.method public whitelist getFrameSizeInBytes()I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    return p0
.end method

.method public greylist-max-o getPropertySetMask()I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p0
.end method

.method public whitelist getSampleRate()I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public greylist-max-o toLogFriendlyString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/media/AudioFormat;->mChannelCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {p0}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%dch %dHz %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioFormat: props="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

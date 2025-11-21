.class public final Landroid/media/EncoderProfiles$VideoProfile;
.super Ljava/lang/Object;
.source "EncoderProfiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/EncoderProfiles$VideoProfile$ChromaSubsampling;,
        Landroid/media/EncoderProfiles$VideoProfile$HdrFormat;
    }
.end annotation


# static fields
.field public static final whitelist HDR_DOLBY_VISION:I = 0x4

.field public static final whitelist HDR_HDR10:I = 0x2

.field public static final whitelist HDR_HDR10PLUS:I = 0x3

.field public static final whitelist HDR_HLG:I = 0x1

.field public static final whitelist HDR_NONE:I = 0x0

.field public static final whitelist YUV_420:I = 0x0

.field public static final whitelist YUV_422:I = 0x1

.field public static final whitelist YUV_444:I = 0x2


# instance fields
.field private blacklist bitDepth:I

.field private blacklist bitrate:I

.field private blacklist chromaSubsampling:I

.field private blacklist codec:I

.field private blacklist frameRate:I

.field private blacklist hdrFormat:I

.field private blacklist height:I

.field private blacklist profile:I

.field private blacklist width:I


# direct methods
.method constructor blacklist <init>(IIIIII)V
    .locals 10

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroid/media/EncoderProfiles$VideoProfile;-><init>(IIIIIIIII)V

    return-void
.end method

.method constructor blacklist <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    iput p2, p0, Landroid/media/EncoderProfiles$VideoProfile;->width:I

    iput p3, p0, Landroid/media/EncoderProfiles$VideoProfile;->height:I

    iput p4, p0, Landroid/media/EncoderProfiles$VideoProfile;->frameRate:I

    iput p5, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitrate:I

    iput p6, p0, Landroid/media/EncoderProfiles$VideoProfile;->profile:I

    iput p7, p0, Landroid/media/EncoderProfiles$VideoProfile;->chromaSubsampling:I

    iput p8, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitDepth:I

    iput p9, p0, Landroid/media/EncoderProfiles$VideoProfile;->hdrFormat:I

    return-void
.end method


# virtual methods
.method public whitelist getBitDepth()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitDepth:I

    return p0
.end method

.method public whitelist getBitrate()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitrate:I

    return p0
.end method

.method public whitelist getChromaSubsampling()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->chromaSubsampling:I

    return p0
.end method

.method public whitelist getCodec()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    return p0
.end method

.method public whitelist getFrameRate()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->frameRate:I

    return p0
.end method

.method public whitelist getHdrFormat()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->hdrFormat:I

    return p0
.end method

.method public whitelist getHeight()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->height:I

    return p0
.end method

.method public whitelist getMediaType()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "video/3gpp"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "video/avc"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "video/mp4v-es"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "video/hevc"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "video/dolby-vision"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "video/av01"

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown codec"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getProfile()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->profile:I

    return p0
.end method

.method public whitelist getWidth()I
    .locals 0

    iget p0, p0, Landroid/media/EncoderProfiles$VideoProfile;->width:I

    return p0
.end method

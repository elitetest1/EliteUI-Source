.class public Lcom/samsung/android/transcode/util/NalUnitParser;
.super Ljava/lang/Object;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;,
        Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    }
.end annotation


# static fields
.field private static final blacklist CHECK_MAX_SIZE:I = 0x200

.field private static final blacklist CLLI_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x4

.field private static final blacklist CLLI_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x90

.field private static final blacklist CONTENT_LIGHT_LEVEL_INFO_META:Ljava/lang/String; = "Content light level info meta"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MASTERING_DISPLAY_COLOR_META:Ljava/lang/String; = "Mastering display color meta"

.field private static final blacklist MDCV_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x18

.field private static final blacklist MDCV_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x89

.field private static final blacklist NAL_START_CODE:[B

.field private static final blacklist STREAM_DUMP_PATH:Ljava/lang/String; = "/data/data/com.samsung.app.newtrim/files/inputStream.bin"

.field private static final blacklist TAG:Ljava/lang/String; = "NalUnitParser"


# instance fields
.field private blacklist mBuffer:[B

.field private final blacklist mBufferSize:I

.field private blacklist mContentsLevelInfoMetaStartPos:I

.field private blacklist mHdrStaticMeta:Ljava/nio/ByteBuffer;

.field private blacklist mMasteringDisplayColorMetaStartPos:I

.field private final blacklist mNalStartPos:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input buffer size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NalUnitParser"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x200

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    return-void
.end method

.method private blacklist findContentLightLevel()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    :goto_0
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    move v0, v1

    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist findContentLightLevelWithinDisplayMasteringNal(I)Z
    .locals 2

    :goto_0
    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iput p1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist findMasteringDisplayStaticMeta()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    :goto_0
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v3, v0, 0x6

    invoke-direct {p0, v3}, Lcom/samsung/android/transcode/util/NalUnitParser;->isMasteringDisplayColorInfo(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevelWithinDisplayMasteringNal(I)Z

    move-result p0

    const-string v0, "NalUnitParser"

    if-eqz p0, :cond_0

    const-string p0, "Mastering display color meta and Content light level info meta in one NAL"

    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "Mastering display color meta and Content light level info meta not  in one NAL"

    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_1
    move v0, v1

    :cond_2
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist findNalStartCode([BI)I
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p2

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist findPPSPosition([BZ)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v0

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isPPSNalUnit([BIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getH265NalUnitType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x4

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist getNalUnitType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x4

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private blacklist isContentLightLevelInfo(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isMasteringDisplayColorInfo(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result p0

    const/16 p1, 0x18

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNalStartCode([BI)Z
    .locals 3

    array-length p0, p1

    sub-int/2addr p0, p2

    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    move p0, v1

    :goto_0
    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v2, v0

    if-ge p0, v2, :cond_2

    add-int v2, p2, p0

    aget-byte v2, p1, v2

    aget-byte v0, v0, p0

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isPPSNalUnit([BIZ)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    const-string v1, "NAL type : "

    const-string v2, "NalUnitParser"

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getH265NalUnitType([BI)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getNalUnitType([BI)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    if-ne p1, p2, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method private blacklist toUnsigned(B)I
    .locals 0

    and-int/lit16 p0, p1, 0xff

    return p0
.end method


# virtual methods
.method public blacklist findHDRStaticMeta()Z
    .locals 10

    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    const/4 v1, 0x0

    const-string v2, "NalUnitParser"

    if-gez v0, :cond_0

    const-string/jumbo p0, "there is no nal start code"

    invoke-static {v2, p0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findMasteringDisplayStaticMeta()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "fail to find Mastering display color meta in stream."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    return v1

    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iget v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    const/4 v5, 0x1

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v0

    move v4, v0

    move v6, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevel()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v6, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    add-int/lit8 v6, v6, 0x4

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v4

    move v6, v1

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Mastering display color meta buffer position : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ~ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Content light level info meta buffer position : "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    sub-int/2addr v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Mastering display color meta data size : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    sub-int/2addr v4, v7

    :goto_1
    if-ltz v0, :cond_6

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    add-int v1, v0, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v1, v7, v8, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    if-nez v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content light level info meta data size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_5
    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    return v5

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "invalid size : "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    const-string p0, "cannot find Content light level info meta"

    invoke-static {v2, p0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public blacklist getHdrStaticMeta()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public blacklist insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, p2, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findPPSPosition([BZ)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ppsPos : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "NalUnitParser"

    invoke-static {v1, p3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    add-int/lit8 p3, p1, 0x4

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ppsEndPos : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-lez p3, :cond_2

    invoke-virtual {p1, v0, v2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    sub-int/2addr p2, p3

    invoke-virtual {p1, v0, p3, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3
    :goto_1
    return-object p1
.end method

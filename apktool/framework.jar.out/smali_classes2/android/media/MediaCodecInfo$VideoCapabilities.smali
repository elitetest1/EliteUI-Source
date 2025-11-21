.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "VideoCapabilities"

.field static final blacklist VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAllowMbOverride:Z

.field private greylist-max-o mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockHeight:I

.field private greylist-max-o mBlockWidth:I

.field private greylist-max-o mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeightAlignment:I

.field private greylist-max-o mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private blacklist mPerformancePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSmallerDimensionUpperLimit:I

.field private greylist-max-o mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWidthAlignment:I

.field private greylist-max-o mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const-string v0, "bitrate"

    const-string v1, "mime"

    const-string v2, "width"

    const-string v3, "height"

    const-string v4, "frame-rate"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o applyAlignment(II)V
    .locals 8

    const-string v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    const-string v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_1

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v6

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    :goto_1
    iget p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iget-object p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget p1, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p0, p1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p0

    iput-object p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget p1, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p0, p1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p0

    iput-object p0, v2, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-void
.end method

.method private greylist-max-o applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blockWidth must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    const-string v0, "blockHeight must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v2, v0, v1

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v3, v2, v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v6, v3

    invoke-static {v5, v6, v7}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v6, v0, v6

    invoke-static {v3, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v0, v5

    invoke-static {v3, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    invoke-static {v3, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    :cond_0
    div-int/2addr v2, p1

    div-int/2addr v2, p2

    if-eq v2, v4, :cond_1

    invoke-static {p3, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    int-to-long v2, v2

    invoke-static {p4, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    div-int p2, v1, p2

    div-int p1, v0, p1

    invoke-static {p5, p2, p1}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    :cond_1
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {p1, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {p1, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {p1, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    return-void
.end method

.method private greylist-max-o applyLevelLimits()V
    .locals 43

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Unrecognized profile "

    const/4 v11, 0x2

    const-string v12, " for "

    const-string v13, "VideoCapabilities"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v3, :cond_9

    array-length v3, v1

    const-wide/16 v17, 0x5cd

    const v19, 0xfa00

    move-wide/from16 v5, v17

    move/from16 v10, v19

    const/4 v7, 0x0

    const/16 v19, 0x4

    const/16 v22, 0x63

    const/16 v23, 0x18c

    :goto_0
    if-ge v7, v3, :cond_8

    aget-object v9, v1, v7

    iget v8, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eq v8, v15, :cond_1

    if-eq v8, v11, :cond_0

    sparse-switch v8, :sswitch_data_0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Unrecognized level "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    goto/16 :goto_9

    :sswitch_0
    const/high16 v8, 0xff0000

    const v11, 0x22000

    const v26, 0xc3500

    goto :goto_1

    :sswitch_1
    const v8, 0x7f8000

    const v11, 0x22000

    const v26, 0x75300

    goto :goto_1

    :sswitch_2
    const v8, 0x3fc000

    const v11, 0x22000

    const v26, 0x3a980

    :goto_1
    const v27, 0xaa000

    goto/16 :goto_5

    :sswitch_3
    const v8, 0x1fa400

    goto :goto_2

    :sswitch_4
    const/high16 v8, 0xf0000

    :goto_2
    const v11, 0x9000

    const v26, 0x3a980

    const v27, 0x2d000

    goto :goto_5

    :sswitch_5
    const/high16 v8, 0x90000

    const/16 v11, 0x5640

    const v26, 0x20f58

    const v27, 0x1af40

    goto :goto_5

    :sswitch_6
    const v8, 0x7f800

    const/16 v11, 0x2200

    const v26, 0xc350

    const v27, 0x8800

    goto :goto_5

    :sswitch_7
    const v8, 0x3c000

    const v11, 0xc350

    goto :goto_3

    :sswitch_8
    const v8, 0x3c000

    const/16 v11, 0x4e20

    :goto_3
    const v27, 0x8000

    move/from16 v28, v11

    move/from16 v29, v27

    const/16 v11, 0x2000

    goto :goto_9

    :sswitch_9
    const v8, 0x34bc0

    const/16 v11, 0x1400

    const/16 v26, 0x4e20

    const/16 v27, 0x5000

    goto :goto_5

    :sswitch_a
    const v8, 0x1a5e0

    const/16 v11, 0xe10

    const/16 v26, 0x36b0

    const/16 v27, 0x4650

    goto :goto_5

    :sswitch_b
    const v8, 0x9e34

    const/16 v11, 0x654

    const/16 v26, 0x2710

    goto :goto_4

    :sswitch_c
    const/16 v8, 0x4f1a

    const/16 v11, 0x654

    const/16 v26, 0xfa0

    :goto_4
    const/16 v27, 0x1fa4

    goto :goto_5

    :sswitch_d
    const/16 v8, 0x4d58

    const/16 v11, 0x318

    const/16 v26, 0xfa0

    const/16 v27, 0x1290

    :goto_5
    move/from16 v28, v26

    move/from16 v29, v27

    goto :goto_9

    :sswitch_e
    const/16 v8, 0x2e68

    const/16 v11, 0x7d0

    goto :goto_6

    :sswitch_f
    const/16 v8, 0x2e68

    const/16 v11, 0x300

    goto :goto_6

    :sswitch_10
    const/16 v8, 0x1770

    const/16 v11, 0x180

    :goto_6
    const/16 v27, 0x948

    goto :goto_7

    :sswitch_11
    const/16 v8, 0xbb8

    const/16 v11, 0xc0

    const/16 v27, 0x384

    :goto_7
    move/from16 v28, v11

    move/from16 v29, v27

    const/16 v11, 0x18c

    goto :goto_9

    :cond_0
    const/16 v8, 0x5cd

    const/16 v11, 0x63

    const/16 v28, 0x80

    goto :goto_8

    :cond_1
    const/16 v8, 0x5cd

    const/16 v11, 0x63

    const/16 v28, 0x40

    :goto_8
    const/16 v29, 0x18c

    :goto_9
    iget v0, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v0, v15, :cond_6

    const/4 v15, 0x2

    if-eq v0, v15, :cond_6

    const/4 v15, 0x4

    if-eq v0, v15, :cond_4

    const/16 v15, 0x8

    if-eq v0, v15, :cond_2

    const/16 v15, 0x10

    if-eq v0, v15, :cond_5

    const/16 v15, 0x20

    if-eq v0, v15, :cond_4

    const/16 v15, 0x40

    if-eq v0, v15, :cond_4

    const/high16 v15, 0x10000

    if-eq v0, v15, :cond_3

    const/high16 v15, 0x80000

    if-eq v0, v15, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_b

    :cond_2
    move/from16 v0, v28

    goto :goto_a

    :cond_3
    move/from16 v0, v28

    move/from16 v27, v3

    goto :goto_d

    :cond_4
    move/from16 v0, v28

    goto :goto_c

    :cond_5
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0xbb8

    goto :goto_b

    :goto_a
    mul-int/lit16 v0, v0, 0x4e2

    :goto_b
    move/from16 v27, v3

    const/4 v3, 0x1

    goto :goto_f

    :goto_c
    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v27, v3

    const-string v3, "Unsupported profile "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x2

    const/4 v3, 0x0

    goto :goto_e

    :cond_6
    move/from16 v27, v3

    move/from16 v0, v28

    :goto_d
    const/4 v3, 0x1

    :goto_e
    mul-int/lit16 v0, v0, 0x3e8

    :goto_f
    if-eqz v3, :cond_7

    and-int/lit8 v3, v19, -0x5

    move/from16 v19, v3

    :cond_7
    int-to-long v8, v8

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move/from16 v3, v22

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v22

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v0, v23

    move/from16 v3, v29

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v27

    const/4 v11, 0x2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8
    move/from16 v3, v22

    mul-int/lit8 v0, v3, 0x8

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v1, v0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-wide v4, v5

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v28, v14

    goto/16 :goto_56

    :cond_9
    const-string v0, "video/mpeg2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x16

    if-eqz v0, :cond_14

    array-length v0, v1

    const/16 v9, 0xf

    const-wide/16 v10, 0x5cd

    const v15, 0xfa00

    move-wide v5, v10

    move v10, v9

    move-wide v8, v5

    move/from16 v23, v3

    const/16 v3, 0x63

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/16 v7, 0xb

    const/16 v19, 0x4

    :goto_10
    if-ge v5, v0, :cond_13

    aget-object v11, v1, v5

    move/from16 v18, v0

    iget v0, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eqz v0, :cond_10

    move/from16 v16, v5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_b

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    const/4 v5, 0x4

    if-eq v0, v5, :cond_a

    const/4 v5, 0x5

    if-eq v0, v5, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    or-int/lit8 v19, v19, 0x1

    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    const/16 v20, 0x1

    goto/16 :goto_15

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported profile "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x2

    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    goto/16 :goto_15

    :cond_b
    iget v0, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eqz v0, :cond_f

    const/4 v5, 0x1

    if-eq v0, v5, :cond_11

    const/4 v5, 0x2

    if-eq v0, v5, :cond_e

    const/4 v5, 0x3

    if-eq v0, v5, :cond_d

    const/4 v5, 0x4

    if-eq v0, v5, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized profile/level "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_c
    const/16 v0, 0x3c

    const/16 v5, 0x78

    const/16 v11, 0x44

    const v20, 0x77880

    goto :goto_13

    :cond_d
    const/16 v0, 0x3c

    const/16 v5, 0x78

    const/16 v11, 0x44

    const v20, 0x3bc40

    :goto_13
    const/16 v21, 0x1fe0

    const v24, 0x13880

    goto :goto_14

    :cond_e
    const/16 v0, 0x3c

    const/16 v5, 0x5a

    const/16 v11, 0x44

    const v20, 0x2cd30

    const/16 v21, 0x17e8

    const v24, 0xea60

    :goto_14
    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    move/from16 v14, v20

    move/from16 v13, v21

    move/from16 v12, v24

    goto/16 :goto_12

    :cond_f
    const/16 v20, 0x2e68

    const/16 v24, 0xfa0

    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    move/from16 v14, v20

    move/from16 v5, v23

    move/from16 v12, v24

    const/16 v0, 0x1e

    const/16 v11, 0x12

    const/16 v13, 0x18c

    goto/16 :goto_12

    :cond_10
    move/from16 v16, v5

    iget v0, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized profile/level "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_11
    const/16 v5, 0x2d

    const/16 v11, 0x24

    const v20, 0x9e34

    const/16 v21, 0x654

    const/16 v24, 0x3a98

    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    move/from16 v14, v20

    move/from16 v13, v21

    move/from16 v12, v24

    const/16 v0, 0x1e

    goto/16 :goto_12

    :goto_15
    if-eqz v20, :cond_12

    and-int/lit8 v19, v19, -0x5

    :cond_12
    move-object/from16 v31, v1

    move-object/from16 v32, v2

    int-to-long v1, v14

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit16 v12, v12, 0x3e8

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v5, v16, 0x1

    move/from16 v0, v18

    move-object/from16 v14, v28

    move-object/from16 v13, v29

    move-object/from16 v12, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    goto/16 :goto_10

    :cond_13
    move-object/from16 v28, v14

    const/4 v0, 0x1

    move-wide v4, v8

    const/4 v9, 0x1

    move v2, v6

    const/16 v6, 0x10

    move v1, v7

    const/16 v7, 0x10

    move v8, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move v10, v15

    goto/16 :goto_56

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move/from16 v23, v3

    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    const-string v1, "video/mp4v-es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    move-object/from16 v1, v31

    array-length v3, v1

    const/16 v5, 0xf

    const-wide/16 v8, 0x5cd

    const v10, 0xfa00

    move-object v12, v1

    move v11, v10

    const/16 v1, 0xb

    const/16 v13, 0x9

    const/16 v14, 0x63

    const/16 v19, 0x4

    move v10, v5

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v3, :cond_27

    aget-object v15, v12, v5

    iget v6, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1c

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1b

    sparse-switch v6, :sswitch_data_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v15, v29

    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    move/from16 v20, v3

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v15

    :goto_17
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_18
    const/16 v33, 0x1

    goto/16 :goto_19

    :sswitch_12
    move-object/from16 v6, v29

    move-object/from16 v7, v30

    iget v0, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v20, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1a

    const/16 v3, 0x8

    if-eq v0, v3, :cond_19

    const/16 v3, 0x10

    if-eq v0, v3, :cond_18

    const/16 v3, 0x18

    if-eq v0, v3, :cond_17

    const/16 v3, 0x20

    if-eq v0, v3, :cond_16

    const/16 v3, 0x80

    if-eq v0, v3, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized profile/level "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_15
    const/16 v0, 0x2d

    const/16 v3, 0x24

    const v15, 0xbdd8

    goto/16 :goto_1b

    :cond_16
    const/16 v0, 0x2c

    const/16 v3, 0x24

    const/16 v15, 0x5cd0

    const/16 v29, 0x318

    const/16 v30, 0xbb8

    goto/16 :goto_1c

    :cond_17
    const/16 v15, 0x2e68

    const/16 v0, 0x5dc

    goto/16 :goto_1f

    :cond_18
    const/16 v15, 0x2e68

    const/16 v0, 0x300

    goto/16 :goto_1f

    :cond_19
    const/16 v15, 0x1734

    goto/16 :goto_1e

    :cond_1a
    const/16 v15, 0xb9a

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    move v5, v15

    const/16 v0, 0x1e

    const/16 v3, 0xb

    const/16 v4, 0x80

    goto/16 :goto_21

    :cond_1b
    :sswitch_13
    move/from16 v20, v3

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported profile "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x2

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v33, 0x0

    :goto_19
    const/16 v34, 0x0

    goto/16 :goto_23

    :cond_1c
    move/from16 v20, v3

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    iget v0, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_24

    const/4 v3, 0x2

    if-eq v0, v3, :cond_23

    const/4 v3, 0x4

    if-eq v0, v3, :cond_22

    const/16 v3, 0x8

    if-eq v0, v3, :cond_21

    const/16 v3, 0x10

    if-eq v0, v3, :cond_20

    const/16 v3, 0x40

    if-eq v0, v3, :cond_1f

    const/16 v3, 0x80

    if-eq v0, v3, :cond_1e

    const/16 v3, 0x100

    if-eq v0, v3, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized profile/level "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    or-int/lit8 v19, v19, 0x1

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    goto/16 :goto_17

    :cond_1d
    const/16 v0, 0x50

    const/16 v3, 0x2d

    const v15, 0x1a5e0

    const/16 v29, 0xe10

    const/16 v30, 0x2ee0

    goto :goto_1c

    :cond_1e
    const/16 v0, 0x2d

    const/16 v3, 0x24

    const v15, 0x9e34

    :goto_1b
    const/16 v29, 0x654

    const/16 v30, 0x1f40

    :goto_1c
    move/from16 v33, v30

    move-object/from16 v30, v4

    move/from16 v4, v33

    move-object/from16 v35, v6

    move/from16 v6, v29

    const/16 v33, 0x1

    const/16 v34, 0x0

    move/from16 v29, v5

    move v5, v15

    move v15, v3

    goto :goto_1d

    :cond_1f
    const/16 v0, 0x28

    const v15, 0x8ca0

    const/16 v29, 0x4b0

    const/16 v3, 0xfa0

    move-object/from16 v30, v4

    move-object/from16 v35, v6

    move/from16 v6, v29

    const/16 v33, 0x1

    const/16 v34, 0x0

    move v4, v3

    move/from16 v29, v5

    move v5, v15

    const/16 v15, 0x1e

    :goto_1d
    move v3, v0

    goto :goto_20

    :cond_20
    const/16 v15, 0x2e68

    :goto_1e
    const/16 v0, 0x180

    :goto_1f
    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    move v5, v15

    move/from16 v3, v23

    const/16 v6, 0x18c

    const/16 v15, 0x12

    const/16 v33, 0x1

    const/16 v34, 0x0

    move v4, v0

    :goto_20
    const/16 v0, 0x1e

    goto :goto_23

    :cond_21
    const/16 v15, 0x1734

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    move v5, v15

    move/from16 v3, v23

    const/16 v0, 0x1e

    const/16 v4, 0x80

    const/16 v6, 0x18c

    const/16 v15, 0x12

    goto/16 :goto_18

    :cond_22
    const/16 v15, 0x5cd

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    move v5, v15

    const/16 v0, 0x1e

    const/16 v3, 0xb

    const/16 v4, 0x40

    :goto_21
    const/16 v6, 0x63

    const/16 v15, 0x9

    goto/16 :goto_18

    :cond_23
    const/16 v0, 0xf

    const/16 v15, 0x5cd

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    move v5, v15

    const/16 v3, 0xb

    const/16 v4, 0x80

    goto :goto_22

    :cond_24
    const/16 v0, 0xf

    const/16 v15, 0x5cd

    move-object/from16 v30, v4

    move/from16 v29, v5

    move-object/from16 v35, v6

    move v5, v15

    const/16 v3, 0xb

    const/16 v4, 0x40

    :goto_22
    const/16 v6, 0x63

    const/16 v15, 0x9

    const/16 v33, 0x1

    const/16 v34, 0x1

    :goto_23
    if-eqz v33, :cond_25

    and-int/lit8 v19, v19, -0x5

    :cond_25
    move-object/from16 v33, v12

    move/from16 v36, v13

    int-to-long v12, v5

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v34, :cond_26

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v3, v36

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_24

    :cond_26
    move/from16 v3, v36

    mul-int/lit8 v6, v6, 0x2

    int-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x3c

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_24
    move v10, v0

    move v13, v3

    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v20

    move-object/from16 v4, v30

    move-object/from16 v12, v33

    move-object/from16 v29, v35

    move-object/from16 v30, v7

    goto/16 :goto_16

    :cond_27
    move v3, v13

    const/4 v0, 0x1

    move-wide v4, v8

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v8, v0

    move v2, v3

    move v3, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :goto_25
    move v10, v11

    goto/16 :goto_56

    :cond_28
    move-object/from16 v35, v29

    move-object/from16 v7, v30

    move-object/from16 v33, v31

    move-object/from16 v30, v4

    const-string v1, "video/3gpp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    move-object/from16 v1, v33

    array-length v3, v1

    const/16 v4, 0xf

    const/16 v5, 0x10

    const-wide/16 v8, 0x5cd

    const v6, 0xfa00

    move v12, v4

    move v10, v5

    move v13, v6

    const/16 v4, 0x9

    const/16 v5, 0x63

    const/4 v11, 0x0

    const/16 v14, 0xb

    const/16 v15, 0x9

    const/16 v19, 0x4

    move-object v6, v1

    const/16 v1, 0xb

    :goto_26
    if-ge v11, v3, :cond_36

    move/from16 v16, v3

    aget-object v3, v6, v11

    move/from16 v17, v10

    iget v10, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v20, v11

    const/4 v11, 0x1

    if-eq v10, v11, :cond_33

    const/4 v11, 0x2

    if-eq v10, v11, :cond_32

    const/4 v11, 0x4

    if-eq v10, v11, :cond_31

    const/16 v11, 0x8

    if-eq v10, v11, :cond_30

    const/16 v11, 0x10

    if-eq v10, v11, :cond_2c

    const/16 v11, 0x20

    if-eq v10, v11, :cond_2b

    const/16 v11, 0x40

    if-eq v10, v11, :cond_2a

    const/16 v11, 0x80

    if-eq v10, v11, :cond_29

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unrecognized profile/level "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v35

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    move/from16 v35, v1

    move/from16 v38, v35

    move/from16 v36, v4

    move/from16 v37, v36

    move-object/from16 v33, v6

    move/from16 v29, v19

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v34, 0x0

    const/16 v39, 0x0

    goto/16 :goto_2c

    :cond_29
    move-object/from16 v11, v35

    const/16 v10, 0x3c

    const/16 v17, 0x2d

    const/16 v29, 0x24

    const/16 v33, 0x100

    const v34, 0x13c68

    move/from16 v38, v1

    move/from16 v37, v4

    move/from16 v39, v10

    move/from16 v4, v29

    move/from16 v1, v34

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x1

    move/from16 v29, v19

    move/from16 v19, v33

    move-object/from16 v33, v6

    move/from16 v6, v17

    const/16 v17, 0x4

    goto/16 :goto_2c

    :cond_2a
    move-object/from16 v11, v35

    const/16 v10, 0x3c

    const/16 v17, 0x2d

    const v34, 0x9e34

    move/from16 v38, v1

    move/from16 v37, v4

    move-object/from16 v33, v6

    move/from16 v39, v10

    move/from16 v6, v17

    move/from16 v29, v19

    move/from16 v1, v34

    const/16 v4, 0x12

    const/16 v17, 0x4

    const/16 v19, 0x80

    goto :goto_27

    :cond_2b
    move-object/from16 v11, v35

    const/16 v10, 0x3c

    const/16 v34, 0x4d58

    move/from16 v38, v1

    move/from16 v37, v4

    move-object/from16 v33, v6

    move/from16 v39, v10

    move/from16 v29, v19

    move/from16 v6, v23

    move/from16 v1, v34

    const/16 v4, 0x12

    const/16 v17, 0x4

    const/16 v19, 0x40

    :goto_27
    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x1

    goto/16 :goto_2c

    :cond_2c
    move-object/from16 v11, v35

    iget v10, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move-object/from16 v33, v6

    const/4 v6, 0x1

    if-eq v10, v6, :cond_2e

    iget v6, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v10, 0x4

    if-ne v6, v10, :cond_2d

    goto :goto_28

    :cond_2d
    const/4 v6, 0x0

    goto :goto_29

    :cond_2e
    :goto_28
    const/4 v6, 0x1

    :goto_29
    if-nez v6, :cond_2f

    const/4 v10, 0x1

    const/16 v17, 0x4

    const/16 v29, 0x1

    goto :goto_2a

    :cond_2f
    move v10, v1

    move/from16 v29, v4

    :goto_2a
    const/16 v34, 0xf

    const/16 v35, 0x5cd

    move/from16 v38, v1

    move/from16 v37, v4

    move/from16 v36, v29

    move/from16 v39, v34

    move/from16 v1, v35

    const/16 v4, 0x9

    move/from16 v34, v6

    move/from16 v35, v10

    move/from16 v29, v19

    const/16 v6, 0xb

    const/16 v19, 0x2

    goto/16 :goto_2c

    :cond_30
    move-object/from16 v33, v6

    move-object/from16 v11, v35

    const/16 v6, 0x20

    goto :goto_2b

    :cond_31
    move-object/from16 v33, v6

    move-object/from16 v11, v35

    const/4 v6, 0x6

    :goto_2b
    const/16 v34, 0x2e68

    move/from16 v35, v1

    move/from16 v38, v35

    move/from16 v36, v4

    move/from16 v37, v36

    move/from16 v29, v19

    move/from16 v1, v34

    const/16 v4, 0x12

    const/16 v34, 0x1

    const/16 v39, 0x1e

    move/from16 v19, v6

    move/from16 v6, v23

    goto :goto_2c

    :cond_32
    move-object/from16 v33, v6

    move-object/from16 v11, v35

    const/16 v34, 0x1734

    move/from16 v35, v1

    move/from16 v38, v35

    move/from16 v36, v4

    move/from16 v37, v36

    move/from16 v29, v19

    move/from16 v6, v23

    move/from16 v1, v34

    const/16 v4, 0x12

    const/16 v19, 0x2

    const/16 v34, 0x1

    const/16 v39, 0x1e

    goto :goto_2c

    :cond_33
    move-object/from16 v33, v6

    move-object/from16 v11, v35

    const/16 v10, 0xf

    const/16 v34, 0x5cd

    move/from16 v35, v1

    move/from16 v38, v35

    move/from16 v36, v4

    move/from16 v37, v36

    move/from16 v39, v10

    move/from16 v29, v19

    move/from16 v1, v34

    const/16 v4, 0x9

    const/16 v6, 0xb

    const/16 v19, 0x1

    const/16 v34, 0x1

    :goto_2c
    iget v10, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v40, v12

    const/4 v12, 0x1

    if-eq v10, v12, :cond_34

    const/4 v12, 0x2

    if-eq v10, v12, :cond_34

    const/4 v12, 0x4

    if-eq v10, v12, :cond_34

    const/16 v12, 0x8

    if-eq v10, v12, :cond_34

    const/16 v12, 0x10

    if-eq v10, v12, :cond_34

    const/16 v12, 0x20

    if-eq v10, v12, :cond_34

    const/16 v12, 0x40

    if-eq v10, v12, :cond_34

    const/16 v12, 0x80

    if-eq v10, v12, :cond_34

    const/16 v12, 0x100

    if-eq v10, v12, :cond_34

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v12, v30

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v29, v29, 0x1

    goto :goto_2d

    :cond_34
    move-object/from16 v12, v30

    :goto_2d
    if-eqz v34, :cond_35

    const/16 v3, 0xb

    const/16 v10, 0x9

    goto :goto_2e

    :cond_35
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    move/from16 v3, v35

    move/from16 v10, v36

    :goto_2e
    and-int/lit8 v29, v29, -0x5

    move-object/from16 v35, v11

    move-object/from16 v30, v12

    int-to-long v11, v1

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    mul-int v1, v6, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v1, 0xfa00

    mul-int v1, v1, v19

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v1, v39

    move/from16 v12, v40

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    move/from16 v1, v38

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v3, v37

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v11, v20, 0x1

    move/from16 v3, v16

    move/from16 v10, v17

    move/from16 v19, v29

    move-object/from16 v6, v33

    goto/16 :goto_26

    :cond_36
    move v3, v4

    move/from16 v17, v10

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v2, :cond_37

    new-instance v2, Landroid/util/Rational;

    const/16 v4, 0x9

    const/16 v6, 0xb

    invoke-direct {v2, v6, v4}, Landroid/util/Rational;-><init>(II)V

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v6, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v2, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_37
    move-wide v6, v8

    const/16 v8, 0x10

    const/16 v9, 0x10

    move/from16 v11, v17

    move v2, v3

    move v3, v14

    move v4, v15

    move/from16 v10, v17

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v10, v28

    invoke-static {v10, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move v10, v13

    goto/16 :goto_56

    :cond_38
    move-object/from16 v10, v28

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    move-object/from16 v1, v33

    array-length v3, v1

    const/4 v14, 0x0

    const/16 v19, 0x4

    :goto_2f
    if-ge v14, v3, :cond_3b

    aget-object v4, v1, v14

    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_39

    const/4 v15, 0x2

    if-eq v5, v15, :cond_39

    const/4 v15, 0x4

    if-eq v5, v15, :cond_39

    const/16 v15, 0x8

    if-eq v5, v15, :cond_39

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unrecognized level "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v15, v35

    invoke-static {v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    goto :goto_30

    :cond_39
    move-object/from16 v15, v35

    :goto_30
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3a

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v12, v30

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    goto :goto_31

    :cond_3a
    move-object/from16 v12, v30

    :goto_31
    and-int/lit8 v19, v19, -0x5

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v30, v12

    move-object/from16 v35, v15

    goto :goto_2f

    :cond_3b
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v1, 0x7fff

    const/16 v2, 0x7fff

    const v3, 0x7fffffff

    const-wide/32 v4, 0x7fffffff

    const/16 v6, 0x10

    const/16 v7, 0x10

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    const v0, 0x5f5e100

    move-object/from16 v28, v10

    move v10, v0

    move-object/from16 v0, p0

    goto/16 :goto_56

    :cond_3c
    move-object/from16 v12, v30

    move-object/from16 v1, v33

    move-object/from16 v15, v35

    const-string v0, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    array-length v0, v1

    const-wide/32 v5, 0xca800

    const v8, 0x9000

    const v9, 0x30d40

    const/16 v11, 0x200

    move v13, v11

    move v11, v9

    move v9, v13

    const/4 v13, 0x0

    const/16 v19, 0x4

    :goto_32
    if-ge v13, v0, :cond_40

    aget-object v14, v1, v13

    iget v3, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3d

    sparse-switch v3, :sswitch_data_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unrecognized level "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    const-wide/16 v3, 0x0

    move/from16 v21, v0

    move-object/from16 v31, v1

    move-object/from16 v28, v10

    move/from16 v22, v13

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto/16 :goto_37

    :sswitch_14
    const-wide v3, 0x118800000L

    const v21, 0x75300

    goto :goto_33

    :sswitch_15
    const-wide v3, 0x8c400000L

    const v21, 0x3a980

    goto :goto_33

    :sswitch_16
    const-wide/32 v3, 0x46200000

    const v21, 0x2bf20

    :goto_33
    const/16 v22, 0x41c0

    move-object/from16 v31, v1

    move-object/from16 v28, v10

    move/from16 v10, v22

    move/from16 v22, v13

    move/from16 v13, v21

    move/from16 v21, v0

    const/high16 v0, 0x2200000

    goto/16 :goto_37

    :sswitch_17
    const-wide/32 v3, 0x46200000

    const v21, 0x2bf20

    goto :goto_34

    :sswitch_18
    const-wide/32 v3, 0x23100000

    const v21, 0x1d4c0

    goto :goto_34

    :sswitch_19
    const-wide/32 v3, 0x12980000

    const v21, 0xea60

    :goto_34
    const/16 v22, 0x20c0

    move-object/from16 v31, v1

    move-object/from16 v28, v10

    move/from16 v10, v22

    move/from16 v22, v13

    move/from16 v13, v21

    move/from16 v21, v0

    const/high16 v0, 0x880000

    goto :goto_37

    :sswitch_1a
    const-wide/32 v3, 0x9900000

    const/high16 v21, 0x220000

    const/16 v22, 0x7530

    goto :goto_35

    :sswitch_1b
    const-wide/32 v3, 0x4fb0000

    const/high16 v21, 0x220000

    const/16 v22, 0x4650

    :goto_35
    const/16 v23, 0x1040

    goto :goto_36

    :sswitch_1c
    const-wide/32 v3, 0x2328000

    const/high16 v21, 0xf0000

    const/16 v22, 0x2ee0

    const/16 v23, 0xac0

    goto :goto_36

    :sswitch_1d
    const-wide/32 v3, 0x13c6800

    const v21, 0x87000

    const/16 v22, 0x1c20

    const/16 v23, 0x800

    goto :goto_36

    :sswitch_1e
    const-wide/32 v3, 0x8ca000

    const v21, 0x3c000

    const/16 v22, 0xe10

    const/16 v23, 0x540

    goto :goto_36

    :sswitch_1f
    const-wide/32 v3, 0x465000

    const v21, 0x1e000

    const/16 v22, 0x708

    const/16 v23, 0x3c0

    goto :goto_36

    :cond_3d
    const-wide/32 v3, 0x2a3000

    const v21, 0x12000

    const/16 v22, 0x320

    const/16 v23, 0x300

    goto :goto_36

    :cond_3e
    const-wide/32 v3, 0xca800

    const v21, 0x9000

    const/16 v22, 0xc8

    const/16 v23, 0x200

    :goto_36
    move/from16 v28, v21

    move/from16 v21, v0

    move/from16 v0, v28

    move/from16 v28, v22

    move/from16 v22, v13

    move/from16 v13, v28

    move-object/from16 v31, v1

    move-object/from16 v28, v10

    move/from16 v10, v23

    :goto_37
    iget v1, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v23, v9

    const/4 v9, 0x1

    if-eq v1, v9, :cond_3f

    const/4 v9, 0x2

    if-eq v1, v9, :cond_3f

    const/4 v9, 0x4

    if-eq v1, v9, :cond_3f

    const/16 v9, 0x8

    if-eq v1, v9, :cond_3f

    const/16 v9, 0x1000

    if-eq v1, v9, :cond_3f

    const/16 v9, 0x2000

    if-eq v1, v9, :cond_3f

    const/16 v9, 0x4000

    if-eq v1, v9, :cond_3f

    const v9, 0x8000

    if-eq v1, v9, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    :cond_3f
    and-int/lit8 v19, v19, -0x5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int/lit16 v13, v13, 0x3e8

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v0, v23

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v13, v22, 0x1

    move/from16 v0, v21

    move-object/from16 v10, v28

    move-object/from16 v1, v31

    goto/16 :goto_32

    :cond_40
    move v0, v9

    move-object/from16 v28, v10

    const/16 v3, 0x8

    invoke-static {v0, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    const/16 v15, 0x40

    invoke-static {v8, v15}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    const-wide/16 v7, 0x40

    invoke-static {v5, v6, v7, v8}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_25

    :cond_41
    move-object/from16 v31, v1

    move-object/from16 v28, v10

    const-string v0, "video/hevc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v0, 0x21c0

    int-to-long v0, v0

    move-object/from16 v6, v31

    array-length v3, v6

    const/16 v4, 0x240

    const v5, 0x1f400

    move v10, v5

    const/16 v19, 0x4

    move-wide/from16 v41, v0

    move v0, v4

    move-wide/from16 v4, v41

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v3, :cond_44

    aget-object v8, v6, v1

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v11, 0x1

    if-eq v9, v11, :cond_42

    const/4 v11, 0x2

    if-eq v9, v11, :cond_42

    sparse-switch v9, :sswitch_data_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Unrecognized level "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    const-wide/16 v13, 0x0

    move/from16 v18, v1

    const/4 v9, 0x0

    const/4 v11, 0x0

    goto/16 :goto_3d

    :sswitch_20
    const-wide/high16 v13, 0x405e000000000000L    # 120.0

    const v9, 0xc3500

    goto :goto_3a

    :sswitch_21
    const-wide/high16 v13, 0x405e000000000000L    # 120.0

    goto :goto_39

    :sswitch_22
    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    const v9, 0x75300

    goto :goto_3a

    :sswitch_23
    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    const v9, 0x1d4c0

    goto :goto_3a

    :sswitch_24
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    :goto_39
    const v9, 0x3a980

    goto :goto_3a

    :sswitch_25
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const v9, 0xea60

    :goto_3a
    move/from16 v18, v1

    const/high16 v11, 0x2200000

    goto/16 :goto_3d

    :sswitch_26
    const-wide/high16 v13, 0x405e000000000000L    # 120.0

    const v9, 0x3a980

    goto :goto_3b

    :sswitch_27
    const-wide/high16 v13, 0x405e000000000000L    # 120.0

    const v9, 0xea60

    goto :goto_3b

    :sswitch_28
    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    const v9, 0x27100

    goto :goto_3b

    :sswitch_29
    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    const v9, 0x9c40

    goto :goto_3b

    :sswitch_2a
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const v9, 0x186a0

    goto :goto_3b

    :sswitch_2b
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const/16 v9, 0x61a8

    :goto_3b
    move/from16 v18, v1

    const/high16 v11, 0x880000

    goto :goto_3d

    :sswitch_2c
    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    const/high16 v9, 0x220000

    const v11, 0xc350

    goto :goto_3c

    :sswitch_2d
    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    const/high16 v9, 0x220000

    const/16 v11, 0x4e20

    goto :goto_3c

    :sswitch_2e
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const/high16 v9, 0x220000

    const/16 v11, 0x7530

    goto :goto_3c

    :sswitch_2f
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const/high16 v9, 0x220000

    const/16 v11, 0x2ee0

    goto :goto_3c

    :sswitch_30
    const-wide v13, 0x4040e00000000000L    # 33.75

    const/high16 v9, 0xf0000

    const/16 v11, 0x2710

    goto :goto_3c

    :sswitch_31
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const v9, 0x87000

    const/16 v11, 0x1770

    goto :goto_3c

    :sswitch_32
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const v9, 0x3c000

    const/16 v11, 0xbb8

    goto :goto_3c

    :sswitch_33
    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const v9, 0x1e000

    const/16 v11, 0x5dc

    :goto_3c
    move/from16 v18, v11

    move v11, v9

    move/from16 v9, v18

    move/from16 v18, v1

    goto :goto_3d

    :cond_42
    const-wide/high16 v13, 0x402e000000000000L    # 15.0

    const v9, 0x9000

    move/from16 v18, v1

    move v11, v9

    const/16 v9, 0x80

    :goto_3d
    iget v1, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v22, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_43

    const/4 v3, 0x2

    if-eq v1, v3, :cond_43

    const/4 v3, 0x4

    if-eq v1, v3, :cond_43

    const/16 v3, 0x1000

    if-eq v1, v3, :cond_43

    const/16 v3, 0x2000

    if-eq v1, v3, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v19, v19, 0x1

    :cond_43
    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v19, v19, -0x5

    move-wide/from16 v23, v13

    int-to-double v13, v1

    mul-double v13, v13, v23

    double-to-int v3, v13

    int-to-long v13, v3

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v1, v18, 0x1

    move/from16 v3, v22

    goto/16 :goto_38

    :cond_44
    mul-int/lit8 v1, v0, 0x8

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v1

    move v3, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_56

    :cond_45
    move-object/from16 v6, v31

    const-string v0, "video/av01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    array-length v0, v6

    const-wide/32 v3, 0xca800

    const v1, 0x9000

    const v5, 0x30d40

    const/16 v8, 0x200

    move v10, v5

    const/4 v5, 0x0

    const/16 v25, 0x4

    :goto_3e
    if-ge v5, v0, :cond_49

    aget-object v9, v6, v5

    iget v11, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v13, 0x1

    if-eq v11, v13, :cond_47

    const/4 v13, 0x2

    if-eq v11, v13, :cond_46

    sparse-switch v11, :sswitch_data_4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Unrecognized level "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v25, v25, 0x1

    const-wide/16 v13, 0x0

    move/from16 v21, v0

    move/from16 v19, v5

    move-object/from16 v31, v6

    move-wide v5, v13

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_46

    :sswitch_34
    const-wide v13, 0x118800000L

    goto :goto_3f

    :sswitch_35
    const-wide v13, 0x105090000L

    :goto_3f
    const v11, 0x27100

    goto :goto_40

    :sswitch_36
    const-wide v13, 0x82848000L

    const v11, 0x186a0

    goto :goto_40

    :sswitch_37
    const-wide/32 v13, 0x46200000

    const v11, 0xea60

    :goto_40
    const/16 v19, 0x4000

    move/from16 v21, v0

    move-object/from16 v31, v6

    move/from16 v41, v19

    move/from16 v19, v5

    move-wide v5, v13

    const/high16 v13, 0x2200000

    move v14, v11

    goto/16 :goto_45

    :sswitch_38
    const-wide/32 v13, 0x46200000

    goto :goto_41

    :sswitch_39
    const-wide/32 v13, 0x41424000

    :goto_41
    const v11, 0xea60

    goto :goto_42

    :sswitch_3a
    const-wide/32 v13, 0x20a12000

    const v11, 0x9c40

    goto :goto_42

    :sswitch_3b
    const-wide/32 v13, 0x10509000

    const/16 v11, 0x7530

    :goto_42
    move/from16 v21, v0

    move/from16 v19, v5

    move-object/from16 v31, v6

    move-wide v5, v13

    const/high16 v13, 0x880000

    move v14, v11

    const/16 v11, 0x2000

    goto :goto_46

    :sswitch_3c
    const-wide/32 v13, 0x9480000

    const/high16 v11, 0x240000

    const/16 v19, 0x4e20

    goto :goto_43

    :sswitch_3d
    const-wide/32 v13, 0x4a40000

    const/high16 v11, 0x240000

    const/16 v19, 0x2ee0

    :goto_43
    const/16 v21, 0x1800

    goto :goto_44

    :sswitch_3e
    const-wide/32 v13, 0x2616960

    const v11, 0x104040

    const/16 v19, 0x2710

    const/16 v21, 0x1580

    goto :goto_44

    :sswitch_3f
    const-wide/32 v13, 0x17d0180

    const v11, 0xa2900

    const/16 v19, 0x1770

    const/16 v21, 0x1100

    goto :goto_44

    :cond_46
    :sswitch_40
    const-wide/32 v13, 0x9f8580

    const v11, 0x44100

    const/16 v19, 0xbb8

    const/16 v21, 0xb00

    goto :goto_44

    :cond_47
    const-wide/32 v13, 0x546000

    const v11, 0x24000

    const/16 v19, 0x5dc

    const/16 v21, 0x800

    :goto_44
    move-object/from16 v31, v6

    move/from16 v41, v21

    move/from16 v21, v0

    move/from16 v42, v19

    move/from16 v19, v5

    move-wide v5, v13

    move/from16 v14, v42

    move v13, v11

    :goto_45
    move/from16 v11, v41

    :goto_46
    iget v0, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v22, v8

    const/4 v8, 0x1

    if-eq v0, v8, :cond_48

    const/4 v8, 0x2

    if-eq v0, v8, :cond_48

    const/16 v8, 0x1000

    if-eq v0, v8, :cond_48

    const/16 v8, 0x2000

    if-eq v0, v8, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v25, v25, 0x1

    :cond_48
    and-int/lit8 v25, v25, -0x5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit16 v14, v14, 0x3e8

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v8, v22

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v5, v19, 0x1

    move/from16 v0, v21

    move-object/from16 v6, v31

    goto/16 :goto_3e

    :cond_49
    const/16 v9, 0x8

    invoke-static {v8, v9}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    const/16 v15, 0x40

    invoke-static {v1, v15}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    const-wide/16 v5, 0x40

    invoke-static {v3, v4, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v0

    move v3, v1

    move v1, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    :goto_47
    move/from16 v19, v25

    goto/16 :goto_56

    :cond_4a
    move-object/from16 v31, v6

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "video/apv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move-object/from16 v1, v31

    array-length v0, v1

    const-wide/16 v3, 0x2e68

    const v5, 0x6acfc0

    move v10, v5

    const/4 v5, 0x0

    const/16 v25, 0x4

    :goto_48
    const v6, 0x7fffffff

    if-ge v5, v0, :cond_4d

    aget-object v8, v1, v5

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v9, :sswitch_data_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Unrecognized level "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v25, v25, 0x1

    const-wide/16 v13, 0x0

    const/4 v6, 0x0

    goto/16 :goto_54

    :sswitch_41
    const-wide v13, 0x7e9000000L

    goto/16 :goto_54

    :sswitch_42
    const-wide v13, 0x3f4800000L

    goto/16 :goto_54

    :sswitch_43
    const-wide v13, 0x1fa400000L

    goto/16 :goto_54

    :sswitch_44
    const-wide v13, 0x11cc40000L

    goto/16 :goto_54

    :sswitch_45
    const-wide/32 v13, 0x7e900000

    goto/16 :goto_54

    :sswitch_46
    const-wide/32 v13, 0x3f480000

    goto/16 :goto_54

    :sswitch_47
    const-wide/32 v13, 0x3f480000

    goto :goto_49

    :sswitch_48
    const-wide/32 v13, 0x1fa40000

    goto/16 :goto_54

    :sswitch_49
    const-wide/32 v13, 0x1fa40000

    :goto_49
    const v6, 0x5cfbb600

    goto/16 :goto_54

    :sswitch_4a
    const-wide/32 v13, 0x1fa40000

    goto :goto_4a

    :sswitch_4b
    const-wide/32 v13, 0x1fa40000

    goto :goto_4b

    :sswitch_4c
    const-wide/32 v13, 0xfd20000

    :goto_4a
    const v6, 0x45bcc880

    goto/16 :goto_54

    :sswitch_4d
    const-wide/32 v13, 0xfd20000

    :goto_4b
    const v6, 0x2e7ddb00

    goto/16 :goto_54

    :sswitch_4e
    const-wide/32 v13, 0xfd20000

    goto :goto_4c

    :sswitch_4f
    const-wide/32 v13, 0xfd20000

    goto :goto_4d

    :sswitch_50
    const-wide/32 v13, 0x7f80000

    :goto_4c
    const v6, 0x23e1ca80

    goto/16 :goto_54

    :sswitch_51
    const-wide/32 v13, 0x7f80000

    :goto_4d
    const v6, 0x17e6c640

    goto/16 :goto_54

    :sswitch_52
    const-wide/32 v13, 0x7f80000

    goto :goto_4e

    :sswitch_53
    const-wide/32 v13, 0x7f80000

    goto :goto_4f

    :sswitch_54
    const-wide/32 v13, 0x3fc0000

    :goto_4e
    const v6, 0x11f0e540

    goto/16 :goto_54

    :sswitch_55
    const-wide/32 v13, 0x3fc0000

    :goto_4f
    const v6, 0xbfb0440

    goto/16 :goto_54

    :sswitch_56
    const-wide/32 v13, 0x3fc0000

    const v6, 0x90013c0

    goto/16 :goto_54

    :sswitch_57
    const-wide/32 v13, 0x3fc0000

    const v6, 0x6052340

    goto/16 :goto_54

    :sswitch_58
    const-wide/32 v13, 0x1de2000

    const v6, 0xca2dd00

    goto :goto_54

    :sswitch_59
    const-wide/32 v13, 0x1de2000

    const v6, 0x8677d40

    goto :goto_54

    :sswitch_5a
    const-wide/32 v13, 0x1de2000

    goto :goto_50

    :sswitch_5b
    const-wide/32 v13, 0x1de2000

    goto :goto_51

    :sswitch_5c
    const-wide/32 v13, 0xef1000

    :goto_50
    const v6, 0x6516e80

    goto :goto_54

    :sswitch_5d
    const-wide/32 v13, 0xef1000

    :goto_51
    const v6, 0x43b5fc0

    goto :goto_54

    :sswitch_5e
    const-wide/32 v13, 0xef1000

    const v6, 0x328b740

    goto :goto_54

    :sswitch_5f
    const-wide/32 v13, 0xef1000

    const v6, 0x2255100

    goto :goto_54

    :sswitch_60
    const-wide/32 v13, 0x5cd000

    const v6, 0x280de80

    goto :goto_54

    :sswitch_61
    const-wide/32 v13, 0x5cd000

    const v6, 0x1ab3f00

    goto :goto_54

    :sswitch_62
    const-wide/32 v13, 0x5cd000

    goto :goto_52

    :sswitch_63
    const-wide/32 v13, 0x5cd000

    goto :goto_53

    :sswitch_64
    const-wide/32 v13, 0x2e6800

    :goto_52
    const v6, 0x1406f40

    goto :goto_54

    :sswitch_65
    const-wide/32 v13, 0x2e6800

    :goto_53
    const v6, 0xd59f80

    goto :goto_54

    :sswitch_66
    const-wide/32 v13, 0x2e6800

    const v6, 0xa7d8c0

    goto :goto_54

    :sswitch_67
    const-wide/32 v13, 0x2e6800

    const v6, 0x6acfc0

    :goto_54
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v11, 0x1

    if-eq v9, v11, :cond_4b

    const/16 v11, 0x1000

    if-eq v9, v11, :cond_4b

    const/16 v11, 0x2000

    if-eq v9, v11, :cond_4c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v25, v25, 0x1

    goto :goto_55

    :cond_4b
    const/16 v11, 0x2000

    :cond_4c
    :goto_55
    and-int/lit8 v25, v25, -0x5

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_48

    :cond_4d
    const-wide/16 v0, 0x100

    invoke-static {v3, v4, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    int-to-long v0, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v3, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_47

    :cond_4e
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported mime "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v10, 0xfa00

    const/16 v19, 0x6

    :goto_56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v10, v28

    invoke-static {v10, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v1, v1, v19

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x20 -> :sswitch_e
        0x40 -> :sswitch_d
        0x80 -> :sswitch_c
        0x100 -> :sswitch_b
        0x200 -> :sswitch_a
        0x400 -> :sswitch_9
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_7
        0x2000 -> :sswitch_6
        0x4000 -> :sswitch_5
        0x8000 -> :sswitch_4
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_13
        0x8 -> :sswitch_13
        0x10 -> :sswitch_13
        0x20 -> :sswitch_13
        0x40 -> :sswitch_13
        0x80 -> :sswitch_13
        0x100 -> :sswitch_13
        0x200 -> :sswitch_13
        0x400 -> :sswitch_13
        0x800 -> :sswitch_13
        0x1000 -> :sswitch_13
        0x2000 -> :sswitch_13
        0x4000 -> :sswitch_13
        0x8000 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_19
        0x200 -> :sswitch_18
        0x400 -> :sswitch_17
        0x800 -> :sswitch_16
        0x1000 -> :sswitch_15
        0x2000 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x4 -> :sswitch_33
        0x8 -> :sswitch_33
        0x10 -> :sswitch_32
        0x20 -> :sswitch_32
        0x40 -> :sswitch_31
        0x80 -> :sswitch_31
        0x100 -> :sswitch_30
        0x200 -> :sswitch_30
        0x400 -> :sswitch_2f
        0x800 -> :sswitch_2e
        0x1000 -> :sswitch_2d
        0x2000 -> :sswitch_2c
        0x4000 -> :sswitch_2b
        0x8000 -> :sswitch_2a
        0x10000 -> :sswitch_29
        0x20000 -> :sswitch_28
        0x40000 -> :sswitch_27
        0x80000 -> :sswitch_26
        0x100000 -> :sswitch_25
        0x200000 -> :sswitch_24
        0x400000 -> :sswitch_23
        0x800000 -> :sswitch_22
        0x1000000 -> :sswitch_21
        0x2000000 -> :sswitch_20
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x4 -> :sswitch_40
        0x8 -> :sswitch_40
        0x10 -> :sswitch_3f
        0x20 -> :sswitch_3e
        0x40 -> :sswitch_3e
        0x80 -> :sswitch_3e
        0x100 -> :sswitch_3d
        0x200 -> :sswitch_3c
        0x400 -> :sswitch_3c
        0x800 -> :sswitch_3c
        0x1000 -> :sswitch_3b
        0x2000 -> :sswitch_3a
        0x4000 -> :sswitch_39
        0x8000 -> :sswitch_38
        0x10000 -> :sswitch_37
        0x20000 -> :sswitch_36
        0x40000 -> :sswitch_35
        0x80000 -> :sswitch_34
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x101 -> :sswitch_67
        0x102 -> :sswitch_66
        0x104 -> :sswitch_65
        0x108 -> :sswitch_64
        0x201 -> :sswitch_63
        0x202 -> :sswitch_62
        0x204 -> :sswitch_61
        0x208 -> :sswitch_60
        0x401 -> :sswitch_5f
        0x402 -> :sswitch_5e
        0x404 -> :sswitch_5d
        0x408 -> :sswitch_5c
        0x801 -> :sswitch_5b
        0x802 -> :sswitch_5a
        0x804 -> :sswitch_59
        0x808 -> :sswitch_58
        0x1001 -> :sswitch_57
        0x1002 -> :sswitch_56
        0x1004 -> :sswitch_55
        0x1008 -> :sswitch_54
        0x2001 -> :sswitch_53
        0x2002 -> :sswitch_52
        0x2004 -> :sswitch_51
        0x2008 -> :sswitch_50
        0x4001 -> :sswitch_4f
        0x4002 -> :sswitch_4e
        0x4004 -> :sswitch_4d
        0x4008 -> :sswitch_4c
        0x8001 -> :sswitch_4b
        0x8002 -> :sswitch_4a
        0x8004 -> :sswitch_49
        0x8008 -> :sswitch_48
        0x10001 -> :sswitch_47
        0x10002 -> :sswitch_46
        0x10004 -> :sswitch_46
        0x10008 -> :sswitch_46
        0x20001 -> :sswitch_45
        0x20002 -> :sswitch_45
        0x20004 -> :sswitch_45
        0x20008 -> :sswitch_45
        0x40001 -> :sswitch_44
        0x40002 -> :sswitch_44
        0x40004 -> :sswitch_44
        0x40008 -> :sswitch_44
        0x80001 -> :sswitch_43
        0x80002 -> :sswitch_43
        0x80004 -> :sswitch_43
        0x80008 -> :sswitch_43
        0x100001 -> :sswitch_42
        0x100002 -> :sswitch_42
        0x100004 -> :sswitch_42
        0x100008 -> :sswitch_42
        0x200001 -> :sswitch_41
        0x200002 -> :sswitch_41
        0x200004 -> :sswitch_41
        0x200008 -> :sswitch_41
    .end sparse-switch
.end method

.method private greylist-max-o applyMacroBlockLimits(IIIIIJIIII)V
    .locals 6

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {p0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v1, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, p3, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v2, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    move v1, p8

    move v2, p9

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v2, p8

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v3, p8

    div-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v2, p9

    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v3, p9

    div-int v3, p4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    return-void
.end method

.method private greylist-max-o applyMacroBlockLimits(IIIJIIII)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    return-void
.end method

.method public static greylist-max-p create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method

.method public static greylist-max-o equivalentVP9Level(Landroid/media/MediaFormat;)I
    .locals 11

    invoke-virtual {p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object p0

    const-string v0, "block-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v1}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v1, v0

    const-string v0, "block-count-range"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v1

    :goto_0
    const-string v5, "blocks-per-second-range"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_1
    int-to-long v6, v1

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long v5, v6, v8

    :goto_1
    const-string v1, "size-range"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    const-string v7, "bitrate-range"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v3, 0x3e8

    invoke-static {p0, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    :goto_3
    const-wide/32 v7, 0xca800

    cmp-long p0, v5, v7

    const/16 v3, 0x200

    if-gtz p0, :cond_4

    const p0, 0x9000

    if-gt v0, p0, :cond_4

    const/16 p0, 0xc8

    if-gt v4, p0, :cond_4

    if-gt v1, v3, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-wide/32 v7, 0x2a3000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_5

    const p0, 0x12000

    if-gt v0, p0, :cond_5

    const/16 p0, 0x320

    if-gt v4, p0, :cond_5

    const/16 p0, 0x300

    if-gt v1, p0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const-wide/32 v7, 0x465000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_6

    const p0, 0x1e000

    if-gt v0, p0, :cond_6

    const/16 p0, 0x708

    if-gt v4, p0, :cond_6

    const/16 p0, 0x3c0

    if-gt v1, p0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const-wide/32 v7, 0x8ca000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_7

    const p0, 0x3c000

    if-gt v0, p0, :cond_7

    const/16 p0, 0xe10

    if-gt v4, p0, :cond_7

    const/16 p0, 0x540

    if-gt v1, p0, :cond_7

    return v2

    :cond_7
    const-wide/32 v7, 0x13c6800

    cmp-long p0, v5, v7

    const/16 v2, 0x800

    if-gtz p0, :cond_8

    const p0, 0x87000

    if-gt v0, p0, :cond_8

    const/16 p0, 0x1c20

    if-gt v4, p0, :cond_8

    if-gt v1, v2, :cond_8

    const/16 p0, 0x10

    return p0

    :cond_8
    const-wide/32 v7, 0x2328000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_9

    const/high16 p0, 0xf0000

    if-gt v0, p0, :cond_9

    const/16 p0, 0x2ee0

    if-gt v4, p0, :cond_9

    const/16 p0, 0xac0

    if-gt v1, p0, :cond_9

    const/16 p0, 0x20

    return p0

    :cond_9
    const-wide/32 v7, 0x4fb0000

    cmp-long p0, v5, v7

    const/16 v7, 0x1040

    const/high16 v8, 0x220000

    if-gtz p0, :cond_a

    if-gt v0, v8, :cond_a

    const/16 p0, 0x4650

    if-gt v4, p0, :cond_a

    if-gt v1, v7, :cond_a

    const/16 p0, 0x40

    return p0

    :cond_a
    const-wide/32 v9, 0x9900000

    cmp-long p0, v5, v9

    if-gtz p0, :cond_b

    if-gt v0, v8, :cond_b

    const/16 p0, 0x7530

    if-gt v4, p0, :cond_b

    if-gt v1, v7, :cond_b

    const/16 p0, 0x80

    return p0

    :cond_b
    const-wide/32 v7, 0x12980000

    cmp-long p0, v5, v7

    const/16 v7, 0x20c0

    const/high16 v8, 0x880000

    if-gtz p0, :cond_c

    if-gt v0, v8, :cond_c

    const p0, 0xea60

    if-gt v4, p0, :cond_c

    if-gt v1, v7, :cond_c

    const/16 p0, 0x100

    return p0

    :cond_c
    const-wide/32 v9, 0x23100000

    cmp-long p0, v5, v9

    if-gtz p0, :cond_d

    if-gt v0, v8, :cond_d

    const p0, 0x1d4c0

    if-gt v4, p0, :cond_d

    if-gt v1, v7, :cond_d

    return v3

    :cond_d
    const-wide/32 v9, 0x46200000

    cmp-long p0, v5, v9

    const v3, 0x2bf20

    if-gtz p0, :cond_e

    if-gt v0, v8, :cond_e

    if-gt v4, v3, :cond_e

    if-gt v1, v7, :cond_e

    const/16 p0, 0x400

    return p0

    :cond_e
    const/16 v7, 0x41c0

    const/high16 v8, 0x2200000

    if-gtz p0, :cond_f

    if-gt v0, v8, :cond_f

    if-gt v4, v3, :cond_f

    if-gt v1, v7, :cond_f

    return v2

    :cond_f
    const-wide v2, 0x8c400000L

    cmp-long p0, v5, v2

    if-gtz p0, :cond_10

    if-gt v0, v8, :cond_10

    const p0, 0x3a980

    if-gt v4, p0, :cond_10

    if-gt v1, v7, :cond_10

    const/16 p0, 0x1000

    return p0

    :cond_10
    const/16 p0, 0x2000

    return p0
.end method

.method private greylist-max-o estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v0

    int-to-double v2, v0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o findClosestSize(II)Landroid/util/Size;
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result p1

    iget-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private greylist-max-o getBlockCount(II)I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p1

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, p0}, Landroid/media/Utils;->divUp(II)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method private greylist-max-o getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "measured-frame-rate-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-gtz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method private blacklist getPerformancePoints(Ljava/util/Map;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "performance-point-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4, v3}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-gtz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-gez v3, :cond_5

    goto :goto_0

    :cond_5
    new-instance v5, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v9

    new-instance v10, Landroid/util/Size;

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v11, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v10, v3, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v5 .. v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    new-instance v6, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v10

    new-instance v11, Landroid/util/Size;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v11, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v6 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    if-nez p0, :cond_7

    return-object v3

    :cond_7
    new-instance p0, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->sort(Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0

    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void
.end method

.method private greylist-max-o initWithPlatformLimits()V
    .locals 1

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return-void
.end method

.method static synthetic blacklist lambda$applyLevelLimits$1()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Landroid/media/codec/Flags;->apvSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getPerformancePoints$0(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .locals 6

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result p0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result p1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    neg-int p0, v2

    return p0
.end method

.method private greylist-max-o parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v5, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    const-string v4, "block-size"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v10

    const-string v2, "alignment"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    const-string v3, "block-count-range"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v11

    const-string v3, "blocks-per-second-range"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v12

    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getPerformancePoints(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    const-string v3, "size-range"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Range;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Range;

    goto :goto_0

    :cond_0
    move-object v3, v4

    move-object v5, v3

    :goto_0
    const-string v6, "feature-can-swap-width-height"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "VideoCapabilities"

    if-eqz v6, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-virtual {v5, v3}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    move-object v13, v3

    move-object v14, v13

    goto :goto_1

    :cond_1
    const-string v6, "feature can-swap-width-height is best used with size-range"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v6, v8}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iput-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_2
    move-object v13, v3

    move-object v14, v5

    :goto_1
    const-string v3, "block-aspect-ratio-range"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    const-string v3, "pixel-aspect-ratio-range"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    const-string v5, "frame-rate-range"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    const-string v6, ") is out of limits: "

    if-eqz v5, :cond_3

    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "frame rate range ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    :cond_3
    :goto_2
    const-string v8, "bitrate-range"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bitrate range ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_3
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v6, "block-size width must be power of two"

    invoke-static {v1, v6}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v1

    const-string v6, "block-size height must be power of two"

    invoke-static {v1, v6}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v6, "alignment width must be power of two"

    invoke-static {v1, v6}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v1

    const-string v6, "alignment height must be power of two"

    invoke-static {v1, v6}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    move-object/from16 v16, v3

    const v3, 0x7fffffff

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 p1, v10

    move-object/from16 v10, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v18

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_d

    iget-boolean v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v1, :cond_5

    goto/16 :goto_4

    :cond_5
    if-eqz v14, :cond_6

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v1, v14}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_6
    if-eqz v13, :cond_7

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v1, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_7
    if-eqz v11, :cond_8

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v11, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_8
    if-eqz v12, :cond_9

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v12, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_9
    if-eqz v10, :cond_a

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v10, v2, v3}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_a
    if-eqz v15, :cond_b

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v1, v15}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_b
    move-object/from16 v5, v19

    if-eqz v5, :cond_c

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v1, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_c
    move-object/from16 v4, v20

    if-eqz v4, :cond_16

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v1, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_5

    :cond_d
    :goto_4
    move-object/from16 v5, v19

    move-object/from16 v4, v20

    if-eqz v14, :cond_e

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_e
    if-eqz v13, :cond_f

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_f
    if-eqz v11, :cond_10

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v1

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v11, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_10
    if-eqz v12, :cond_11

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v1

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v12, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_11
    if-eqz v10, :cond_12

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v1

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    div-int/2addr v3, v6

    invoke-static {v10, v2, v3}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_12
    if-eqz v15, :cond_13

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_13
    if-eqz v5, :cond_14

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_14
    if-eqz v4, :cond_16

    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_15

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto :goto_5

    :cond_15
    iget-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v1, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    :cond_16
    :goto_5
    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void
.end method

.method private static greylist-max-o parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "could not parse size range \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoCapabilities"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-o supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v2

    :cond_4
    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v2, v3, :cond_5

    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v3, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    mul-int v5, v3, v4

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v6, Landroid/util/Rational;

    invoke-direct {v6, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v3, Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v3, p1, p2}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    int-to-double p1, v5

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    mul-double/2addr p1, v0

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {p1, p2}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result p0

    return p0

    :cond_7
    return v0

    :cond_8
    return v2
.end method

.method private greylist-max-o updateLimits()V
    .locals 6

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public whitelist areSizeAndRateSupported(IID)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public whitelist getAchievableFrameRatesFor(II)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "VideoCapabilities"

    const-string p1, "Codec did not publish any measurement data."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o getAspectRatioRange(Z)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist getBitrateRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object p0
.end method

.method public greylist-max-o getBlockCountRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object p0
.end method

.method public greylist-max-o getBlockSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getBlocksPerSecondRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist getHeightAlignment()I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return p0
.end method

.method public greylist-max-o getSmallerDimensionUpperLimit()I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return p0
.end method

.method public whitelist getSupportedFrameRates()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p2

    mul-int/2addr p1, p2

    iget-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    int-to-double p1, p1

    div-double/2addr v0, p1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, p1

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getSupportedHeights()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "unsupported width"

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    int-to-double v4, v2

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/2addr v6, v2

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    div-double/2addr v4, v7

    double-to-int v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    :cond_0
    int-to-double v2, p1

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    div-double/2addr v2, v5

    double-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "could not get supported heights for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoCapabilities"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getSupportedPerformancePoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getSupportedWidths()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "unsupported height"

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v8, v6

    double-to-int v2, v8

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v3, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int p0, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "could not get supported widths for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoCapabilities"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getWidthAlignment()I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return p0
.end method

.method public whitelist isSizeSupported(II)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "frame-rate"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v1, v2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

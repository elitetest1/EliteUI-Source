.class public final Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$VideoCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerformancePoint"
.end annotation


# static fields
.field public static final whitelist FHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist FHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist HD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_48:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist SD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

.field public static final whitelist UHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;


# instance fields
.field private blacklist mBlockSize:Landroid/util/Size;

.field private blacklist mHeight:I

.field private blacklist mMaxFrameRate:I

.field private blacklist mMaxMacroBlockRate:J

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v4, 0x240

    const/16 v5, 0x19

    invoke-direct {v0, v1, v4, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v6, 0x1e

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v7, 0x30

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_48:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v7, 0x32

    invoke-direct {v0, v1, v4, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v4, 0x3c

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->SD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v2, 0x500

    invoke-direct {v0, v2, v1, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v2, v1, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v8, 0x64

    invoke-direct {v0, v2, v1, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v9, 0x78

    invoke-direct {v0, v2, v1, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v10, 0xc8

    invoke-direct {v0, v2, v1, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v11, 0xf0

    invoke-direct {v0, v2, v1, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->HD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->FHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_24:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_25:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_30:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_50:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_60:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_100:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_120:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_200:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v0, v1, v2, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->UHD_240:Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 6

    new-instance v5, Landroid/util/Size;

    const/16 v0, 0x10

    invoke-direct {v5, v0, v0}, Landroid/util/Size;-><init>(II)V

    move v4, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/util/Size;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string v1, "block width"

    invoke-static {v0, v1}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "block height"

    invoke-static {v0, v1}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    int-to-long v0, p1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v5, p1

    invoke-static {v0, v1, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-long v5, p1

    mul-long/2addr v0, v5

    long-to-int p1, v0

    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    int-to-long p1, p2

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    invoke-static {p5, v2}, Ljava/lang/Math;->max(II)I

    move-result p5

    int-to-long v0, p5

    invoke-static {p1, p2, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide p1

    iget-object p5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    int-to-long v0, p5

    mul-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p2

    mul-int/2addr p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V
    .locals 7

    iget v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    mul-int/lit8 v2, v0, 0x10

    iget v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    mul-int/lit8 v3, v0, 0x10

    iget-wide v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    iget v5, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    new-instance v6, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object p1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v6, v0, p1}, Landroid/util/Size;-><init>(II)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    return-void
.end method

.method private blacklist align(II)I
    .locals 0

    invoke-static {p1, p2}, Landroid/media/Utils;->divUp(II)I

    move-result p0

    mul-int/2addr p0, p2

    return p0
.end method

.method private blacklist checkPowerOfTwo2(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    add-int/lit8 p0, p1, -0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be a power of 2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iget-object p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget-object p1, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private blacklist saturateLongToInt(J)I
    .locals 2

    const-wide/32 v0, -0x80000000

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    long-to-int p0, p1

    return p0
.end method


# virtual methods
.method public whitelist covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    new-instance p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget p1, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-lt p1, v0, :cond_0

    iget-wide v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    iget-wide p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist covers(Landroid/media/MediaFormat;)Z
    .locals 6

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "height"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "frame-rate"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/media/MediaFormat;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, v3, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getCommonBlockSize(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Landroid/util/Size;

    move-result-object v0

    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    new-instance p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/util/Size;)V

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget p1, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-ne p1, v0, :cond_0

    iget-wide v2, v2, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    iget-wide p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public blacklist getMaxFrameRate()I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    return p0
.end method

.method public blacklist getMaxMacroBlockRate()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    return-wide v0
.end method

.method public blacklist getMaxMacroBlocks()I
    .locals 4

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    int-to-long v0, v0

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->saturateLongToInt(J)I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mBlockSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxMacroBlockRate:J

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mWidth:I

    mul-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mHeight:I

    mul-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    if-ge v3, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->mMaxFrameRate:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "fps"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-gt v0, v1, :cond_1

    if-le v2, v1, :cond_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blocks"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PerformancePoint("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

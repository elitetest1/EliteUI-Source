.class public Landroid/hardware/CameraStreamStats;
.super Ljava/lang/Object;
.source "CameraStreamStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HISTOGRAM_TYPE_CAPTURE_LATENCY:I = 0x1

.field public static final blacklist HISTOGRAM_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CameraStreamStats"


# instance fields
.field private blacklist mColorSpace:I

.field private blacklist mDataSpace:I

.field private blacklist mDynamicRangeProfile:J

.field private blacklist mErrorCount:J

.field private blacklist mFormat:I

.field private blacklist mHeight:I

.field private blacklist mHistogramBins:[F

.field private blacklist mHistogramCounts:[J

.field private blacklist mHistogramType:I

.field private blacklist mMaxAppBuffers:I

.field private blacklist mMaxHalBuffers:I

.field private blacklist mMaxPreviewFps:F

.field private blacklist mRequestCount:J

.field private blacklist mStartLatencyMs:I

.field private blacklist mStreamUseCase:J

.field private blacklist mUsage:J

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/CameraStreamStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraStreamStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    const-wide/16 v3, 0x1

    iput-wide v3, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    return-void
.end method

.method public constructor blacklist <init>(IIIFIJJJIIIJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    iput p2, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    iput p3, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    iput p4, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    iput p5, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    iput-wide p6, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    iput-wide p8, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    iput-wide p10, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    iput p12, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    iput p13, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    iput p14, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    move-wide p1, p15

    iput-wide p1, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    move/from16 p1, p19

    iput p1, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/CameraStreamStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/CameraStreamStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/CameraStreamStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getColorSpace()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    return p0
.end method

.method public blacklist getDataSpace()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    return p0
.end method

.method public blacklist getDynamicRangeProfile()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public blacklist getErrorCount()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    return-wide v0
.end method

.method public blacklist getFormat()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    return p0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    return p0
.end method

.method public blacklist getHistogramBins()[F
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    return-object p0
.end method

.method public blacklist getHistogramCounts()[J
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    return-object p0
.end method

.method public blacklist getHistogramType()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    return p0
.end method

.method public blacklist getMaxAppBuffers()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    return p0
.end method

.method public blacklist getMaxHalBuffers()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    return p0
.end method

.method public blacklist getMaxPreviewFps()F
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    return p0
.end method

.method public blacklist getRequestCount()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    return-wide v0
.end method

.method public blacklist getStartLatencyMs()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    return p0
.end method

.method public blacklist getStreamUseCase()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    return-wide v0
.end method

.method public blacklist getUsage()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    return-wide v0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    return p0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p2, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Landroid/hardware/CameraStreamStats;->mColorSpace:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

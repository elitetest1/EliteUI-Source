.class public Landroid/filterpacks/performance/Throughput;
.super Ljava/lang/Object;
.source "Throughput.java"


# instance fields
.field private final blacklist mPeriodFrames:I

.field private final blacklist mPeriodTime:I

.field private final blacklist mPixels:I

.field private final blacklist mTotalFrames:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    iput p2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    iput p3, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    iput p4, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    return-void
.end method


# virtual methods
.method public blacklist getFramesPerSecond()F
    .locals 1

    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-float v0, v0

    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public blacklist getNanosPerPixel()F
    .locals 4

    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    int-to-double v0, v0

    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public blacklist getPeriodFrameCount()I
    .locals 0

    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    return p0
.end method

.method public blacklist getPeriodTime()I
    .locals 0

    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    return p0
.end method

.method public blacklist getTotalFrameCount()I
    .locals 0

    iget p0, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/filterpacks/performance/Throughput;->getFramesPerSecond()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " FPS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

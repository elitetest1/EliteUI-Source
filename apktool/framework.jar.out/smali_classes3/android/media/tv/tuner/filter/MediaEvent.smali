.class public Landroid/media/tv/tuner/filter/MediaEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "MediaEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAudioPresentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataGroupId:I

.field private final blacklist mDataId:J

.field private final blacklist mDataLength:J

.field private final blacklist mDts:J

.field private final blacklist mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

.field private final blacklist mIndexInDataGroup:I

.field private final blacklist mIsDtsPresent:Z

.field private final blacklist mIsPrivateData:Z

.field private final blacklist mIsPtsPresent:Z

.field private final blacklist mIsSecureMemory:Z

.field private blacklist mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMpuSequenceNumber:I

.field private blacklist mNativeContext:J

.field private final blacklist mNumDataPieces:I

.field private final blacklist mOffset:J

.field private final blacklist mPts:J

.field private blacklist mReleased:Z

.field private final blacklist mScIndexMask:I

.field private final blacklist mStreamId:I


# direct methods
.method private constructor blacklist <init>(IZJZJJJLandroid/media/MediaCodec$LinearBlock;ZJIZILandroid/media/tv/tuner/filter/AudioDescriptor;Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZJZJJJ",
            "Landroid/media/MediaCodec$LinearBlock;",
            "ZJIZI",
            "Landroid/media/tv/tuner/filter/AudioDescriptor;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    iput p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mStreamId:I

    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPtsPresent:Z

    iput-wide p3, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mPts:J

    iput-boolean p5, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsDtsPresent:Z

    iput-wide p6, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDts:J

    iput-wide p8, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataLength:J

    iput-wide p10, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mOffset:J

    iput-object p12, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iput-boolean p13, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsSecureMemory:Z

    move-wide p1, p14

    iput-wide p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    move/from16 p1, p16

    iput p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mMpuSequenceNumber:I

    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPrivateData:Z

    move/from16 p1, p18

    iput p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mScIndexMask:I

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mAudioPresentations:Ljava/util/List;

    move/from16 p1, p21

    iput p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mNumDataPieces:I

    move/from16 p1, p22

    iput p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIndexInDataGroup:I

    move/from16 p1, p23

    iput p1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataGroupId:I

    return-void
.end method

.method private native blacklist nativeFinalize()V
.end method

.method private native blacklist nativeGetAudioHandle()Ljava/lang/Long;
.end method

.method private native blacklist nativeGetLinearBlock()Landroid/media/MediaCodec$LinearBlock;
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    return-void
.end method

.method public whitelist getAudioHandle()J
    .locals 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeGetAudioHandle()Ljava/lang/Long;

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    return-wide v0
.end method

.method public whitelist getAudioPresentations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mAudioPresentations:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public whitelist getAvDataId()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    return-wide v0
.end method

.method public whitelist getDataGroupId()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataGroupId:I

    return p0
.end method

.method public whitelist getDataLength()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getDts()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDts:J

    return-wide v0
.end method

.method public whitelist getExtraMetaData()Landroid/media/tv/tuner/filter/AudioDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

    return-object p0
.end method

.method public whitelist getIndexInDataGroup()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIndexInDataGroup:I

    return p0
.end method

.method public whitelist getLinearBlock()Landroid/media/MediaCodec$LinearBlock;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeGetLinearBlock()Landroid/media/MediaCodec$LinearBlock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    :cond_0
    iget-object p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist getMpuSequenceNumber()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mMpuSequenceNumber:I

    return p0
.end method

.method public whitelist getNumDataPieces()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mNumDataPieces:I

    return p0
.end method

.method public whitelist getOffset()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mOffset:J

    return-wide v0
.end method

.method public whitelist getPts()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mPts:J

    return-wide v0
.end method

.method public whitelist getScIndexMask()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mScIndexMask:I

    return p0
.end method

.method public whitelist getStreamId()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mStreamId:I

    return p0
.end method

.method public whitelist isDtsPresent()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsDtsPresent:Z

    return p0
.end method

.method public whitelist isPrivateData()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPrivateData:Z

    return p0
.end method

.method public whitelist isPtsPresent()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPtsPresent:Z

    return p0
.end method

.method public whitelist isSecureMemory()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsSecureMemory:Z

    return p0
.end method

.method public whitelist release()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeFinalize()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mNativeContext:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

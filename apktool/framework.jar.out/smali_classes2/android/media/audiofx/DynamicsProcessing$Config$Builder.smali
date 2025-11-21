.class public final Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mLimiterInUse:Z

.field private greylist-max-o mMbcBandCount:I

.field private greylist-max-o mMbcInUse:Z

.field private greylist-max-o mPostEqBandCount:I

.field private greylist-max-o mPostEqInUse:Z

.field private greylist-max-o mPreEqBandCount:I

.field private greylist-max-o mPreEqInUse:Z

.field private greylist-max-o mPreferredFrameDuration:F

.field private greylist-max-o mVariant:I


# direct methods
.method public constructor whitelist <init>(IIZIZIZIZ)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mVariant:I

    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    iput-boolean p3, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    iput-boolean p5, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    move/from16 p1, p7

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    move/from16 p1, p8

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    move/from16 p1, p9

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    new-array p1, p2, [Landroid/media/audiofx/DynamicsProcessing$Channel;

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget-boolean v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    iget-boolean v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    iget v7, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    iget-boolean v8, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(FZIZIZIZ)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o checkChannel(I)V
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length p0, p0

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ChannelIndex out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/media/audiofx/DynamicsProcessing$Config;
    .locals 12

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Config;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mVariant:I

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    iget-boolean v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    iget v7, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    iget-boolean v8, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    iget v9, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    iget-boolean v10, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    iget-object v11, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-direct/range {v0 .. v11}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(IFIZIZIZIZ[Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    return-object v0
.end method

.method public whitelist setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    const-string v2, " to "

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v1, v0, p1

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostEqBandCount changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreEqBandCount changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MbcBandCount changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputGainAllChannelsTo(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setInputGainByChannelIndex(IF)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    return-object p0
.end method

.method public whitelist setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-object p0
.end method

.method public whitelist setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    return-object p0
.end method

.method public whitelist setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-object p0
.end method

.method public whitelist setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-object p0
.end method

.method public whitelist setPreferredFrameDuration(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected positive frameDuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

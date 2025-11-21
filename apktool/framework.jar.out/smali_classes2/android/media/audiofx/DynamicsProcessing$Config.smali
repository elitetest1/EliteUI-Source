.class public final Landroid/media/audiofx/DynamicsProcessing$Config;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

.field private final greylist-max-o mChannelCount:I

.field private final greylist-max-o mLimiterInUse:Z

.field private final greylist-max-o mMbcBandCount:I

.field private final greylist-max-o mMbcInUse:Z

.field private final greylist-max-o mPostEqBandCount:I

.field private final greylist-max-o mPostEqInUse:Z

.field private final greylist-max-o mPreEqBandCount:I

.field private final greylist-max-o mPreEqInUse:Z

.field private final greylist-max-o mPreferredFrameDuration:F

.field private final greylist-max-o mVariant:I


# direct methods
.method public constructor greylist-max-o <init>(IFIZIZIZIZ[Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    iput-boolean p4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    iput-boolean p6, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    iput-boolean p8, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    iput p9, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    iput-boolean p10, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    new-array p1, p3, [Landroid/media/audiofx/DynamicsProcessing$Channel;

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    if-ge p1, p2, :cond_1

    array-length p2, p11

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance p3, Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p4, p11, p1

    invoke-direct {p3, p4}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object p3, p2, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/media/audiofx/DynamicsProcessing$Config;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    iget-boolean v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    iput-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    iget v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    iput v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    iget-boolean v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    iput-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    iget v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    iput v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    iget-boolean v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    iput-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    iget v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    iput v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    iget-boolean v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    iput-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    iget-object v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    new-array v1, p1, [Landroid/media/audiofx/DynamicsProcessing$Channel;

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v3, Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget-object v4, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v3, Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget-object v4, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "channel resizing less than 1 not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "configuration channel counts differ "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " !="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/audiofx/DynamicsProcessing$Config;)V
    .locals 1

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(ILandroid/media/audiofx/DynamicsProcessing$Config;)V

    return-void
.end method

.method private greylist-max-o checkChannel(I)V
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

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
.method public whitelist getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public whitelist getInputGainByChannelIndex(I)F
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getInputGain()F

    move-result p0

    return p0
.end method

.method public whitelist getLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbcBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getMbcBandCount()I
    .locals 0

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    return p0
.end method

.method public whitelist getMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPostEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPostEqBandCount()I
    .locals 0

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    return p0
.end method

.method public whitelist getPostEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPreEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPreEqBandCount()I
    .locals 0

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    return p0
.end method

.method public whitelist getPreEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPreferredFrameDuration()F
    .locals 0

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    return p0
.end method

.method public whitelist getVariant()I
    .locals 0

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    return p0
.end method

.method public whitelist isLimiterInUse()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    return p0
.end method

.method public whitelist isMbcInUse()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    return p0
.end method

.method public whitelist isPostEqInUse()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    return p0
.end method

.method public whitelist isPreEqInUse()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    return p0
.end method

.method public whitelist setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    const-string v2, " to "

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-direct {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v0, p0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostEqBandCount changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

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

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

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

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

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

.method public whitelist setInputGainAllChannelsTo(F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setInputGainByChannelIndex(IF)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    return-void
.end method

.method public whitelist setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-void
.end method

.method public whitelist setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setMbcBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    return-void
.end method

.method public whitelist setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    return-void
.end method

.method public whitelist setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setPostEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public whitelist setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public whitelist setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setPreEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public whitelist setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Variant: %d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PreferredFrameDuration: %f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ChannelCount: %d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PreEq inUse: %b, bandCount:%d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Mbc inUse: %b, bandCount: %d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PostEq inUse: %b, bandCount: %d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Limiter inUse: %b\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "==Channel %d\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Landroid/media/tv/tuner/frontend/FrontendInfo;
.super Ljava/lang/Object;
.source "FrontendInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAcquireRange:J

.field private final blacklist mExclusiveGroupId:I

.field private final blacklist mFrequencyRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

.field private final blacklist mId:I

.field private final blacklist mStatusCaps:[I

.field private final blacklist mSymbolRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mType:I


# direct methods
.method private constructor blacklist <init>(IIJJIIJI[ILandroid/media/tv/tuner/frontend/FrontendCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-gez p1, :cond_0

    const-wide/32 p5, 0x7fffffff

    :cond_0
    new-instance p1, Landroid/util/Range;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    new-instance p1, Landroid/util/Range;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    iput-wide p9, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:J

    iput p11, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    iput-object p12, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    iput-object p13, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Landroid/media/tv/tuner/frontend/FrontendInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/media/tv/tuner/frontend/FrontendInfo;

    iget v2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getFrequencyRangeLong()Landroid/util/Range;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getSymbolRateRange()Landroid/util/Range;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:J

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getAcquireRangeLong()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getExclusiveGroupId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getStatusCapabilities()[I

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAcquireRange()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getAcquireRangeLong()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public whitelist getAcquireRangeLong()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:J

    return-wide v0
.end method

.method public whitelist getExclusiveGroupId()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    return p0
.end method

.method public whitelist getFrequencyRange()Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/Range;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public whitelist getFrequencyRangeLong()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist getFrontendCapabilities()Landroid/media/tv/tuner/frontend/FrontendCapabilities;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

    return-object p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    return p0
.end method

.method public whitelist getStatusCapabilities()[I
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    return-object p0
.end method

.method public whitelist getSymbolRateRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    return p0
.end method

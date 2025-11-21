.class public final Landroid/telephony/ims/MediaThreshold$Builder;
.super Ljava/lang/Object;
.source "MediaThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/MediaThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRtpInactivityTimeMillis:[J

.field private blacklist mRtpJitter:[I

.field private blacklist mRtpPacketLossRate:[I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/MediaThreshold;
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    :goto_0
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v0, v1, [I

    :goto_1
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-array v0, v1, [J

    :goto_2
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    new-instance v0, Landroid/telephony/ims/MediaThreshold;

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iget-object v2, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    iget-object p0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/telephony/ims/MediaThreshold;-><init>([I[I[JLandroid/telephony/ims/MediaThreshold-IA;)V

    return-object v0
.end method

.method public blacklist setThresholdsRtpInactivityTimeMillis([J)Landroid/telephony/ims/MediaThreshold$Builder;
    .locals 7

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/telephony/ims/MediaThreshold;->isValidRtpInactivityTimeMillis(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v1, v2, 0x1

    aput-wide v3, p1, v2

    move v2, v1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    return-object p0

    :cond_3
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    return-object p0
.end method

.method public blacklist setThresholdsRtpJitterMillis([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .locals 6

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroid/telephony/ims/MediaThreshold;->isValidJitterMillis(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [I

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    aput v1, p1, v2

    move v2, v3

    goto :goto_1

    :cond_2
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    return-object p0

    :cond_3
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    return-object p0
.end method

.method public blacklist setThresholdsRtpPacketLossRate([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .locals 6

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroid/telephony/ims/MediaThreshold;->isValidRtpPacketLossRate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [I

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    aput v1, p1, v2

    move v2, v3

    goto :goto_1

    :cond_2
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    return-object p0

    :cond_3
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    return-object p0
.end method

.class public abstract Landroid/view/FrameStats;
.super Ljava/lang/Object;
.source "FrameStats.java"


# static fields
.field public static final whitelist UNDEFINED_TIME_NANO:J = -0x1L


# instance fields
.field protected greylist-max-o mFramesPresentedTimeNano:[J

.field protected greylist-max-o mRefreshPeriodNano:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist getEndTimeNano()J
    .locals 2

    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public final whitelist getFrameCount()I
    .locals 0

    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz p0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist getFramePresentedTimeNano(I)J
    .locals 0

    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz p0, :cond_0

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final whitelist getRefreshPeriodNano()J
    .locals 2

    iget-wide v0, p0, Landroid/view/FrameStats;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method public final whitelist getStartTimeNano()J
    .locals 2

    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

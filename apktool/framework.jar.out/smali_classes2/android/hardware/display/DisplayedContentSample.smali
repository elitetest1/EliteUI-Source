.class public final Landroid/hardware/display/DisplayedContentSample;
.super Ljava/lang/Object;
.source "DisplayedContentSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    }
.end annotation


# instance fields
.field private blacklist mNumFrames:J

.field private blacklist mSamplesComponent0:[J

.field private blacklist mSamplesComponent1:[J

.field private blacklist mSamplesComponent2:[J

.field private blacklist mSamplesComponent3:[J


# direct methods
.method public constructor blacklist <init>(J[J[J[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    iput-object p3, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    iput-object p4, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    iput-object p5, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    iput-object p6, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-void
.end method


# virtual methods
.method public blacklist getNumFrames()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    return-wide v0
.end method

.method public blacklist getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    return-object p0

    :cond_2
    iget-object p0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    return-object p0

    :cond_3
    iget-object p0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    return-object p0
.end method

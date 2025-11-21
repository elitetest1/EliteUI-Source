.class public final Landroid/view/ContentRecordingSession$Builder;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentRecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mContentToRecord:I

.field private blacklist mDisplayToRecord:I

.field private blacklist mRecordingOwnerUid:I

.field private blacklist mTargetUid:I

.field private blacklist mTaskId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;

.field private blacklist mVirtualDisplayId:I

.field private blacklist mWaitingForConsent:Z


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mRecordingOwnerUid:I

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist build()Landroid/view/ContentRecordingSession;
    .locals 10

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, -0x1

    if-nez v2, :cond_0

    iput v3, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    :cond_0
    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_1

    iput v3, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    :cond_1
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    const/4 v6, 0x0

    if-nez v2, :cond_2

    iput v6, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    :cond_2
    const-wide/16 v7, 0x10

    and-long/2addr v7, v0

    cmp-long v2, v7, v4

    if-nez v2, :cond_3

    iput v3, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    :cond_3
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    :cond_4
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iput-boolean v6, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    :cond_5
    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    :cond_6
    new-instance v1, Landroid/view/ContentRecordingSession;

    iget v2, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    iget v3, p0, Landroid/view/ContentRecordingSession$Builder;->mRecordingOwnerUid:I

    iget v4, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    iget v5, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    iget v6, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    iget-object v7, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    iget-boolean v8, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    iget v9, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    invoke-direct/range {v1 .. v9}, Landroid/view/ContentRecordingSession;-><init>(IIIIILandroid/os/IBinder;ZI)V

    return-object v1
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    return-object p0
.end method

.method public blacklist setDisplayToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    return-object p0
.end method

.method public blacklist setRecordingOwnerUid(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mRecordingOwnerUid:I

    return-object p0
.end method

.method public blacklist setTargetUid(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist setVirtualDisplayId(I)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    return-object p0
.end method

.method public blacklist setWaitingForConsent(Z)Landroid/view/ContentRecordingSession$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    return-object p0
.end method

.class public Landroid/os/incremental/IncrementalMetrics;
.super Ljava/lang/Object;
.source "IncrementalMetrics.java"


# instance fields
.field private final blacklist mData:Landroid/os/PersistableBundle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public blacklist getDataLoaderBindDelayMillis()J
    .locals 3

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string v0, "dataLoaderBindDelayMillis"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDataLoaderStatusCode()I
    .locals 2

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string v0, "dataLoaderStatusCode"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getLastReadErrorNumber()I
    .locals 2

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string v0, "lastReadErrorNo"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getLastReadErrorUid()I
    .locals 2

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string v0, "lastReadErrorUid"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getMillisSinceLastDataLoaderBind()J
    .locals 3

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "millisSinceLastDataLoaderBind"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMillisSinceLastReadError()J
    .locals 3

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "millisSinceLastReadError"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMillisSinceOldestPendingRead()J
    .locals 3

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "millisSinceOldestPendingRead"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getReadLogsEnabled()Z
    .locals 2

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "readLogsEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist getStorageHealthStatusCode()I
    .locals 2

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "storageHealthStatusCode"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getTotalDelayedReads()I
    .locals 2

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "totalDelayedReads"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getTotalDelayedReadsDurationMillis()J
    .locals 3

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "totalDelayedReadsMillis"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalFailedReads()I
    .locals 2

    iget-object p0, p0, Landroid/os/incremental/IncrementalMetrics;->mData:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "totalFailedReads"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

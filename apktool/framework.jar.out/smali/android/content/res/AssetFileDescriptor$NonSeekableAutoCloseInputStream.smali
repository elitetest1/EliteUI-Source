.class Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonSeekableAutoCloseInputStream"
.end annotation


# instance fields
.field private blacklist mRemaining:J


# direct methods
.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    return-void
.end method

.method private blacklist skipRaw(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist skipRaw$ravenwood(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x400

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    sub-long v4, p1, v2

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-super {p0, v1, v5, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v2
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0

    :cond_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result p0

    return p0
.end method

.method public whitelist test-api mark(I)V
    .locals 4

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .locals 4

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public whitelist test-api read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public whitelist test-api read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int p3, v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_2

    iget-wide p2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    :cond_2
    return p1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    move-wide p1, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    :cond_2
    return-wide p1

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    move-result-wide p0

    return-wide p0
.end method

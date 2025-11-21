.class Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekableAutoCloseInputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;
    }
.end annotation


# instance fields
.field private final blacklist mFileOffset:J

.field private blacklist mOffset:J

.field private blacklist mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

.field private blacklist mTotalSize:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V
    .locals 0

    iput-wide p1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    return-void
.end method

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

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    return-void
.end method

.method private blacklist updateChannelPosition(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .locals 4

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;-><init>(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api mark(I)V
    .locals 0

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .locals 0

    const/4 p0, 0x0

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

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->read([BII)I

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

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public whitelist test-api read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-le p3, v0, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, p3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-wide v3, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    iget-wide v6, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    add-long/2addr v6, v3

    move-object v3, p1

    move v4, p2

    invoke-static/range {v2 .. v7}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    if-lez v1, :cond_4

    iget-wide p1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr p1, v2

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v1

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public whitelist test-api skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V

    return-wide p1
.end method

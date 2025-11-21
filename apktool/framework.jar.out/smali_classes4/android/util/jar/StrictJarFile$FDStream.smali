.class public Landroid/util/jar/StrictJarFile$FDStream;
.super Ljava/io/InputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FDStream"
.end annotation


# instance fields
.field private blacklist endOffset:J

.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist offset:J


# direct methods
.method public constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    iput-wide p4, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

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

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v3, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, v3

    int-to-long v5, p3

    cmp-long v5, v5, v1

    if-lez v5, :cond_0

    long-to-int p3, v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    if-lez p1, :cond_1

    iget-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    monitor-exit v0

    return p1

    :cond_1
    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist test-api skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sub-long v4, v0, v2

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    sub-long p1, v0, v2

    :cond_0
    add-long/2addr v2, p1

    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    return-wide p1
.end method

.class Landroid/util/apk/ByteBufferDataSource;
.super Ljava/lang/Object;
.source "ByteBufferDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# instance fields
.field private final blacklist mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    iget-object v0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    long-to-int p2, p2

    add-int/2addr p4, p2

    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p3, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, p0}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist size()J
    .locals 2

    iget-object p0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

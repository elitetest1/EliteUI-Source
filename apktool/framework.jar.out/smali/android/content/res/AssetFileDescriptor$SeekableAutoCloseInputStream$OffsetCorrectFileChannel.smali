.class Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;
.super Ljava/nio/channels/FileChannel;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetCorrectFileChannel"
.end annotation


# static fields
.field private static final blacklist METHOD_NOT_SUPPORTED_MESSAGE:Ljava/lang/String; = "This Method is not supported in AutoCloseInputStream FileChannel."


# instance fields
.field private final blacklist mDelegate:Ljava/nio/channels/FileChannel;

.field final synthetic blacklist this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;Ljava/nio/channels/FileChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    iput-object p2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public whitelist test-api force(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api implCloseChannel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public whitelist test-api lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p2, v0

    add-long/2addr v0, p4

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p4, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {p4}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide p4

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p2, v0

    sub-long/2addr p4, v0

    :cond_0
    move-wide v4, p4

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot map to buffer because position exceed current file size."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api position(J)Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V

    :cond_1
    return p1
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;J)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p0

    return p0
.end method

.method public whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    const-wide/16 v1, -0x1

    if-gtz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    iget-object p3, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {p3}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v3

    iget-object p3, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {p3}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int p3, v3

    :cond_1
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-eqz p3, :cond_2

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V

    :cond_2
    return-wide p1
.end method

.method public whitelist test-api size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p1, v0

    add-long/2addr v0, p3

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object p3, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {p3}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide p3

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p1, v0

    sub-long/2addr p3, v0

    :cond_1
    move-wide v3, p3

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist test-api truncate(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic whitelist test-api truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

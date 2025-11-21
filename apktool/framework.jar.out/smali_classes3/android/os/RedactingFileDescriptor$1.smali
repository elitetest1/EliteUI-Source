.class Landroid/os/RedactingFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RedactingFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RedactingFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RedactingFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/RedactingFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {p0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public whitelist onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {p0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object p0

    iget-wide v0, p0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public whitelist onRead(JI[B)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_1

    :try_start_0
    iget-object v0, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v6

    sub-int v9, v4, v8

    int-to-long v10, v8

    add-long/2addr v10, v2

    move-object/from16 v7, p4

    invoke-static/range {v6 .. v11}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget v0, v0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    :cond_0
    add-int/2addr v8, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v0

    const/4 v6, 0x0

    :goto_2
    array-length v7, v0

    if-ge v6, v7, :cond_5

    aget-wide v9, v0, v6

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    int-to-long v11, v4

    add-long/2addr v11, v2

    add-int/lit8 v7, v6, 0x1

    aget-wide v13, v0, v7

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-wide v13, v9

    :goto_3
    cmp-long v7, v13, v11

    const-wide/16 v15, 0x1

    if-gez v7, :cond_2

    move/from16 v17, v6

    const/4 v7, 0x0

    sub-long v5, v13, v2

    long-to-int v5, v5

    aput-byte v7, p4, v5

    add-long/2addr v13, v15

    move/from16 v6, v17

    goto :goto_3

    :cond_2
    move/from16 v17, v6

    const/4 v7, 0x0

    iget-object v5, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v5}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmFreeOffsets(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v5

    array-length v6, v5

    move v13, v7

    :goto_4
    if-ge v13, v6, :cond_4

    move v14, v8

    aget-wide v7, v5, v13

    const-wide/16 v18, 0x4

    move-object/from16 v20, v0

    add-long v0, v7, v18

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_5
    cmp-long v21, v18, v0

    if-gez v21, :cond_3

    move-wide/from16 v21, v0

    sub-long v0, v18, v2

    long-to-int v0, v0

    move/from16 v23, v0

    sub-long v0, v18, v7

    long-to-int v0, v0

    const-string v1, "free"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p4, v23

    add-long v18, v18, v15

    move-wide/from16 v0, v21

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move v8, v14

    move-object/from16 v0, v20

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v20, v0

    move v14, v8

    add-int/lit8 v6, v17, 0x2

    move-object/from16 v1, p0

    goto :goto_2

    :cond_5
    move v14, v8

    return v14
.end method

.method public whitelist onRelease()V
    .locals 2

    const-string v0, "RedactingFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {p0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public whitelist onWrite(JI[B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1

    sub-int v4, p3, v3

    int-to-long v5, v3

    add-long/2addr v5, p1

    move-object v2, p4

    :try_start_1
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p4
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p4, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p4

    :goto_1
    move-object p4, v0

    iget p4, p4, Ljava/io/InterruptedIOException;->bytesTransferred:I

    :cond_0
    add-int/2addr v3, p4

    move-object p4, v2

    goto :goto_0

    :cond_1
    :goto_2
    iget-object p0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {p0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object p3

    int-to-long v0, v3

    add-long/2addr v0, p1

    invoke-static {p3, p1, p2, v0, v1}, Landroid/os/RedactingFileDescriptor;->removeRange([JJJ)[J

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fputmRedactRanges(Landroid/os/RedactingFileDescriptor;[J)V

    return v3
.end method

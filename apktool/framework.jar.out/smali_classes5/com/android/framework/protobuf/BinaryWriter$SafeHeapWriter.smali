.class final Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;
.super Lcom/android/framework/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapWriter"
.end annotation


# instance fields
.field private blacklist allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

.field private blacklist buffer:[B

.field private blacklist limit:I

.field private blacklist limitMinusOne:I

.field private blacklist offset:I

.field private blacklist offsetMinusOne:I

.field private blacklist pos:I


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/BufferAllocator;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/BinaryWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;ILcom/android/framework/protobuf/BinaryWriter$1;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    return-void
.end method

.method private blacklist nextBuffer()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private blacklist nextBuffer(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private blacklist nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->finishCurrentBuffer()V

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->limit()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->position()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    iget p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iput p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Allocator returned non-heap buffer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist writeVarint32FiveBytes(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x1c

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v4, p1, 0x15

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-void
.end method

.method private blacklist writeVarint32FourBytes(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x15

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method private blacklist writeVarint32OneByte(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void
.end method

.method private blacklist writeVarint32ThreeBytes(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0xe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-void
.end method

.method private blacklist writeVarint32TwoBytes(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x7

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method private blacklist writeVarint64EightBytes(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x31

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x5

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x6

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x7

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method private blacklist writeVarint64FiveBytes(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x1c

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-void
.end method

.method private blacklist writeVarint64FourBytes(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method private blacklist writeVarint64NineBytes(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x5

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x6

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x7

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x8

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-void
.end method

.method private blacklist writeVarint64OneByte(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int p0, p1

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void
.end method

.method private blacklist writeVarint64SevenBytes(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x2a

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x5

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x6

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v10, p1, v4

    and-long/2addr v10, v6

    or-long/2addr v10, v8

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-void
.end method

.method private blacklist writeVarint64SixBytes(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x23

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x5

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method private blacklist writeVarint64TenBytes(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x3f

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x5

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x6

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x7

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x8

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x9

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method private blacklist writeVarint64ThreeBytes(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v3, p1

    ushr-int/lit8 v3, v3, 0xe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-void
.end method

.method private blacklist writeVarint64TwoBytes(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int p0, p1

    and-int/lit8 p0, p0, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method


# virtual methods
.method blacklist bytesWrittenToCurrentBuffer()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iget p0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p0

    return v0
.end method

.method blacklist finishCurrentBuffer()V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    invoke-virtual {v0}, Lcom/android/framework/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/AllocatedBuffer;->position(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    :cond_0
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method blacklist requireSpace(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    :cond_0
    return-void
.end method

.method blacklist spaceLeft()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget p0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist write(B)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object p0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p0, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public blacklist write([BII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object p0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public blacklist writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeBool(Z)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist writeEndGroup(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeFixed32(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method public blacklist writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed32(I)V

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed64(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeFixed64(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x38

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x3

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x4

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x5

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, -0x6

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, -0x7

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeInt32(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    return-void
.end method

.method public blacklist writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeInt32(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object p0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p0, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public blacklist writeLazy([BII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object p0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeSInt32(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    return-void
.end method

.method public blacklist writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt32(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt64(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeSInt64(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeString(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    :goto_0
    const/16 v1, 0x80

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v3, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    return-void

    :cond_1
    iget v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    :goto_1
    if-ltz v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v1, :cond_2

    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    if-le v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte v3, v3

    aput-byte v3, v5, v4

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    if-le v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, v3, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    goto/16 :goto_2

    :cond_3
    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdfff

    if-ge v4, v3, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    add-int/lit8 v7, v4, -0x2

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, v3, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_7

    if-eqz v0, :cond_6

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    iget-object v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v7, v5, -0x2

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v6, v5, -0x3

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v5, v5, -0x4

    iput v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, v3, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    goto :goto_2

    :cond_6
    new-instance p0, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 p1, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/2addr v0, v2

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method blacklist writeTag(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    return-void
.end method

.method public blacklist writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeVarint32(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32OneByte(I)V

    return-void

    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32TwoBytes(I)V

    return-void

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32ThreeBytes(I)V

    return-void

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FourBytes(I)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FiveBytes(I)V

    return-void
.end method

.method blacklist writeVarint64(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TenBytes(J)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64NineBytes(J)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64EightBytes(J)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SevenBytes(J)V

    return-void

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SixBytes(J)V

    return-void

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FiveBytes(J)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FourBytes(J)V

    return-void

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64ThreeBytes(J)V

    return-void

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TwoBytes(J)V

    return-void

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64OneByte(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

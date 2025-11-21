.class public Landroid/internal/aconfig/storage/ByteBufferReader;
.super Ljava/lang/Object;
.source "ByteBufferReader.java"


# instance fields
.field private blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mPosition:I


# direct methods
.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private blacklist getArray(I[BII)V
    .locals 1

    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    add-int/2addr p4, p3

    :goto_0
    if-ge p3, p4, :cond_0

    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist nextGetIndex(I)I
    .locals 1

    iget v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    return v0
.end method


# virtual methods
.method public blacklist position()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    return p0
.end method

.method public blacklist position(I)V
    .locals 0

    iput p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    return-void
.end method

.method public blacklist readByte()I
    .locals 2

    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    return p0
.end method

.method public blacklist readByte(I)I
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    return p0
.end method

.method public blacklist readInt()I
    .locals 2

    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method public blacklist readLong()J
    .locals 2

    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readShort()I
    .locals 2

    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    return p0
.end method

.method public blacklist readString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v0

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    invoke-direct {p0, v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->getArray(I[BII)V

    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String length exceeds maximum allowed size (1024 bytes): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

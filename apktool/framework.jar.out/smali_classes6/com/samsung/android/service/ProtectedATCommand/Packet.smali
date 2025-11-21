.class public Lcom/samsung/android/service/ProtectedATCommand/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field public static final blacklist MAX_PACKET_SIZE:I = 0x200

.field public static final blacklist PAC_PACKET_CMD_AT_CMD_CHECK:I = 0x1

.field public static final blacklist PAC_PACKET_TYPE_AT_CMD:I = 0x2

.field public static final blacklist PAC_PACKET_TYPE_AT_CMD_ATD_DDEXE:I = 0x4

.field public static final blacklist PAC_PACKET_TYPE_AT_CMD_RET:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "PACMPacket"


# instance fields
.field private final blacklist COMMAND_BUFFER_SIZE:I

.field private final blacklist ITEM_COUNT_BUFFER_SIZE:I

.field private final blacklist VERSION_BUFFER_SIZE:I

.field private blacklist mBuffer:[B

.field private blacklist mSize:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->VERSION_BUFFER_SIZE:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->COMMAND_BUFFER_SIZE:I

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->ITEM_COUNT_BUFFER_SIZE:I

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    return-void
.end method

.method private blacklist initPacket(II)V
    .locals 3

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short p1, p2

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {v1, p2, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    return-void
.end method

.method private blacklist putItem(Ljava/lang/Object;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)[B"
        }
    .end annotation

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    const-string v3, "PACMPacket"

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown item type : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    if-ge v5, v0, :cond_1

    int-to-short p2, p2

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    const/4 p2, 0x0

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    aget-byte p2, p1, v4

    add-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    aput-byte p2, p1, v4

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->buffer()[B

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Packet is full, Can\'t put item to packet"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public blacklist buffer()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    iget p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist compareVersion(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    aget-byte v0, v0, v1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Version is abnormal : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    aget-byte p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PACMPacket"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist getCommand()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Packet size is abnormal : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PACMPacket"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x10000000

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    const/4 v0, 0x2

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    aget-byte p0, p0, v2

    new-array v0, v0, [B

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    aput-byte p0, v0, v2

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getItem(I)[B
    .locals 8

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The number of items : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PACMPacket"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Item type : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Item size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, p1, :cond_0

    new-array p1, v5, [B

    invoke-virtual {p0, p1, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getResponsePacket(III)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->initPacket(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->putItem(Ljava/lang/Object;I)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist readStream(Ljava/io/InputStream;)V
    .locals 3

    const-string v0, "PACMPacket"

    const-string v1, "Buffer size is abnormal : "

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mBuffer:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    if-ltz p1, :cond_0

    const/16 v2, 0x200

    if-le p1, v2, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to read the stream from the client : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public blacklist size()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/ProtectedATCommand/Packet;->mSize:I

    return p0
.end method

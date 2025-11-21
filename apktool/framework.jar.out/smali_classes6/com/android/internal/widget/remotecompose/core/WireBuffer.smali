.class public Lcom/android/internal/widget/remotecompose/core/WireBuffer;
.super Ljava/lang/Object;
.source "WireBuffer.java"


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x100000


# instance fields
.field blacklist mBuffer:[B

.field blacklist mIndex:I

.field blacklist mMaxSize:I

.field blacklist mSize:I

.field blacklist mStartingIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    return-void
.end method

.method private blacklist resize(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt v1, v2, :cond_0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist available()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    sub-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist endWithSize()V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    sub-int v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-void
.end method

.method public blacklist getBuffer()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    return-object p0
.end method

.method public blacklist getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return p0
.end method

.method public blacklist getMax_size()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    return p0
.end method

.method public blacklist getSize()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return p0
.end method

.method public blacklist peekInt()I
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/2addr v2, p0

    return v2
.end method

.method public blacklist readBoolean()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist readBuffer()[B
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-object v1
.end method

.method public blacklist readBuffer(I)[B
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    if-gt v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attempt read a buff of invalid size 0 <= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist readByte()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return v0
.end method

.method public blacklist readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public blacklist readInt()I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, v1, 0x3

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte p0, v0, v5

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    add-int/2addr v3, p0

    return v3
.end method

.method public blacklist readLong()J
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v4, v1, v2

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v8, 0x38

    shl-long/2addr v4, v8

    add-int/lit8 v8, v2, 0x2

    iput v8, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v1, v3

    int-to-long v9, v3

    and-long/2addr v9, v6

    const/16 v3, 0x30

    shl-long/2addr v9, v3

    add-int/lit8 v3, v2, 0x3

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v8, v1, v8

    int-to-long v11, v8

    and-long/2addr v11, v6

    const/16 v8, 0x28

    shl-long/2addr v11, v8

    add-int/lit8 v8, v2, 0x4

    iput v8, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v1, v3

    int-to-long v13, v3

    and-long/2addr v13, v6

    const/16 v3, 0x20

    shl-long/2addr v13, v3

    add-int/lit8 v3, v2, 0x5

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v8, v1, v8

    move-wide v15, v6

    int-to-long v6, v8

    and-long/2addr v6, v15

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    add-int/lit8 v8, v2, 0x6

    iput v8, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v1, v3

    move-object/from16 v17, v1

    move/from16 v18, v2

    int-to-long v1, v3

    and-long/2addr v1, v15

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    add-int/lit8 v3, v18, 0x7

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v8, v17, v8

    move-wide/from16 v19, v1

    int-to-long v1, v8

    and-long/2addr v1, v15

    const/16 v8, 0x8

    shl-long/2addr v1, v8

    add-int/lit8 v8, v18, 0x8

    iput v8, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v17, v3

    move-wide/from16 v17, v1

    int-to-long v0, v0

    and-long/2addr v0, v15

    add-long/2addr v4, v9

    add-long/2addr v4, v11

    add-long/2addr v4, v13

    add-long/2addr v4, v6

    add-long v4, v4, v19

    add-long v4, v4, v17

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public blacklist readOperationType()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result p0

    return p0
.end method

.method public blacklist readShort()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v3, p0

    return v3
.end method

.method public blacklist readUTF8()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public blacklist readUTF8(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer(I)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public blacklist reset(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    :cond_0
    return-void
.end method

.method public blacklist setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-void
.end method

.method public blacklist size()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return p0
.end method

.method public blacklist start(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    return-void
.end method

.method public blacklist startWithSize(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return-void
.end method

.method public blacklist writeBoolean(Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeBuffer([B)V
    .locals 4

    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeByte(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeDouble(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    return-void
.end method

.method public blacklist writeFloat(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public blacklist writeInt(I)V
    .locals 6

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeLong(J)V
    .locals 10

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v5, 0x30

    ushr-long v8, p1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v5, 0x28

    ushr-long v8, p1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x4

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v5, 0x20

    ushr-long v8, p1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x5

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v5, 0x18

    ushr-long v8, p1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x6

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v5, 0x10

    ushr-long v8, p1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x7

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-long v8, p1, v0

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-long/2addr p1, v6

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeShort(I)V
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return-void
.end method

.method public blacklist writeUTF8(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    return-void
.end method
